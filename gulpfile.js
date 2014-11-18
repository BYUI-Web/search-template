var gulp = require("gulp"),
	exec = require("child_process").exec,
	plumber = require("gulp-plumber"),
	gfi = require("gulp-file-insert"),
	replace = require("gulp-replace"),
	encode = require("htmlencode").htmlEncode,
	copy = require("gulp-copy"),
	fs = require("fs"),
	rename = require("gulp-rename");

gulp.task("copy", function() {
	return gulp.src("./template.xsl")
			.pipe(plumber())
			.pipe(copy("temp"));
});

gulp.task("copy:done", ["insert"], function() {
	return gulp.src("./temp/template.xsl")
		.pipe(plumber())
		.pipe(rename("template-compiled.xsl"))
		.pipe(gulp.dest("./"));
});

gulp.task("sync", function (cb) {
    exec("curl -L https://raw.githubusercontent.com/BYUI-Web/responsive-prototype/master/_includes/header/header.html > temp/header.html", function(error) {
    	if (!error) {
    		exec("curl -L https://raw.githubusercontent.com/BYUI-Web/responsive-prototype/master/_includes/footer/footer.html > temp/footer.html", function(error) {
			    console.log("Synced with responsive-prototype")
    			cb(error);
    		});	
    	} else {
    		cb(error)
    	}
    });

});

gulp.task("encode", ["sync"], function (cb) {
    fs.writeFileSync("./temp/header.html", encode(fs.readFileSync("./temp/header.html", {encoding: "utf8"})))
	fs.writeFileSync("./temp/footer.html", encode(fs.readFileSync("./temp/footer.html", {encoding: "utf8"}))) 

	cb()   
});

gulp.task("replace", ["encode"], function() {
	return gulp.src(["./temp/header.html", "./temp/footer.html"]) 
		.pipe(plumber())
        .pipe(replace("{{ page.title }}", "Search"))
        .pipe(replace("{{ site.baseurl }}", "http://www.byui.edu"))
        .pipe(replace("&nbsp;", ""))
        .pipe(replace("&copy;", "&amp;copy;"))
        .pipe(replace("&times;", "&amp;times;"))
        .pipe(gulp.dest("./temp"));
});

gulp.task("insert", ["insert:header", "insert:footer"]);

gulp.task("insert:header", ["replace"], function () {
    return gulp.src(["./temp/template.xsl"])
        .pipe(plumber())
        .pipe(gfi({
            "<!-- header.html -->": "./temp/header.html"
        }))
        .pipe(gulp.dest("./temp/"));
});

gulp.task("insert:footer", ["replace", "insert:header"], function () {
    return gulp.src(["./temp/template.xsl"])
        .pipe(plumber())
        .pipe(gfi({
            "<!-- footer.html -->": "./temp/footer.html"
        }))
        .pipe(gulp.dest("./temp/"));
});

gulp.task("default", ["copy", "sync", "replace", "insert", "copy:done"]);
