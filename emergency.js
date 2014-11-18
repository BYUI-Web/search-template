(function() {
    function httpGet(theUrl) {
        var xmlHttp = null;

        xmlHttp = new XMLHttpRequest();
        xmlHttp.open("GET", theUrl, false);
        xmlHttp.send(null);
        return xmlHttp.responseXML;
    }

    // Changes XML to JSON
    function xmlToJson(xml) {

        // Create the return object
        var obj = {};

        if (xml.nodeType == 1) { // element
            // do attributes
            if (xml.attributes.length > 0) {
                obj["@attributes"] = {};
                for (var j = 0; j < xml.attributes.length; j++) {
                    var attribute = xml.attributes.item(j);
                    obj["@attributes"][attribute.nodeName] = attribute.nodeValue;
                }
            }
        } else if (xml.nodeType == 3) { // text
            obj = xml.nodeValue;
        }

        // do children
        if (xml.hasChildNodes()) {
            for (var i = 0; i < xml.childNodes.length; i++) {
                var item = xml.childNodes.item(i);
                var nodeName = (item.nodeName == "#text") ? 'textValue' : item.nodeName;
                if (typeof(obj[nodeName]) == "undefined") {
                    obj[nodeName] = xmlToJson(item);
                } else {
                    if (typeof(obj[nodeName].push) == "undefined") {
                        var old = obj[nodeName];
                        obj[nodeName] = [];
                        obj[nodeName].push(old);
                    }
                    obj[nodeName].push(xmlToJson(item));
                }
            }
        }
        return obj;
    };

    function addEmergencyHeader(title, message) {
        var emergencyMessage = '<div class="emergency-base">' + message + '</div>';
        document.getElementsByTagName('body')[0].innerHTML = emergencyMessage + document.getElementsByTagName('body')[0].innerHTML;
        $('head').append('<style>.emergency-base{background-color:#db520c;border:0 solid;border-color:#a73e09;color:#FFF;padding-left:30px;padding-bottom:10px;padding-top:10px}</style>');
    }

    function checkEmergency() {
        var rssData = xmlToJson(httpGet('http://igx1.byui.edu/prebuilt/emergency/emergency-rss.xml'));
        var items = rssData.rss.channel.item;
        for (var i = 0; i < items.length; i++) {
            if (items[i].category) {
                if (items[i].category.textValue == "Global") {
                    addEmergencyHeader(items[i].title.textValue, items[i].description.textValue);
                }
            }
        }
    }

    checkEmergency();
})();