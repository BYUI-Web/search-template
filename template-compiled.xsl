<!-- *** START OF STYLESHEET *** -->

<!-- **********************************************************************
 XSL to format the search output for Google Search Appliance
 ********************************************************************** -->
 <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- **********************************************************************
 include customer-onebox.xsl, which is auto-generated from the customer's
 set of OneBox Module definitions, and in turn invokes either the default
 OneBox template, or the customer's:
 ********************************************************************** -->
 <xsl:include href="customer-onebox.xsl"/>

 <xsl:output method="html"/>

<!-- **********************************************************************
 Logo setup (can be customized)
     - whether to show logo: 0 for FALSE, 1 (or non-zero) for TRUE
     - logo url
     - logo size: '' for default image size
     ********************************************************************** -->
     <xsl:variable name="show_logo">0</xsl:variable>
     <xsl:variable name="logo_url">http://www.byui.edu/images/common/byui-i.png</xsl:variable>
     <xsl:variable name="logo_width">0</xsl:variable>
     <xsl:variable name="logo_height">0</xsl:variable>

<!-- **********************************************************************
 Global Style variables (can be customized): '' for using browser's default
 ********************************************************************** -->

 <xsl:variable name="global_font">Helvetica, Arial, sans-serif</xsl:variable>
 <xsl:variable name="global_font_size"></xsl:variable>
 <xsl:variable name="global_bg_color">#ffffff</xsl:variable>
 <xsl:variable name="global_text_color">#333333</xsl:variable>
 <xsl:variable name="global_link_color">#333333</xsl:variable>
 <xsl:variable name="global_vlink_color">#333333</xsl:variable>
 <xsl:variable name="global_alink_color">#333333</xsl:variable>


<!-- **********************************************************************
 Result page components (can be customized)
     - whether to show a component: 0 for FALSE, non-zero (e.g., 1) for TRUE
     - text and style
     ********************************************************************** -->

     <!-- *** choose result page header: '', 'provided', 'mine', or 'both' *** -->
     <xsl:variable name="choose_result_page_header">both</xsl:variable>

     <!-- *** customize provided result page header *** -->
     <xsl:variable name="show_swr_link">0</xsl:variable>
     <xsl:variable name="swr_search_anchor_text">Search Within Results</xsl:variable>
     <xsl:variable name="show_result_page_adv_link">1</xsl:variable>
     <xsl:variable name="adv_search_anchor_text">BYU-Idaho Advanced Search</xsl:variable>
     <xsl:variable name="show_result_page_help_link">1</xsl:variable>
     <xsl:variable name="search_help_anchor_text">Search Tips</xsl:variable>
     <xsl:variable name="show_alerts_link">0</xsl:variable>
     <xsl:variable name="alerts_anchor_text">Alerts</xsl:variable>

     <!-- *** search boxes *** -->
     <xsl:variable name="show_top_search_box">1</xsl:variable>
     <xsl:variable name="show_bottom_search_box">1</xsl:variable>
     <xsl:variable name="search_box_size">32</xsl:variable>

     <!-- *** choose search button type: 'text' or 'image' *** -->
     <xsl:variable name="choose_search_button">text</xsl:variable>
     <xsl:variable name="search_button_text">Search</xsl:variable>
     <xsl:variable name="search_button_image_url"></xsl:variable>
     <xsl:variable name="search_collections_xslt"></xsl:variable>

     <!-- *** search info bars *** -->
     <xsl:variable name="show_search_info">1</xsl:variable>

     <!-- *** choose separation bar: 'ltblue', 'blue', 'line', 'nothing' *** -->
     <xsl:variable name="choose_sep_bar">ltblue</xsl:variable>
     <xsl:variable name="sep_bar_std_text">BYU-Idaho Search</xsl:variable>
     <xsl:variable name="sep_bar_adv_text">BYU-Idaho Advanced Search</xsl:variable>
     <xsl:variable name="sep_bar_error_text">Error</xsl:variable>

     <!-- *** navigation bars: '', 'google', 'link', or 'simple'*** -->
     <xsl:variable name="show_top_navigation">1</xsl:variable>
     <xsl:variable name="choose_bottom_navigation">link</xsl:variable>
     <xsl:variable name="my_nav_align">right</xsl:variable>
     <xsl:variable name="my_nav_size">-1</xsl:variable>
     <xsl:variable name="my_nav_color">#6f6f6f</xsl:variable>

     <!-- *** sort by date/relevance *** -->
     <xsl:variable name="show_sort_by">1</xsl:variable>

     <!-- *** spelling suggestions *** -->
     <xsl:variable name="show_spelling">1</xsl:variable>
     <xsl:variable name="spelling_text">Did you mean:</xsl:variable>
     <xsl:variable name="spelling_text_color"><strong>#c35c00</strong></xsl:variable>

     <!-- *** synonyms suggestions *** -->
     <xsl:variable name="show_synonyms">1</xsl:variable>
     <xsl:variable name="synonyms_text">You could also try:</xsl:variable>
     <xsl:variable name="synonyms_text_color">#c35c00</xsl:variable>

     <!-- *** keymatch suggestions *** -->
     <xsl:variable name="show_keymatch">1</xsl:variable>
     <xsl:variable name="keymatch_text">Best Match</xsl:variable>
     <xsl:variable name="keymatch_text_color">#333333</xsl:variable>
     <xsl:variable name="keymatch_bg_color">#ffffff</xsl:variable>

     <!-- *** Google Desktop integration *** -->
     <xsl:variable name="egds_show_search_tabs">1</xsl:variable>
     <xsl:variable name="egds_appliance_tab_label">Appliance</xsl:variable>
     <xsl:variable name="egds_show_desktop_results">1</xsl:variable>

     <!-- *** onebox information *** -->
     <xsl:variable name="show_onebox">1</xsl:variable>

     <!-- *** analytics information *** -->
     <xsl:variable name="analytics_account">UA-12079604-4</xsl:variable>

<!-- *** Document Previews *** -->
<xsl:variable name="show_document_previews">1</xsl:variable>

<!-- **********************************************************************
 Result elements (can be customized)
     - whether to show an element ('1' for yes, '0' for no)
     - font/size/color ('' for using style of the context)
     ********************************************************************** -->

     <!-- *** result title and snippet *** -->
     <xsl:variable name="show_res_title">1</xsl:variable>
     <xsl:variable name="res_title_color">#333333</xsl:variable>
     <xsl:variable name="res_title_size"></xsl:variable>
     <xsl:variable name="show_res_snippet">1</xsl:variable>
     <xsl:variable name="res_snippet_size">80%</xsl:variable>

     <!-- *** keyword match (in title or snippet) *** -->
     <xsl:variable name="res_keyword_color"></xsl:variable>
     <xsl:variable name="res_keyword_size"></xsl:variable>
     <xsl:variable name="res_keyword_format">strong</xsl:variable> <!-- 'b' for bold -->

     <!-- *** link URL *** -->
     <xsl:variable name="show_res_url">1</xsl:variable>
     <xsl:variable name="res_url_color">#06C</xsl:variable>
     <xsl:variable name="res_url_size">-1</xsl:variable>
     <xsl:variable name="truncate_result_urls">1</xsl:variable>
     <xsl:variable name="truncate_result_url_length">100</xsl:variable>

     <!-- *** misc elements *** -->
     <xsl:variable name="show_meta_tags">0</xsl:variable>
     <xsl:variable name="show_res_size">1</xsl:variable>
     <xsl:variable name="show_res_date">1</xsl:variable>
     <xsl:variable name="show_res_cache">0</xsl:variable>

     <!-- *** used in result cache link, similar pages link, and description *** -->
     <xsl:variable name="faint_color">#3A6FA9</xsl:variable>

     <!-- *** show secure results radio button *** -->
     <xsl:variable name="show_secure_radio">0</xsl:variable>

     <!-- *** show suggestions (remote aut-completions) *** -->
     <xsl:variable name="show_suggest">1</xsl:variable>

<!-- **********************************************************************
 Other variables (can be customized)
 ********************************************************************** -->

 <!-- *** page title *** -->
 <xsl:variable name="front_page_title">BYU-Idaho Search Home</xsl:variable>
 <xsl:variable name="result_page_title">BYU-I Search Results</xsl:variable>
 <xsl:variable name="adv_page_title">BYU-I Advanced Search</xsl:variable>
 <xsl:variable name="error_page_title">Error</xsl:variable>
 <xsl:variable name="swr_page_title">BYU-I Search Within Results</xsl:variable>

 <!-- *** choose adv_search page header: '', 'provided', 'mine', or 'both' *** -->
 <xsl:variable name="choose_adv_search_page_header">both</xsl:variable>

 <!-- *** cached page header text *** -->
 <xsl:variable name="cached_page_header_text">This is the cached copy of</xsl:variable>

 <!-- *** error message text *** -->
 <xsl:variable name="server_error_msg_text">A server error has occurred.</xsl:variable>
 <xsl:variable name="server_error_des_text">Check server response code in details.</xsl:variable>
 <xsl:variable name="xml_error_msg_text">Unknown XML result type.</xsl:variable>
 <xsl:variable name="xml_error_des_text">View page source to see the offending XML.</xsl:variable>

 <!-- *** advanced search page panel background color *** -->
 <xsl:variable name="adv_search_panel_bgcolor">#cbdced</xsl:variable>

 <!-- *** dyanmic result cluster options *** -->
 <xsl:variable name="show_res_clusters">0</xsl:variable>
 <xsl:variable name="res_cluster_position">right</xsl:variable>

<!-- **********************************************************************
 My global page header/footer [body added] (can be customized)
 ********************************************************************** -->
 <xsl:template name="my_page_header">
  <!-- *** replace the following with your own xhtml code or replace the text
  between the xsl:text tags with html escaped html code *** -->
  <xsl:text disable-output-escaping="yes">
  </xsl:text>
</xsl:template>     

<xsl:template name="my_page_body">
  <!-- *** replace the following with your own xhtml code or replace the text
  between the xsl:text tags with html escaped html code *** -->
  <xsl:text disable-output-escaping="yes"> 

    &lt;!-- Please enter html code below. --&gt;
    <!-- BYU-I web page header -->
    &lt;body&gt; 
    
      &lt;header role=&quot;banner&quot; class=&quot;global-header&quot;&gt;&#10;    &lt;nav role=&quot;navigation&quot; class=&quot;site-navigation navbar navbar-inverse&quot;&gt;&#10;      &lt;div class=&quot;container&quot;&gt;&#10;        &lt;div class=&quot;row&quot;&gt;&#10;          &lt;div class=&quot;navbar-header visible-xs&quot;&gt;&#10;            &lt;a href=&quot;http://www.byui.edu/&quot; title=&quot;BYU-Idaho&quot;&gt;&#10;              &lt;svg class=&quot;mobile-logo&quot; version=&quot;1.1&quot; id=&quot;Layer_1&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot; x=&quot;0px&quot; y=&quot;0px&quot; width=&quot;985.14px&quot; height=&quot;570.167px&quot; viewBox=&quot;19.384 226.888 985.14 570.167&quot; enable-background=&quot;new 19.384 226.888 985.14 570.167&quot; xml:space=&quot;preserve&quot;&gt;&#10;                &lt;path d=&quot;M132.864,332.018c0-2.488,0-34.12,0-47.602c0-3.64-0.512-6.528-0.512-6.528s3.328,0.526,6.556,0.526 c3.172,0,35.854,0,35.854,0c27.278,0,43.336,4.252,43.336,29.056c0,16.1-9.984,30.536-42.24,30.536c0,0-33.692,0-36.95,0 c-3.158,0-6.456,0.356-6.456,0.356S132.864,335.446,132.864,332.018L132.864,332.018L132.864,332.018z M132.864,441.344 c0-0.81,0-39.794,0-55.04c0-3.726-0.47-6.372-0.47-6.372s3.172,0.44,6.414,0.44c3.242,0,30.392,0,30.392,0 c24.178,0,53.816,0,53.816,33.494c0,24.79-21.192,33.521-49.72,33.521c0,0-33.622,0-34.488,0c-3.172,0-6.286,0.471-6.286,0.471 S132.864,444.502,132.864,441.344L132.864,441.344L132.864,441.344z M45.838,248.904v229.121c0,7.51,0.456,10.069-4.906,13.426 c-5.092,3.158-10.354,3.74-18.902,5.134c0,0-0.114,0-0.128,0c-0.868,0.2-0.668,3.414,0.128,3.414c0.626,0,185.416,0,185.416,0 c78.194,0,111.062-31.032,111.062-79.446c0-35.768-16.712-57.614-49.72-65.834c-0.512-0.156-0.512-0.84,0-1.11 c21.048-6.542,40.376-21.816,40.376-59.08c0-50.56-34.12-67.626-108.586-67.626L22.09,226.888c-0.84,0-1.11,3.256-0.2,3.428 c0.128,0,0.2,0.014,0.2,0.014c8.504,1.45,13.796,2.006,18.872,5.206C46.308,238.862,45.838,241.464,45.838,248.904L45.838,248.904z M979.996,248.904c0-7.438-0.356-10.04,4.778-13.298c5.233-3.158,10.495-3.754,19-5.206c0,0,0.027-0.014,0.184-0.014 c0.796-0.17,0.768-3.414-0.184-3.414l-136.79-0.014c-0.811,0-1.038,3.256-0.042,3.428l0.042,0.014 c8.676,1.038,12.644,2.006,17.777,5.206c5.29,3.256,4.809,5.874,4.809,13.326v137.672c0,31.374-18.021,55.538-53.704,55.538 c-35.769,0-53.816-24.149-53.816-55.538V248.932c0-7.41-0.312-10.07,4.906-13.326c5.206-3.158,9.486-3.954,17.878-5.206 c0,0,0.042-0.014,0.114-0.014c0.868-0.17,0.696-3.414-0.114-3.414h-129.11c-0.968,0-0.768,3.242,0,3.414 c0.028,0,0.284,0.014,0.284,0.014c4.65,0.298,7.922,0.612,10.794,3.1c4.296,3.598,5.064,7.922,5.064,15.416l-0.114,135.438 c0,65.252,35.769,120.704,144.156,120.704S979.98,449.662,979.98,384.354L979.996,248.904L979.996,248.904z M565.59,500.01 c0.824,0,1.024-3.158,0.17-3.328c-0.027-0.027-0.142-0.027-0.142-0.027c-8.504-1.45-13.782-1.992-18.888-5.135 c-5.29-3.3-4.879-5.916-4.879-13.34v-86.912l94.564-140.444c5.22-7.708,8.548-11.676,12.771-15.16 c0.797-0.668,2.505-1.834,3.471-2.504c3.939-1.962,5.462-2.446,10.226-2.588l0.114-0.014c0.996-0.042,1.18-3.4,0.2-3.4 l-127.488-0.014c-1.01,0-0.868,3.328,0.114,3.428c0.027,0,0.142,0.014,0.142,0.014c6.216,0,13.796,0.042,12.601,9.032 c-0.668,8.534-37.448,61.738-50.588,81.948c-1.82,2.844-3.301,5.874-3.927,9.5c-0.498-3.612-2.788-7.21-4.237-9.4 c-18.248-27.278-49.437-71.282-50.29-82.104c-0.811-9.174,6.271-8.918,12.502-8.918c0,0,0.014-0.014,0.17-0.014 c0.84-0.028,1.138-3.414,0.17-3.414l-133.96,0.014c-0.796,0-0.696,3.1,0.014,3.4c0.143,0.014,0.185,0.014,0.185,0.014 c5.745,0.626,8.817,0.184,15.573,3.47c0.782,0.37,2.603,1.622,3.328,2.262c4.252,3.598,6.87,6.884,12.118,14.592l94.408,139.79 v87.538c0,7.51,0.47,10.07-4.792,13.426c-5.206,3.158-10.396,3.74-18.888,5.134c0,0-0.156,0-0.156,0.028 c-0.952,0.17-0.796,3.328,0.156,3.328L565.59,500.01L565.59,500.01z M299.036,769.138c-18.204,18.376-38.3,26.282-72.278,26.282 c-11.676,0-30.408-0.512-40.264-0.512s-21.988,0.512-33.664,0.512c-0.81,0-1.024-3.144,0.298-3.484 c10.326-0.981,14.82-2.602,18.062-4.424c3.442-1.947,5.448-6.386,5.448-58.582l-0.054-38.726c0-52.183-2.006-56.975-5.448-58.51 c-3.242-1.921-7.736-3.429-18.062-4.467c-1.322-0.298-1.11-3.441-0.298-3.441c11.676,0,23.808,0.512,33.664,0.512 c9.842,0,34.134-0.512,46.122-0.512c53.22,0,91.648,35.754,91.648,83.739C324.224,730.568,314.952,752.952,299.036,769.138 L299.036,769.138L299.036,769.138z M224.356,632.504c-15.928,0-22.528,2.148-24.42,4.438c-1.608,2.134-3.94,13.81-3.94,52.521 v39.452c0,33.976,2.318,47.16,5.774,50.902c4.808,4.964,10.866,6.77,24.662,6.77c51.882,0,75.734-24.604,75.734-74.368 C302.222,671.744,274.944,632.504,224.356,632.504L224.356,632.504L224.356,632.504z M473.358,795.42c-0.769,0-1.038-3.144,0-3.484 c8.22-0.781,13.256-2.317,13.256-6.371c0-4.438-3.414-16.427-18.519-54.528h-54.87c-12.487,34.147-15.388,47.146-15.388,52.764 c0,4.65,3.727,7.096,15.09,8.078c1.011,0.356,0.811,3.484,0,3.484c-17.279,0-31.246,0-54.328,0c-0.823,0-1.336-3.145,0-3.484 c7.923-0.782,12.687-2.318,16.713-4.978c2.646-2.104,7.382-5.774,26.552-57.971l14.08-38.712 c8.178-22.172,16.909-45.326,23.496-65.906c0.512-1.92,8.533-1.92,9.046,0c8.008,23.013,14.819,41.843,24.136,65.906l15.076,38.712 c20.664,52.196,24.136,56.137,27.876,58.582c4.438,2.83,8.504,3.641,15.886,4.424c1.038,0.356,0.824,3.484,0,3.484 C506.994,795.42,498.802,795.42,473.358,795.42L473.358,795.42L473.358,795.42z M440.52,656.328l-23.352,63.857h46.948 L440.52,656.328z M689.878,795.42c-1.11,0-1.11-3.144,0.298-3.484c10.34-0.981,14.834-2.602,17.948-4.424 c3.158-1.947,5.576-6.386,5.576-58.582v-16.456H613.632v16.456c0,52.196,2.318,56.648,5.532,58.582 c3.144,1.82,7.693,3.442,18.048,4.424c1.322,0.356,1.322,3.484,0.512,3.484c-25.443,0-42.409,0-67.313,0 c-0.824,0-0.982-3.144,0.214-3.484c10.368-0.981,14.92-2.602,18.048-4.424c3.47-1.947,5.59-6.386,5.59-58.582l-0.058-38.726 c0-52.183-2.12-56.975-5.59-58.51c-3.145-1.921-7.694-3.429-18.048-4.467c-1.194-0.298-1.038-3.441-0.215-3.441 c24.334,0,41.358,0,67.314,0c0.81,0,0.81,3.158-0.512,3.441c-10.368,1.038-14.92,2.603-18.049,4.467 c-3.157,1.592-5.531,6.386-5.531,58.51v12.43h100.067v-12.43c0-52.183-2.346-56.975-5.575-58.51 c-3.129-1.921-7.681-3.429-17.948-4.467c-1.336-0.298-1.336-3.441-0.298-3.441c24.277,0,41.527,0,67.029,0 c1.011,0,1.011,3.158-0.199,3.441c-10.469,1.038-14.834,2.603-18.091,4.467c-3.144,1.592-5.546,6.386-5.546,58.51v38.712 c0,52.196,2.347,56.647,5.546,58.582c3.257,1.82,7.681,3.441,18.091,4.424c1.266,0.356,1.266,3.484,0.199,3.484 C731.96,795.42,714.71,795.42,689.878,795.42L689.878,795.42L689.878,795.42z M898.872,797.056 c-50.304,0-86.386-37.432-86.386-85.403c0-45.513,36.01-89.486,90.111-89.486c50.561,0,86.414,37.32,86.414,85.362 C989,752.952,953.16,797.056,898.872,797.056L898.872,797.056z M897.536,631.922c-47.433,0-63.062,37.916-63.062,72.078 c0,43.208,27.265,83.144,69.66,83.144c47.16,0,62.748-37.888,62.748-72.077C966.94,671.958,939.918,631.922,897.536,631.922 L897.536,631.922z M21.646,559.502c-1.266,0-2.262,1.038-2.262,2.276c0,1.237,0.996,2.262,2.262,2.262h952.576 c1.194,0,2.276-1.01,2.276-2.262s-1.038-2.276-2.276-2.276H21.646z M21.376,795.42c-0.81,0-0.81-3.271,0.342-3.484 c10.312-0.995,17.224-2.646,20.38-4.565c3.158-1.806,5.546-6.286,5.546-58.468v-38.698c0-52.183-2.332-56.974-5.546-58.51 c-3.158-1.92-10.07-3.429-20.38-4.467c-1.152-0.327-1.152-3.441-0.342-3.441c24.632,0,46.35,0,71.594,0 c0.782,0,1.01,3.128-0.312,3.441c-10.34,1.038-16.924,2.603-20.082,4.467c-3.47,1.592-5.86,6.386-5.86,58.51v38.642 c0,52.11,2.318,56.662,5.86,58.469c3.158,1.92,9.742,3.569,20.082,4.565c1.322,0.214,1.038,3.484,0.312,3.484 C68.324,795.42,46.606,795.42,21.376,795.42L21.376,795.42z&quot;/&gt;&#10;                &lt;/svg&gt;&#10;            &lt;/a&gt;&#10;            &lt;div class=&quot;mobile-dropdown-icon-container&quot;&gt;&#10;              &lt;a href=&quot;#&quot; data-toggle=&quot;collapse&quot; data-target=&quot;.site-search-collapse&quot;&gt;&#10;                &lt;svg class=&quot;mobile-nav-icon search-icon&quot; version=&quot;1.1&quot; id=&quot;Layer_1&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot; x=&quot;0px&quot; y=&quot;0px&quot; width=&quot;74px&quot; height=&quot;74.5px&quot; viewBox=&quot;0 0 74 74.5&quot; style=&quot;enable-background:new 0 0 74 74.5;&quot; xml:space=&quot;preserve&quot;&gt;&#10;                  &lt;style type=&quot;text/css&quot;&gt;&#10;                  &lt;![CDATA[&#10;                    .st0{display:inline;fill:#0472BE;}&#10;                    .st1{display:none;}&#10;                  ]]&gt;&#10;                  &lt;/style&gt;&#10;                  &lt;g id=&quot;blue&quot; class=&quot;st1&quot;&gt;&#10;                    &lt;rect x=&quot;-30.2&quot; y=&quot;-13.5&quot; class=&quot;st0&quot; width=&quot;351&quot; height=&quot;105&quot;/&gt;&#10;                  &lt;/g&gt;&#10;                  &lt;g id=&quot;icons&quot;&gt;&#10;                    &lt;g&gt;&#10;                      &lt;path d=&quot;M37.2,1C17.2,1,0.9,17.3,0.9,37.2c0,19.9,16.3,36.2,36.2,36.2s36.2-16.3,36.2-36.2C73.3,17.3,57.1,1,37.2,1z M37.2,71.5 C18.3,71.5,3,56.1,3,37.3S18.3,3,37.2,3c18.9,0,34.2,15.4,34.2,34.2C71.4,56,56,71.5,37.2,71.5z&quot;/&gt;&#10;                      &lt;path d=&quot;M45.6,34.7c0-6.5-5.3-11.7-11.7-11.7c-6.5,0-11.7,5.3-11.7,11.7c0,6.4,5.3,11.7,11.7,11.7c1.6,0,3.2-0.3,4.6-1l8.4,8.4 l6.2-6.2l-8.4-8.4C45.2,37.9,45.6,36.3,45.6,34.7z M33.8,41.4c-3.7,0-6.7-3-6.7-6.7s3-6.7,6.7-6.7c3.7,0,6.7,3,6.7,6.7 S37.5,41.4,33.8,41.4z&quot;/&gt;&#10;                    &lt;/g&gt;&#10;                  &lt;/g&gt;&#10;                &lt;/svg&gt;&#10;              &lt;/a&gt;&#10;              &lt;a href=&quot;https://secure.byui.edu/cas/login?service=https://web.byui.edu/Services/Login/?RedirectURL=https%3a%2f%2fmy.byui.edu%2f&quot;&gt;&#10;                &lt;svg class=&quot;mobile-nav-icon login-icon&quot; version=&quot;1.1&quot; id=&quot;Layer_1&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot; x=&quot;0px&quot; y=&quot;0px&quot;&#10;                   width=&quot;74.5px&quot; height=&quot;73.8px&quot; viewBox=&quot;0 0 74.5 73.8&quot; style=&quot;enable-background:new 0 0 74.5 73.8;&quot; xml:space=&quot;preserve&quot;&gt;&#10;                  &lt;style type=&quot;text/css&quot;&gt;&#10;                  &lt;![CDATA[&#10;                    .st0{display:inline;fill:#0472BE;}&#10;                    .st1{display:none;}&#10;                  ]]&gt;&#10;                  &lt;/style&gt;&#10;                  &lt;g id=&quot;blue&quot; class=&quot;st1&quot;&gt;&#10;                    &lt;rect x=&quot;-130.5&quot; y=&quot;-13.8&quot; class=&quot;st0&quot; width=&quot;351&quot; height=&quot;105&quot;/&gt;&#10;                  &lt;/g&gt;&#10;                  &lt;g id=&quot;icons&quot;&gt;&#10;                    &lt;g&gt;&#10;                      &lt;path d=&quot;M37.4,0.7C17.4,0.7,1.1,17,1.1,37c0,20,16.3,36.2,36.2,36.2C57.2,73.2,73.6,57,73.6,37C73.6,17,57.4,0.7,37.4,0.7z&#10;                         M37.4,2.7c18.9,0,34.2,15.4,34.2,34.2c0,8.3-2.9,15.8-7.8,21.8C60,51.1,53.2,45.6,45.2,43.4c-2.3,1.5-5,2.3-7.8,2.3&#10;                        c-2.9,0-5.5-0.9-7.8-2.3c-8,2.2-14.9,7.8-18.6,15.3C6.1,52.8,3.1,45.2,3.1,37C3.1,18.1,18.5,2.7,37.4,2.7z&quot;/&gt;&#10;                      &lt;path d=&quot;M37.4,40.8c5.8,0,10.6-5.3,10.6-11.9S44.6,17,37.4,17s-10.6,5.3-10.6,11.9S31.6,40.8,37.4,40.8z&quot;/&gt;&#10;                    &lt;/g&gt;&#10;                  &lt;/g&gt;&#10;                &lt;/svg&gt;&#10;              &lt;/a&gt;&#10;              &lt;a href=&quot;#&quot; data-toggle=&quot;collapse&quot; data-target=&quot;.site-navbar-collapse&quot;&gt;&#10;                &lt;svg class=&quot;mobile-nav-icon menu-icon&quot; version=&quot;1.1&quot; id=&quot;Layer_1&quot; xmlns=&quot;http://www.w3.org/2000/svg&quot; xmlns:xlink=&quot;http://www.w3.org/1999/xlink&quot; x=&quot;0px&quot; y=&quot;0px&quot; width=&quot;89.5px&quot; height=&quot;69.2px&quot; viewBox=&quot;0 0 89.5 69.2&quot; style=&quot;enable-background:new 0 0 89.5 69.2;&quot; xml:space=&quot;preserve&quot;&gt;&#10;                  &lt;g id=&quot;blue&quot; class=&quot;st1&quot;&gt;&#10;                    &lt;rect x=&quot;-235&quot; y=&quot;-16.2&quot; class=&quot;st0&quot; width=&quot;351&quot; height=&quot;105&quot;/&gt;&#10;                  &lt;/g&gt;&#10;                  &lt;g id=&quot;icons&quot;&gt;&#10;                    &lt;g&gt;&#10;                      &lt;path d=&quot;M23.1,24.6h42.8c1.1,0,2-0.9,2-2s-0.9-2-2-2H23.1c-1.1,0-2,0.9-2,2S22,24.6,23.1,24.6z&quot;/&gt;&#10;                      &lt;path d=&quot;M66.3,32.5H23.5c-1.1,0-2,0.9-2,2s0.9,2,2,2h42.8c1.1,0,2-0.9,2-2S67.4,32.5,66.3,32.5z&quot;/&gt;&#10;                      &lt;path d=&quot;M66,44.4H23.3c-1.1,0-2,0.9-2,2s0.9,2,2,2H66c1.1,0,2-0.9,2-2S67.1,44.4,66,44.4z&quot;/&gt;&#10;                      &lt;path d=&quot;M81.8,0.8H7.6c-3.7,0-6.7,3-6.7,6.7v53.9c0,3.7,3,6.7,6.7,6.7h74.2c3.7,0,6.7-3,6.7-6.7V7.6C88.5,3.8,85.5,0.8,81.8,0.8z&#10;                      M86.5,61.4c0,2.6-2.1,4.7-4.7,4.7H7.6c-2.6,0-4.7-2.1-4.7-4.7V7.6C2.9,5,5,2.9,7.6,2.9h74.2c2.6,0,4.7,2.1,4.7,4.7V61.4z&quot;/&gt;&#10;                    &lt;/g&gt;&#10;                  &lt;/g&gt;&#10;                &lt;/svg&gt;&#10;              &lt;/a&gt;&#10;            &lt;/div&gt;&#10;          &lt;/div&gt;&#10;        &lt;/div&gt;&#10;&#10;        &lt;div class=&quot;site-search-collapse navbar-collapse collapse&quot;&gt;&#10;          &lt;form class=&quot;navbar-form navbar-left visible-xs&quot; role=&quot;search&quot;&gt;&#10;            &lt;div class=&quot;input-group&quot;&gt;&#10;              &lt;input type=&quot;text&quot; class=&quot;form-control&quot; placeholder=&quot;Search&quot; name=&quot;q&quot;&gt;&#10;              &lt;span class=&quot;input-group-btn&quot;&gt;&#10;                &lt;button type=&quot;submit&quot; class=&quot;btn btn-success&quot;&gt;Submit&lt;/button&gt;&#10;              &lt;/span&gt;&#10;&#10;            &lt;/div&gt;&#10;&#10;          &lt;/form&gt;&#10;        &lt;/div&gt;&#10;&#10;        &lt;div class=&quot;navbar-collapse site-navbar-collapse collapse&quot;&gt;&#10;          &lt;ul class=&quot;nav navbar-nav navbar-left&quot;&gt;&#10;            &lt;li class=&quot;dropdown&quot;&gt;&#10;              &lt;a href=&quot;#administrative&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                University &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;              &lt;/a&gt;&#10;              &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/admissions&quot;&gt;Apply&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/about/&quot;&gt;About BYUI&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/contact-us/&quot;&gt;Contact&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/financial-aid/&quot;&gt;Financial Aid&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/student-support/ask-byui&quot;&gt;Information Desk&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/president&quot;&gt;President&#39;s Office&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/student-records/&quot;&gt;Registration&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/university-relations&quot;&gt;University Relations&lt;/a&gt;&lt;/li&gt;&#10;              &lt;/ul&gt;&#10;            &lt;/li&gt;&#10;            &lt;li class=&quot;dropdown&quot;&gt;&#10;              &lt;a href=&quot;#academic&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                Academics &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;              &lt;/a&gt;&#10;              &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/student-records/academic-deadlines&quot;&gt;Academic Schedule&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/academic-discovery-center&quot;&gt;Advising&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/directories/colleges-and-departments&quot;&gt;Colleges and Departments&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/catalog/&quot;&gt;Course Catalog&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/about/defining-aspects/learning-model&quot;&gt;Learning Model&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/testing-services&quot;&gt;Testing Center&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/academic-support-centers/tutoring-center&quot;&gt;Tutoring&lt;/a&gt;&lt;/li&gt;&#10;              &lt;/ul&gt;&#10;            &lt;/li&gt;&#10;            &lt;li class=&quot;dropdown&quot;&gt;&#10;              &lt;a href=&quot;#student-life&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                Living &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;              &lt;/a&gt;&#10;              &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/activities&quot;&gt;Activities&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/food-services/&quot;&gt;Food&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/get-involved&quot;&gt;Get Involved&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/health-center&quot;&gt;Health and Wellness&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/student-honor-office&quot;&gt;Honor Code&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/housing/&quot;&gt;Housing&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/human-resources/employment-opportunities/student-employment&quot;&gt;Student Employment&lt;/a&gt;&lt;/li&gt;&#10;              &lt;/ul&gt;&#10;            &lt;/li&gt;&#10;            &lt;li class=&quot;dropdown&quot;&gt;&#10;              &lt;a href=&quot;#services&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                Services &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;              &lt;/a&gt;&#10;              &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/ask/live-chat/?cid=hli:109&quot;&gt;Ask BYUI&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/disabilities/&quot;&gt;Disability Services&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/international-services&quot;&gt;International Services&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.lib.byui.edu/&quot;&gt;Library&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/university-operations/security-and-safety/parking-services&quot;&gt;Parking&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/university-operations/security-and-safety&quot;&gt;Security&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/information-technology&quot;&gt;Technical Help&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byuistore.com/&quot;&gt;University Store&lt;/a&gt;&lt;/li&gt;&#10;              &lt;/ul&gt;&#10;            &lt;/li&gt;&#10;            &lt;li class=&quot;dropdown&quot;&gt;&#10;              &lt;a href=&quot;#find&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                Find &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;              &lt;/a&gt;&#10;              &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/directories/&quot;&gt;A-Z Directory&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;https://web.byui.edu/BulletinBoard&quot;&gt;Bulletin Board&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://calendar.byui.edu/&quot;&gt;Calendar&lt;/a&gt;&lt;/li&gt;&#10;                &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/maps&quot;&gt;Map&lt;/a&gt;&lt;/li&gt;&#10;              &lt;/ul&gt;&#10;            &lt;/li&gt;&#10;          &lt;/ul&gt;&#10;          &lt;div class=&quot;navbar-right&quot;&gt;&#10;            &lt;ul class=&quot;nav navbar-nav&quot;&gt;&#10;                &lt;li class=&quot;dropdown&quot;&gt;&#10;                  &lt;a href=&quot;#audience&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&#10;                  Audience &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&#10;                  &lt;/a&gt;&#10;                  &lt;ul class=&quot;dropdown-menu&quot;&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/future-students/&quot;&gt;Future Students&lt;/a&gt;&lt;/li&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;https://my.byui.edu/ics&quot;&gt;Current Students&lt;/a&gt;&lt;/li&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;https://my.byui.edu/ics&quot;&gt;Employees&lt;/a&gt;&lt;/li&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;http://beta.byui.edu/parents&quot;&gt;Parents and Family&lt;/a&gt;&lt;/li&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;http://www.byuiconnect.com/s/1085/07-idaho/idaho-start.aspx?gid=4&amp;pgid=61&quot;&gt;Alumni&lt;/a&gt;&lt;/li&gt;&#10;                    &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/visitors&quot;&gt;Visitors&lt;/a&gt;&lt;/li&gt;&#10;                  &lt;/ul&gt;&#10;                &lt;/li&gt;&#10;            &lt;/ul&gt;&#10;            &lt;a href=&quot;https://web.byui.edu/services/login?RedirectURL=https://my.byui.edu/?cid=hli:111&quot; class=&quot;hidden-xs sign-in btn btn-primary navbar-btn pull-right&quot;&gt;Sign In&lt;/a&gt;&#10;          &lt;/div&gt;&#10;          &lt;!-- &lt;form method=&quot;get&quot; action=&quot;http://search.byui.edu/search?&quot; _lpchecked=&quot;1&quot;  role=&quot;search&quot; class=&quot;navbar-form form-horizontal container visible-xs&quot;&gt;&#10;            &lt;div class=&quot;search input-group&quot;&gt;&#10;              &lt;input type=&quot;text&quot; class=&quot;form-control&quot; name=&quot;q&quot; placeholder=&quot;Search&quot; alt=&quot;Search the BYU-I website&quot; /&gt;&#10;              &lt;span class=&quot;input-group-btn&quot;&gt;&#10;                &lt;button type=&quot;submit&quot; class=&quot;btn btn-success&quot;&gt;&#10;                  &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-magnifying-glass&quot;&gt;&lt;/span&gt;&#10;                  &lt;span class=&quot;sr-only&quot;&gt;Go&lt;/span&gt;&#10;                &lt;/button&gt;&#10;              &lt;/span&gt;&#10;              &lt;input type=&quot;hidden&quot; name=&quot;site&quot; value=&quot;default_collection&quot;/&gt;&#10;              &lt;input type=&quot;hidden&quot; name=&quot;client&quot; value=&quot;byui_frontend&quot;/&gt;&#10;              &lt;input type=&quot;hidden&quot; name=&quot;output&quot; value=&quot;xml_no_dtd&quot;/&gt;&#10;              &lt;input type=&quot;hidden&quot; name=&quot;proxystylesheet&quot; value=&quot;byui_frontend&quot;/&gt;&#10;              &lt;input type=&quot;hidden&quot; name=&quot;proxyreload&quot; value=&quot;0&quot;/&gt;&#10;            &lt;/div&gt;&#10;          &lt;/form&gt; --&gt;&#10;        &lt;/div&gt;&lt;!--/.navbar-collapse --&gt;&#10;      &lt;/div&gt;&lt;!--/.container --&gt;&#10;    &lt;/nav&gt;&#10;&#10;    &lt;div class=&quot;site-banner hidden-xs&quot;&gt;&#10;      &lt;div class=&quot;container&quot;&gt;&#10;        &lt;a class=&quot;site-logo navbar-brand&quot; href=&quot;http://www.byui.edu/&quot; title=&quot;BYU-Idaho&quot;&gt;&#10;          &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-byui-logo&quot;&gt;&#10;            &lt;span class=&quot;sr-only&quot;&gt;BYU-Idaho&lt;/span&gt;&#10;          &lt;/span&gt;&#10;        &lt;/a&gt;&#10;        &lt;div class=&quot;site-title&quot;&gt;&#10;          &lt;a href=&quot;#&quot;&gt;Search&lt;/a&gt;&#10;        &lt;/div&gt;&#10;        &lt;form method=&quot;get&quot; action=&quot;http://search.byui.edu/search?&quot; _lpchecked=&quot;1&quot;  role=&quot;search&quot; class=&quot;desktop-search form-horizontal container hidden-xs row&quot;&gt;&#10;          &lt;div class=&quot;search input-group&quot;&gt;&#10;            &lt;input type=&quot;text&quot; class=&quot;form-control&quot; name=&quot;q&quot; placeholder=&quot;Search&quot; alt=&quot;Search the BYU-I website&quot; /&gt;&#10;            &lt;span class=&quot;input-group-btn&quot;&gt;&#10;              &lt;button type=&quot;submit&quot; class=&quot;btn btn-success&quot;&gt;&#10;                &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-magnifying-glass&quot;&gt;&lt;/span&gt;&#10;                &lt;span class=&quot;sr-only&quot;&gt;Go&lt;/span&gt;&#10;              &lt;/button&gt;&#10;            &lt;/span&gt;&#10;            &lt;input type=&quot;hidden&quot; name=&quot;site&quot; value=&quot;default_collection&quot;/&gt;&#10;            &lt;input type=&quot;hidden&quot; name=&quot;client&quot; value=&quot;byui_frontend&quot;/&gt;&#10;            &lt;input type=&quot;hidden&quot; name=&quot;output&quot; value=&quot;xml_no_dtd&quot;/&gt;&#10;            &lt;input type=&quot;hidden&quot; name=&quot;proxystylesheet&quot; value=&quot;byui_frontend&quot;/&gt;&#10;            &lt;input type=&quot;hidden&quot; name=&quot;proxyreload&quot; value=&quot;0&quot;/&gt;&#10;          &lt;/div&gt;&#10;        &lt;/form&gt;&#10;      &lt;/div&gt;&#10;    &lt;/div&gt;&#10;  &lt;/header&gt;&#10;

    &lt;main role=&quot;main&quot; class=&quot;site-content container searchPage&quot;&gt;

    <!-- BYU-I web page header END -->

</xsl:text>
</xsl:template>

<xsl:template name="my_page_footer">
    <!--<span class="p">-->
    <xsl:text disable-output-escaping="yes"> &lt;!-- Please enter html code below. --&gt;

        <!-- BYU-I footer -->
        
        &lt;/main&gt; 
        &lt;!-- end site-content --&gt; 
        
        &lt;footer role=&quot;contentinfo&quot; class=&quot;global-footer&quot;&gt;&#10;&#10;    &lt;div class=&quot;footer-graphic jumbotron&quot;&gt;&lt;/div&gt;&#10;&#10;    &lt;div class=&quot;footer-audience&quot;&gt;&#10;        &lt;div class=&quot;container&quot;&gt;&#10;            &lt;nav class=&quot;audience-nav text-center&quot;&gt;&#10;                &lt;a href=&quot;http://www.byui.edu/future-students/&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;Future Students&lt;/a&gt;&#10;                &lt;a href=&quot;https://my.byui.edu/ics&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;Current Students&lt;/a&gt;&#10;                &lt;a href=&quot;https://my.byui.edu/ics&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;Employees&lt;/a&gt;&#10;                &lt;a href=&quot;http://beta.byui.edu/parents&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;Parents and Family&lt;/a&gt;&#10;                &lt;a href=&quot;http://www.byuiconnect.com/s/1085/07-idaho/idaho-start.aspx?gid=4&amp;pgid=61&quot; class=&quot;btn btn-primary btn-sm&quot;&gt;Alumni&lt;/a&gt;&#10;            &lt;/nav&gt;&#10;            &lt;!-- /.audience-nav --&gt;&#10;&#10;        &lt;/div&gt;&#10;        &lt;!-- /.container --&gt;&#10;    &lt;/div&gt;&#10;    &lt;!-- /.footer-audience --&gt;&#10;&#10;    &lt;div class=&quot;footer-links&quot;&gt;&#10;        &lt;div class=&quot;container&quot;&gt;&#10;            &lt;div id=&quot;footerAccordion&quot; class=&quot;&quot;&gt;&#10;                &lt;div class=&quot;row&quot;&gt;&#10;                    &lt;nav class=&quot;footer-column col-all-12 col-xs-6 col-sm-3 pull-left&quot;&gt;&#10;                        &lt;a class=&quot;footer-column-heading&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#footerAccordion&quot; href=&quot;#collapseContact&quot;&gt;Contact &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt;&#10;                        &lt;address class=&quot;no-margin&quot;&gt;&#10;                      &lt;ul id=&quot;collapseContact&quot; class=&quot;no-margin collapse&quot;&gt;&#10;                        &lt;li&gt;&#10;                          &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-office&quot;&gt;&lt;/span&gt;525 South Center St.&lt;br/&gt;&#10;                          Rexburg, ID, 83460&#10;                        &lt;/li&gt;&#10;                        &lt;li&gt;&#10;                          &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-phone&quot;&gt;&lt;/span&gt;&lt;a href=&quot;tel:12084961411&quot;&gt;(208) 496-1411&lt;/a&gt;&#10;                        &lt;/li&gt;&#10;                        &lt;li&gt;&#10;                          &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-mail&quot;&gt;&lt;/span&gt;&lt;a href=&quot;mailto:ask@byui.edu&quot;&gt;ask@byui.edu&lt;/a&gt;&#10;                        &lt;/li&gt;&#10;                        &lt;li&gt;&#10;                          &lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-chat&quot;&gt;&lt;/span&gt;&lt;a href=&quot;http://www.byui.edu/feedback/?cid=fli:192&quot;&gt;Feedback&lt;/a&gt;&#10;                        &lt;/li&gt;&#10;                      &lt;/ul&gt;&#10;                    &lt;/address&gt;&#10;                    &lt;/nav&gt;&#10;                    &lt;!-- /.footer-column --&gt;&#10;                    &lt;nav class=&quot;footer-column col-all-12 col-xs-6 col-sm-3 pull-left&quot;&gt;&#10;                        &lt;a class=&quot;footer-column-heading&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#footerAccordion&quot; href=&quot;#collapseFollow&quot;&gt;Follow &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt;&#10;                        &lt;ul id=&quot;collapseFollow&quot; class=&quot;footer-social no-margin collapse&quot;&gt;&#10;                            &lt;li&gt;&lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-facebook&quot;&gt;&lt;/span&gt;&lt;a href=&quot;http://www.byui.edu/social-media/facebook&quot;&gt;Facebook&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-twitter&quot;&gt;&lt;/span&gt;&lt;a href=&quot;http://www.byui.edu/social-media/twitter&quot;&gt;Twitter&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-youtube&quot;&gt;&lt;/span&gt;&lt;a href=&quot;http://www.byui.edu/social-media/youtube&quot;&gt;Youtube&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;span aria-hidden=&quot;true&quot; class=&quot;icon icon-linkedin&quot;&gt;&lt;/span&gt;&lt;a href=&quot;http://www.byui.edu/social-media/linkedin&quot;&gt;LinkedIn&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                        &lt;/ul&gt;&#10;                    &lt;/nav&gt;&#10;                    &lt;!-- /.footer-column --&gt;&#10;                    &lt;nav class=&quot;footer-column col-all-12 col-xs-6 col-sm-3 pull-left&quot;&gt;&#10;                        &lt;a href=&quot;#collapsePopular&quot; class=&quot;footer-column-heading&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#footerAccordion&quot;&gt;Popular &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt;&#10;                        &lt;ul id=&quot;collapsePopular&quot; class=&quot;no-margin collapse&quot;&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;https://web.byui.edu/devotionalsandspeeches/#/&quot;&gt;Devotionals&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/financial-services/my-personal-account/i-card&quot;&gt;ID Cards&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/human-resources/employment-opportunities&quot;&gt;Jobs and Employment&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://byui.universitytickets.com/user_pages/event_listings.aspx&quot;&gt;Ticket Office&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://web.byui.edu/WardsAndStakes/UnitInfo&quot;&gt;Wards and Stakes&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                        &lt;/ul&gt;&#10;                    &lt;/nav&gt;&#10;                    &lt;!-- /.footer-column --&gt;&#10;                    &lt;nav class=&quot;footer-column col-all-12 col-xs-6 col-sm-3 pull-left&quot;&gt;&#10;                        &lt;a href=&quot;#collapseHelp&quot; class=&quot;footer-column-heading&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#footerAccordion&quot;&gt;Help &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt;&#10;                        &lt;ul id=&quot;collapseHelp&quot; class=&quot;no-margin collapse&quot;&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/ask/live-chat/?cid=hli:109&quot;&gt;Ask BYUI&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/disabilities/&quot;&gt;Disability Services&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/information-technology&quot;&gt;Technical Help Desk&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                            &lt;li&gt;&lt;a href=&quot;http://www.byui.edu/student-support&quot;&gt;Student Support&lt;/a&gt;&#10;                            &lt;/li&gt;&#10;                        &lt;/ul&gt;&#10;                    &lt;/nav&gt;&#10;                    &lt;!-- /.footer-column --&gt;&#10;                &lt;/div&gt;&#10;                &lt;!-- /.row --&gt;&#10;            &lt;/div&gt;&#10;        &lt;/div&gt;&#10;        &lt;!-- /.container --&gt;&#10;    &lt;/div&gt;&#10;    &lt;!-- /.footer-links --&gt;&#10;&#10;    &lt;div class=&quot;footer-brand&quot;&gt;&#10;        &lt;div class=&quot;container&quot;&gt;&#10;            &lt;div class=&quot;school-branding row text-center&quot;&gt;&#10;                &lt;p&gt;&#10;                    &lt;a href=&quot;http:///www.byu.edu/&quot;&gt;BYU Provo&lt;/a&gt;|&#10;                    &lt;a href=&quot;http:///www.byuh.edu/&quot;&gt;BYU Hawaii&lt;/a&gt;|&#10;                    &lt;a href=&quot;http://www.ldsbc.edu/&quot;&gt;LDS Business College&lt;/a&gt;|&#10;                    &lt;a href=&quot;http://www.byui.edu/online/pathway&quot;&gt;Pathway&lt;/a&gt;&#10;                &lt;/p&gt;&#10;            &lt;/div&gt;&#10;            &lt;!-- /.school-branding --&gt;&#10;&#10;            &lt;div class=&quot;copyright row text-center&quot;&gt;&#10;                &lt;a href=&quot;http://www.byui.edu/copyright/policy/terms-of-use/?cid=fli:190&quot;&gt;Copyright &amp;copy;2013&lt;/a&gt;|&lt;a href=&quot;http://www.byui.edu/legal&quot;&gt;Legal Notices&lt;/a&gt;&#10;            &lt;/div&gt;&#10;            &lt;!-- /.copyright --&gt;&#10;&#10;            &lt;div class=&quot;church-branding row text-center&quot;&gt;&#10;                &lt;p&gt;&#10;                    &lt;a href=&quot;http://www.lds.org/&quot;&gt;&lt;span class=&quot;icon icon-lds-church&quot;&gt;&lt;/span&gt;&lt;span class=&quot;sr-only&quot;&gt;The Church of Jesus Christ of Latter-Day Saints&lt;/span&gt;&lt;/a&gt;&#10;                &lt;/p&gt;&#10;            &lt;/div&gt;&#10;            &lt;!-- /.church-branding --&gt;&#10;        &lt;/div&gt;&#10;        &lt;!-- /.container --&gt;&#10;    &lt;/div&gt;&#10;    &lt;!-- /.footer-brand --&gt;&#10;&#10;    &lt;!--&#10;            BEGIN INTRUSIVE FEEDBACK BUTTON:&#10;            THIS BUTTON SHOULD BE REMOVED&#10;            AS SOON AS YOU CAN DO SO&#10;            WITHOUT LOSING YOUR JOB&#10;          --&gt;&#10;    &lt;style&gt;&#10;        .feedback-toggle {&#10;            position: fixed;&#10;            bottom: -3px;&#10;            right: -4px;&#10;            display: none;&#10;            border: 1px solid #fff;&#10;        }&#10;    &lt;/style&gt;&#10;    &lt;script&gt;&#10;        $(function () {&#10;            $(&quot;.feedback-toggle&quot;).show();&#10;        });&#10;    &lt;/script&gt;&#10;&#10;    &lt;!-- Button trigger modal --&gt;&#10;    &lt;a data-toggle=&quot;modal&quot; href=&quot;#feedbackModal&quot; class=&quot;feedback-toggle btn btn-primary hidden-xs&quot;&gt;&lt;span class=&quot;icon-chat pull-left&quot;&gt;&lt;/span&gt;&lt;span class=&quot;pull-left visible-lg visible-xl&quot;&gt;Feedback&lt;/span&gt;&lt;/a&gt;&#10;&#10;    &lt;!-- Modal --&gt;&#10;    &lt;div class=&quot;feedback-modal modal fade&quot; id=&quot;feedbackModal&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;myModalLabel&quot; aria-hidden=&quot;true&quot;&gt;&#10;        &lt;div class=&quot;modal-dialog&quot;&gt;&#10;            &lt;div class=&quot;modal-content&quot;&gt;&#10;                &lt;div class=&quot;modal-header&quot;&gt;&#10;                    &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/button&gt;&#10;                    &lt;h4 class=&quot;modal-title&quot;&gt;We want to hear from you!&lt;/h4&gt;&#10;                &lt;/div&gt;&#10;                &lt;!-- /.modal-header --&gt;&#10;                &lt;div class=&quot;modal-body&quot;&gt;&#10;                    &lt;p&gt;BYU-Idaho values suggestions and ideas that can improve the university. Use our Feedback Form to let us know what you think.&lt;/p&gt;&#10;                &lt;/div&gt;&#10;                &lt;!-- /.modal-body --&gt;&#10;                &lt;div class=&quot;modal-footer&quot;&gt;&#10;                    &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;/button&gt;&#10;                    &lt;a href=&quot;http://www.byui.edu/feedback/&quot; type=&quot;button&quot; class=&quot;btn btn-primary&quot;&gt;&lt;span class=&quot;icon-chat&quot;&gt;&lt;/span&gt;Give Feedback&lt;/a&gt;&#10;                &lt;/div&gt;&#10;            &lt;/div&gt;&#10;            &lt;!-- /.modal-content --&gt;&#10;        &lt;/div&gt;&#10;        &lt;!-- /.modal-dialog --&gt;&#10;    &lt;/div&gt;&#10;    &lt;!-- /.modal --&gt;&#10;    &lt;!-- END INTRUSIVE FEEDBACK BUTTON --&gt;&#10;&lt;/footer&gt;&#10;&lt;!-- /.global-footer --&gt;

        &lt;script src=&quot;//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js&quot;&gt;
        &lt;/script&gt;
        &lt;script src=&quot;http://www.byui.edu/prebuilt/search/js/emergency.js&quot;&gt;
        &lt;/script&gt;
        &lt;script&gt;document.querySelector(&quot;html&quot;).className = &quot;&quot;;&lt;/script&gt;     
        &lt;script type="text/javascript"&gt;_satellite.pageBottom();&lt;/script&gt;
        &lt;/body&gt; 
        &lt;/html&gt;

        <!-- BYU-I footer END -->   

    </xsl:text>
    <!-- </span>-->
</xsl:template>

<xsl:template name="my_page_endHTML">
    <xsl:text disable-output-escaping="yes">
        &lt;/html&gt;
    </xsl:text>
</xsl:template>

<!-- *****************************************
Analytics Template
*******************************************-->
<xsl:template name="byuiAnalytics">
    <script src="//assets.adobedtm.com/9d799723fb681f246e7d4d8e9f3a613af54bd1c5/satelliteLib-40261a90862d0f213f1d58c5e42e2d0dcaf50b4a.js"></script>
</xsl:template>
<!-- **********************************************************************
 Logo template (can be customized)
 ********************************************************************** -->
 <xsl:template name="logo">
    <a href="http://www.byui.edu"><img src="{$logo_url}"
        width="{$logo_width}" height="{$logo_height}"
        alt="Go to BYU-Idaho Home PAge" border="0" /></a>
    </xsl:template>


<!-- **********************************************************************
 Search result page header (can be customized): logo and search box
 ********************************************************************** -->
 <xsl:template name="result_page_header">

    <xsl:if test="$show_logo != '0'">

        <xsl:call-template name="logo"/>
        <xsl:call-template name="nbsp3"/>

    </xsl:if>
    <xsl:if test="$show_top_search_box != '0'">

        <xsl:call-template name="search_box">
            <xsl:with-param name="type" select="'std_top'"/>
        </xsl:call-template>

    </xsl:if>
    <xsl:if test="/GSP/CT">

        <xsl:call-template name="stopwords"/>


    </xsl:if>

</xsl:template>


<!-- **********************************************************************
 Search within results page header (can be customized): logo and search box
 ********************************************************************** -->
 <xsl:template name="swr_page_header">
    <table border="0" cellpadding="0" cellspacing="0">
        <xsl:if test="$show_logo != '0'">
            <tr>
                <td rowspan="3" valign="top">
                    <xsl:call-template name="logo"/>
                    <xsl:call-template name="nbsp3"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="$show_top_search_box != '0'">
            <tr>
                <td valign="middle">
                    <xsl:call-template name="search_box">
                        <xsl:with-param name="type" select="'swr'"/>
                    </xsl:call-template>
                </td>
            </tr>
        </xsl:if>
    </table>
</xsl:template>


<!-- **********************************************************************
 Home search page header (can be customized): logo and search box
 ********************************************************************** -->
 <xsl:template name="home_page_header">
    <table border="0" cellpadding="0" cellspacing="0">
        <xsl:if test="$show_logo != '0'">
            <tr>
                <td rowspan="3" valign="top">
                    <xsl:call-template name="logo"/>
                    <xsl:call-template name="nbsp3"/>
                </td>
            </tr>
        </xsl:if>
        <xsl:if test="$show_top_search_box != '0'">
            <tr>
                <td valign="middle">
                    <xsl:call-template name="search_box">
                        <xsl:with-param name="type" select="'home'"/>
                    </xsl:call-template>
                </td>
            </tr>
        </xsl:if>
    </table>
</xsl:template>


<!-- **********************************************************************
 Separation bar variables (used in advanced search header and result page)
 ********************************************************************** -->
 <xsl:variable name="sep_bar_border_color">
    <xsl:choose>
        <xsl:when test="$choose_sep_bar = 'ltblue'">#F2F2F0</xsl:when>
        <xsl:when test="$choose_sep_bar = 'blue'">#F2F2F0</xsl:when>
        <xsl:otherwise><xsl:value-of select="$global_bg_color"/></xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<xsl:variable name="sep_bar_bg_color">
    <xsl:choose>
        <xsl:when test="$choose_sep_bar = 'ltblue'">#F2F2F0</xsl:when>
        <xsl:when test="$choose_sep_bar = 'blue'">#F2F2F0</xsl:when>
        <xsl:otherwise><xsl:value-of select="$global_bg_color"/></xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<xsl:variable name="sep_bar_text_color">
    <xsl:choose>
        <xsl:when test="$choose_sep_bar = 'ltblue'">#000000</xsl:when>
        <xsl:when test="$choose_sep_bar = 'blue'">#ffffff</xsl:when>
        <xsl:otherwise><xsl:value-of select="$global_text_color"/></xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<!-- **********************************************************************
 Advanced search page header HTML (can be customized)
 ********************************************************************** -->
 <xsl:template name="advanced_search_header">
    <table border="0" cellpadding="0" cellspacing="0">

        <tr>

            <td valign="top">
                <xsl:if test="$show_logo != '0'">
                    <xsl:call-template name="logo"/>
                </xsl:if>
            </td>
        </tr>
    </table>
</xsl:template>


<!-- **********************************************************************
 Cached page header (can be customized)
 ********************************************************************** -->
 <xsl:template name="cached_page_header">
    <xsl:param name="cached_page_url"/>
    <xsl:variable name="stripped_url" select="substring-after($cached_page_url,
        '://')"/>
<!--<table border="1" width="100%">
  <tr>
    <td>
      <table border="1" width="100%" cellpadding="10" cellspacing="0"
        bgcolor="{$global_bg_color}" color="{$global_bg_color}">
        <tr>
            <td>-->
                <!--<div>-->
                <!-- <font face="{$global_font}" color="{$global_text_color}" size="-1"> -->
                <xsl:value-of select="$cached_page_header_text"/>
                <xsl:call-template name="nbsp"/>
                <xsl:choose>
                    <xsl:when test="starts-with($cached_page_url,
                        $db_url_protocol)">
                        <a href="{concat('/db/',$stripped_url)}">
                            <!-- <font color="{$global_link_color}"> -->
                            <xsl:value-of select="$cached_page_url"/>
                            <!-- </font> -->
                        </a>.<xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with($cached_page_url,
                        $nfs_url_protocol)">
                        <a href="{concat('/nfs/',$stripped_url)}">
                            <!-- <font color="{$global_link_color}"> -->
                            <xsl:value-of select="$cached_page_url"/>
                            <!-- </font> -->
                        </a>.<xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                    </xsl:when>
                    <xsl:when test="starts-with($cached_page_url,
                        $smb_url_protocol)">
                        <a href="{concat('/smb/',$stripped_url)}">
                            <!-- <font color="{$global_link_color}"> -->
                            <xsl:value-of select="$cached_page_url"/>
                            <!-- </font> -->
                        </a>.<xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <a href="{$cached_page_url}">
                            <!-- <font color="{$global_link_color}"> -->
                            <xsl:value-of select="$cached_page_url"/>
                            <!-- </font> -->
                        </a>.<xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <!-- </font> -->
          <!--</td>
        </tr>
      </table>
    </td>
  </tr>
</table>-->
<!--</div>-->
<hr/>
</xsl:template>


<!-- **********************************************************************
 "Search Within Results" search input page (can be customized)
 ********************************************************************** -->
 <xsl:template name="swr_search">
    <xsl:text disable-output-escaping="yes">
        &lt;html&gt;>
    </xsl:text>
    <xsl:call-template name="langHeadStart"/>
    <xsl:text disable-output-escaping="yes">&lt;title&gt;</xsl:text><xsl:value-of select="$swr_page_title"/><xsl:text disable-output-escaping="yes">&lt;/title&gt;</xsl:text>
    <xsl:call-template name="style"/>
    <xsl:call-template name="langHeadEnd"/>
    <xsl:text disable-output-escaping="yes">
        &lt;body dir="ltr"&gt;
    </xsl:text>

    <xsl:call-template name="analytics"/>
    <xsl:call-template name="my_page_header"/>
    <xsl:call-template name="swr_page_header"/>
    <xsl:text disable-output-escaping="yes">
        &lt;hr/&gt;
    </xsl:text>
    <xsl:call-template name="copyright"/>
    <xsl:call-template name="my_page_footer"/>
    <xsl:text disable-output-escaping="yes">
        &lt;/body&gt;
        &lt;/html&gt;
    </xsl:text>
</xsl:template>


<!-- **********************************************************************
 "Front door" search input page (can be customized)
 ********************************************************************** -->
 <xsl:template name="front_door">
    <xsl:text disable-output-escaping="yes">
        &lt;html&gt;>
    </xsl:text>
    <xsl:call-template name="langHeadStart"/>
    <xsl:text disable-output-escaping="yes">&lt;title&gt;</xsl:text>><xsl:value-of select="$front_page_title"/><xsl:text disable-output-escaping="yes">&lt;/title&gt;</xsl:text>
    <xsl:call-template name="style"/>
    <xsl:call-template name="langHeadEnd"/>

    <xsl:text disable-output-escaping="yes">
        &lt;body dir="ltr"&gt;
    </xsl:text>
    <xsl:call-template name="analytics"/>
    <xsl:call-template name="my_page_header"/>
    <xsl:call-template name="home_page_header"/>
    <hr/>
    <xsl:call-template name="copyright"/>
    <xsl:call-template name="my_page_footer"/>
    <xsl:text disable-output-escaping="yes">
        &lt;/body&gt;
        &lt;/html&gt;
    </xsl:text>>
</xsl:template>


<!-- **********************************************************************
 Empty result set (can be customized)
 ********************************************************************** -->
 <xsl:template name="no_RES">
    <xsl:param name="query"/>

    <!-- *** Output Google Desktop results (if enabled and any available) *** -->
    <xsl:if test="$egds_show_desktop_results != '0'">
        <xsl:call-template name="desktop_results"/>
    </xsl:if>

    <!--<span class="p">-->
    <xsl:text disable-output-escaping="yes">
        &lt;br /&gt;
        Your search - &lt;strong&gt;</xsl:text><xsl:value-of select="$query"/><xsl:text disable-output-escaping="yes">&lt;/strong&gt; - did not match any documents.
        &lt;br /&gt;
        No pages were found containing &lt;strong&gt;</xsl:text>"<xsl:value-of select="$query"/>"<xsl:text disable-output-escaping="yes">&lt;/strong&gt;.
        &lt;br /&gt;
        &lt;br /&gt;
        Suggestions:
        &lt;ul&gt;
        &lt;li&gt;Make sure all words are spelled correctly.&lt;/li&gt;
        &lt;li&gt;Try different keywords.&lt;/li&gt;</xsl:text>
        <xsl:if test="/GSP/PARAM[(@name='access') and(@value='a')]">
            <xsl:text disable-output-escaping="yes">
                &lt;li&gt;Make sure your security credentials are correct.&lt;/li&gt;
            </xsl:text>
        </xsl:if>
        <xsl:text disable-output-escaping="yes">
            &lt;li&gt;Try more general keywords.&lt;/li&gt;
            &lt;/ul&gt;
        </xsl:text>
        <!--</span>-->

    </xsl:template>


<!-- ######################################################################
 We do not recommend changes to the following code.  Google Technical
 Support Personnel currently do not support customization of XSLT under
 these Technical Support Services Guidelines.  Such services may be
 provided on a consulting basis, at Google's then-current consulting
 services rates under a separate agreement, if Google personnel are
 available.  Please ask your Google Account Manager for more details if
 you are interested in purchasing consulting services.
 ###################################################################### -->


<!-- **********************************************************************
 Global Style (do not customize)
        default font type/size/color, background color, link color
         using HTML CSS (Cascading Style Sheets)
         ********************************************************************** -->
         <xsl:template name="style">
            <style type="text/css">
                <xsl:comment>
                    .searchPage blockquote {
                    margin: 0;
                    }
                    .searchPage body,
                    .searchPage td,
                    .searchPage div,
                    .searchPage .p,
                    .searchPage a,
                    .searchPage .d,
                    .searchPage .s {
                    font-family:<xsl:value-of select="$global_font"/>
                    }
                    .searchPage body,
                    .searchPage td,
                    .searchPage div,
                    .searchPage .p,
                    .searchPage a,
                    .searchPage .d {
                    font-size: <xsl:value-of select="$global_font_size"/>
                    }
                    .searchPage body,
                    .searchPage div,
                    .searchPage td,
                    .searchPage .p,
                    .searchPage .s {
                    color:<xsl:value-of select="$global_text_color"/>
                    }
                    .searchPage body,
                    .searchPage .d,
                    .searchPage .p,
                    .searchPage .s {
                    background-color:<xsl:value-of select="$global_bg_color"/>
                    }
                    .searchPage .s {
                    font-size: <xsl:value-of select="$res_snippet_size"/>
                    }
                    .searchPage .g {
                    margin-top: 0;
                    margin-bottom: 0;
                    padding: 5px 20px 20px 20px;
                    line-height: 18px;
                    }
                    .searchPage .s td {
                    width: 34em;
                    line-height: 18px;
                    }
                    .searchPage .l {
                    font-size: <xsl:value-of select="$res_title_size"/>
                    }
                    .searchPage .l {
                    color: <xsl:value-of select="$res_title_color"/>
                    }
                    .searchPage .l {
                    text-decoration: none;
                    }
                    .searchPage a,
                    .searchPage a:hover,
                    .searchPage a:active,
                    .searchPage a:visited {
                    text-decoration: none;
                    }
<!-- .searchPage a:link,
.searchPage .w,
.searchPage .w a:link {
color:<xsl:value-of select="$global_link_color"/> -->
}
.searchPage a:link,
.searchPage .w,
.searchPage .w a:link {
text-decoration: none;
}
.searchPage .f,
.searchPage .f:link,
.searchPage .f a:link {
color:<xsl:value-of select="$faint_color"/>
}
.searchPage .f {
font-size: 12px;
}
<!-- .searchPage a:visited,
.searchPage .f a:visited {
  color:<xsl:value-of select="$global_vlink_color"/>
  } -->
  .searchPage a:active,
  .searchPage .f a:active {
  color:<xsl:value-of select="$global_alink_color"/>
  }
  .searchPage .t {
  color:<xsl:value-of select="$sep_bar_text_color"/>
  }
  .searchPage .t {
  background-color:<xsl:value-of select="$sep_bar_bg_color"/>
  }
  .searchPage .z {
  display: none;
  }
  .searchPage .i,
  .searchPage .i:link {
  color: #3a6fa9;
  }
  .searchPage .a,
  .searchPage .a:link {
  color:<xsl:value-of select="$res_url_color"/>
  }
  .searchPage div.n {
  margin-top: 2ex;
  }
  .searchPage .n a {
  font-size: 10pt;
  color:auto;
  }
  .searchPage .n .i {
  font-size: 12pt;
  font-weight: bold;
  position: relative;
  top: 1px;
  }
  .searchPage .q a:visited,
  .searchPage .q a:link,
  .searchPage .q a:active,
  .searchPage .q {
  color: #333333;
  }
  .searchPage .b,
  .searchPage .b a {
  font-size: 12pt;
  color: #333333;
  font-weight: bold;
  }
  .searchPage .d {
  margin-right: 1em;
  margin-left: 1em;
  }
  .searchPage div.oneboxResults {
  max-height: 150px;
  overflow: hidden;
  }
</xsl:comment>
</style>
</xsl:template>

<!-- **********************************************************************
 URL variables (do not customize)
 ********************************************************************** -->
 <!-- *** if this is a test search (help variable)-->
 <xsl:variable name="is_test_search"
    select="/GSP/PARAM[@name='testSearch']/@value"/>

    <!-- *** if this is a search within results search *** -->
    <xsl:variable name="swrnum">
        <xsl:choose>
            <xsl:when test="/GSP/PARAM[(@name='swrnum') and (@value!='')]">
                <xsl:value-of select="/GSP/PARAM[@name='swrnum']/@value"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="0"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- *** help_url: search tip URL (html file) *** -->
    <xsl:variable name="help_url">/user_help.html</xsl:variable>

    <!-- *** alerts_url: Alerts URL (html file) *** -->
    <xsl:variable name="alerts_url">/alerts</xsl:variable>

    <!-- *** base_url: collection info *** -->
    <xsl:variable name="base_url">
        <xsl:for-each
            select="/GSP/PARAM[@name = 'client' or

            @name = 'site' or
            @name = 'num' or
            @name = 'output' or
            @name = 'proxystylesheet' or
            @name = 'access' or
            @name = 'lr' or
            @name = 'ie']">
            <xsl:value-of select="@name"/>=<xsl:value-of select="@original_value"/>
            <xsl:if test="position() != last()">&amp;</xsl:if>
        </xsl:for-each>
    </xsl:variable>

    <!-- *** home_url: search? + collection info + &proxycustom=<HOME/> *** -->
    <xsl:variable name="home_url">search?<xsl:value-of select="$base_url"
        />&amp;proxycustom=&lt;HOME/&gt;</xsl:variable>


        <!-- *** synonym_url: does not include q, as_q, and start elements *** -->
        <xsl:variable name="synonym_url"><xsl:for-each
            select="/GSP/PARAM[(@name != 'q') and
            (@name != 'as_q') and
            (@name != 'swrnum') and

            (@name != 'ie') and
            (@name != 'start') and
            (@name != 'epoch' or $is_test_search != '') and
            not(starts-with(@name, 'metabased_'))]">
            <xsl:value-of select="@name"/><xsl:text>=</xsl:text>
            <xsl:value-of select="@original_value"/>
            <xsl:if test="position() != last()">
                <xsl:text disable-output-escaping="yes">&amp;</xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:variable>

    <!-- *** search_url *** -->
    <xsl:variable name="search_url">
        <xsl:for-each select="/GSP/PARAM[(@name != 'start') and
            (@name != 'swrnum') and
            (@name != 'epoch' or $is_test_search != '') and
            not(starts-with(@name, 'metabased_'))]">
            <xsl:value-of select="@name"/><xsl:text>=</xsl:text>
            <xsl:value-of select="@original_value"/>
            <xsl:if test="position() != last()">
                <xsl:text disable-output-escaping="yes">&amp;</xsl:text>
            </xsl:if>
        </xsl:for-each>
    </xsl:variable>

    <!-- *** filter_url: everything except resetting "filter=" *** -->
    <xsl:variable name="filter_url">search?<xsl:for-each
        select="/GSP/PARAM[(@name != 'filter') and
        (@name != 'epoch' or $is_test_search != '') and
        not(starts-with(@name, 'metabased_'))]">
        <xsl:value-of select="@name"/><xsl:text>=</xsl:text>
        <xsl:value-of select="@original_value"/>
        <xsl:if test="position() != last()">
            <xsl:text disable-output-escaping="yes">&amp;</xsl:text>
        </xsl:if>
    </xsl:for-each>
    <xsl:text disable-output-escaping='yes'>&amp;filter=</xsl:text>
</xsl:variable>

<!-- *** adv_search_url: search? + $search_url + as_q=$q *** -->
<xsl:variable name="adv_search_url">search?<xsl:value-of
    select="$search_url"/>&amp;proxycustom=&lt;ADVANCED/&gt;</xsl:variable>

    <!-- *** db_url_protocol: googledb:// *** -->
    <xsl:variable name="db_url_protocol">googledb://</xsl:variable>

    <!-- *** nfs_url_protocol: nfs:// *** -->
    <xsl:variable name="nfs_url_protocol">nfs://</xsl:variable>

    <!-- *** smb_url_protocol: smb:// *** -->
    <xsl:variable name="smb_url_protocol">smb://</xsl:variable>

    <!-- *** unc_url_protocol: unc:// *** -->
    <xsl:variable name="unc_url_protocol">unc://</xsl:variable>

    <!-- *** swr_search_url: search? + $search_url + as_q=$q *** -->
    <xsl:variable name="swr_search_url">search?<xsl:value-of
        select="$search_url"/>&amp;swrnum=<xsl:value-of select="/GSP/RES/M"/></xsl:variable>

        <!-- *** analytics_script_url: http://www.google-analytics.com/urchin.js *** -->
        <xsl:variable
            name="analytics_script_url">http://www.google-analytics.com/urchin.js</xsl:variable>

<!-- **********************************************************************
 Search Parameters (do not customize)
 ********************************************************************** -->

 <!-- *** num_results: actual num_results per page *** -->
 <xsl:variable name="num_results">
    <xsl:choose>
        <xsl:when test="/GSP/PARAM[(@name='num') and (@value!='')]">
            <xsl:value-of select="/GSP/PARAM[@name='num']/@value"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="10"/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:variable>

<!-- *** form_params: parameters carried by the search input form *** -->
<xsl:template name="form_params">
    <xsl:for-each
        select="PARAM[@name != 'q' and
        @name != 'ie' and
        not(contains(@name, 'as_')) and
        @name != 'btnG' and
        @name != 'btnI' and
        @name != 'site' and
        @name != 'filter' and
        @name != 'swrnum' and
        @name != 'start' and
        @name != 'access' and
        @name != 'ip' and
        (@name != 'epoch' or $is_test_search != '') and
        not(starts-with(@name ,'metabased_'))]">
        <input type="hidden" name="{@name}" value="{@value}" />

        <xsl:if test="@name = 'oe'">
            <input type="hidden" name="ie" value="{@value}" />
        </xsl:if>

        <xsl:text>
        </xsl:text>
    </xsl:for-each>
    <input type="hidden" name="filter" value="0" />
    <xsl:if test="$search_collections_xslt = '' and PARAM[@name='site']">
        <input type="hidden" name="site" value="{PARAM[@name='site']/@value}"/>
    </xsl:if>
</xsl:template>

<!-- *** space_normalized_query: q = /GSP/Q *** -->
<xsl:variable name="qval">
    <xsl:value-of select="/GSP/Q"/>
</xsl:variable>

<xsl:variable name="space_normalized_query">
    <xsl:value-of select="normalize-space($qval)"
        disable-output-escaping="yes"/>
    </xsl:variable>

    <!-- *** stripped_search_query: q, as_q, ... for cache highlight *** -->
    <xsl:variable name="stripped_search_query"><xsl:for-each
        select="/GSP/PARAM[(@name = 'q') or
        (@name = 'as_q') or
        (@name = 'as_oq') or
        (@name = 'as_epq')]"><xsl:value-of select="@original_value"
        /><xsl:if test="position() != last()"
        ><xsl:text disable-output-escaping="yes">+</xsl:text
        ></xsl:if></xsl:for-each>
    </xsl:variable>

    <xsl:variable name="access">
        <xsl:choose>
            <xsl:when test="/GSP/PARAM[(@name='access') and ((@value='s') or (@value='a'))]">
                <xsl:value-of select="/GSP/PARAM[@name='access']/@original_value"/>
            </xsl:when>
            <xsl:otherwise>p</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

<!-- **********************************************************************
 Figure out what kind of page this is (do not customize)
 ********************************************************************** -->
 <xsl:template match="GSP">
    <xsl:choose>
        <xsl:when test="Q">
            <xsl:choose>
                <xsl:when test="$swrnum != 0">
                    <xsl:call-template name="swr_search"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:call-template name="search_results"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:when>
        <xsl:when test="CACHE">
            <xsl:call-template name="cached_page"/>
        </xsl:when>
        <xsl:when test="CUSTOM/HOME">
            <xsl:call-template name="front_door"/>
        </xsl:when>
        <xsl:when test="CUSTOM/ADVANCED">
            <xsl:call-template name="advanced_search"/>
        </xsl:when>
        <xsl:when test="ERROR">
            <xsl:call-template name="error_page">
                <xsl:with-param name="errorMessage" select="$server_error_msg_text"/>
                <xsl:with-param name="errorDescription" select="$server_error_des_text"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:call-template name="error_page">
                <xsl:with-param name="errorMessage" select="$xml_error_msg_text"/>
                <xsl:with-param name="errorDescription" select="$xml_error_des_text"/>
            </xsl:call-template>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<!-- **********************************************************************
 Cached page (do not customize)
 ********************************************************************** -->
 <xsl:template name="cached_page">
    <xsl:variable name="cached_page_url" select="CACHE/CACHE_URL"/>
    <xsl:variable name="cached_page_html" select="CACHE/CACHE_HTML"/>

    <!-- *** decide whether to load html page or pdf file *** -->
    <xsl:if test="'.pdf' != substring($cached_page_url,
        1 + string-length($cached_page_url) - string-length('.pdf')) and
        not(starts-with($cached_page_url, $db_url_protocol)) and
        not(starts-with($cached_page_url, $nfs_url_protocol)) and
        not(starts-with($cached_page_url, $smb_url_protocol)) and
        not(starts-with($cached_page_url, $unc_url_protocol))">
        <base href="{$cached_page_url}"/>
    </xsl:if>

    <!-- *** display cache page header *** -->
    <xsl:call-template name="cached_page_header">
        <xsl:with-param name="cached_page_url" select="$cached_page_url"/>
    </xsl:call-template>

    <!-- *** display cached contents *** -->
    <xsl:value-of select="$cached_page_html" disable-output-escaping="yes"/>
</xsl:template>

<xsl:template name="escape_quot">
    <xsl:param name="string"/>
    <xsl:call-template name="replace_string">
        <xsl:with-param name="find" select="'&quot;'"/>
        <xsl:with-param name="replace" select="'&amp;quot;'"/>
        <xsl:with-param name="string" select="$string"/>
    </xsl:call-template>
</xsl:template>

<!-- **********************************************************************
 Advanced search page (do not customize)
 ********************************************************************** -->
 <xsl:template name="advanced_search">

    <xsl:variable name="html_escaped_as_q">
        <xsl:call-template name="escape_quot">
            <xsl:with-param name="string" select="/GSP/PARAM[@name='q']/@value"/>
        </xsl:call-template>
        <xsl:value-of select="' '"/>
        <xsl:call-template name="escape_quot">
            <xsl:with-param name="string" select="/GSP/PARAM[@name='as_q']/@value"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="html_escaped_as_epq">
        <xsl:call-template name="escape_quot">
            <xsl:with-param name="string" select="/GSP/PARAM[@name='as_epq']/@value"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="html_escaped_as_oq">
        <xsl:call-template name="escape_quot">
            <xsl:with-param name="string" select="/GSP/PARAM[@name='as_oq']/@value"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="html_escaped_as_eq">
        <xsl:call-template name="escape_quot">
            <xsl:with-param name="string" select="/GSP/PARAM[@name='as_eq']/@value"/>
        </xsl:call-template>
    </xsl:variable>

    <!-- <html>  tag inside langHeadStart-->
    <xsl:call-template name="langHeadStart"/>
    <title><xsl:value-of select="$adv_page_title"/></title>
    <xsl:call-template name="style"/>

    <!-- script type="text/javascript" -->
    <script>
        <xsl:comment>
            function setFocus() {
            document.f.as_q.focus(); }
            function esc(x){
            x = escape(x).replace(/\+/g, "%2b");
            if (x.substring(0,2)=="\%u") x="";
            return x;
            }
            function collecturl(target, custom) {
            var p = new Array();var i = 0;var url="";var z = document.f;
            if (z.as_q.value.length) {p[i++] = 'as_q=' + esc(z.as_q.value);}
            if (z.as_epq.value.length) {p[i++] = 'as_epq=' + esc(z.as_epq.value);}
            if (z.as_oq.value.length) {p[i++] = 'as_oq=' + esc(z.as_oq.value);}
            if (z.as_eq.value.length) {p[i++] = 'as_eq=' + esc(z.as_eq.value);}
            if (z.as_sitesearch.value.length)
            {p[i++]='as_sitesearch='+esc(z.as_sitesearch.value);}
            if (z.as_lq.value.length) {p[i++] = 'as_lq=' + esc(z.as_lq.value);}
            if (z.as_occt.options[z.as_occt.selectedIndex].value.length)
            {p[i++]='as_occt='+esc(z.as_occt.options[z.as_occt.selectedIndex].value);}
            if (z.as_dt.options[z.as_dt.selectedIndex].value.length)
            {p[i++]='as_dt='+esc(z.as_dt.options[z.as_dt.selectedIndex].value);}
            if (z.lr.options[z.lr.selectedIndex].value != '') {p[i++] = 'lr=' +
            z.lr.options[z.lr.selectedIndex].value;}
            if (z.num.options[z.num.selectedIndex].value != '10')
            {p[i++] = 'num=' + z.num.options[z.num.selectedIndex].value;}
            if (z.sort.options[z.sort.selectedIndex].value != '')
            {p[i++] = 'sort=' + z.sort.options[z.sort.selectedIndex].value;}
            if (typeof(z.client) != 'undefined')
            {p[i++] = 'client=' + esc(z.client.value);}
            if (typeof(z.site) != 'undefined')
            {p[i++] = 'site=' + esc(z.site.value);}
            if (typeof(z.output) != 'undefined')
            {p[i++] = 'output=' + esc(z.output.value);}
            if (typeof(z.proxystylesheet) != 'undefined')
            {p[i++] = 'proxystylesheet=' + esc(z.proxystylesheet.value);}
            if (typeof(z.ie) != 'undefined')
            {p[i++] = 'ie=' + esc(z.ie.value);}
            if (typeof(z.oe) != 'undefined')
            {p[i++] = 'oe=' + esc(z.oe.value);}

            if (typeof(z.access) != 'undefined')
            {p[i++] = 'access=' + esc(z.access.value);}
            if (custom != '')
            {p[i++] = 'proxycustom=' + '&lt;ADVANCED/&gt;';}
            if (p.length &gt; 0) {
            url = p[0];
            for (var j = 1; j &lt; p.length; j++) { url += "&amp;" + p[j]; }}
            location.href = target + '?' + url;
            }
            // </xsl:comment>
        </script>

        <xsl:call-template name="langHeadEnd"/>

        <xsl:text disable-output-escaping="yes">
            &lt;body onload="setFocus()" dir="ltr"&gt;
        </xsl:text>

        <!-- Analytics script first to initialize it. -->
        <xsl:call-template name="analytics"/>

        <!-- *** Customer's own advanced search page header *** -->
        <xsl:if test="$choose_adv_search_page_header = 'mine' or
            $choose_adv_search_page_header = 'both'">
            <!-- <xsl:call-template name="my_page_header"/> -->
            <xsl:call-template name="my_page_body" />
        </xsl:if>

        <!--====Advanced Search Header======-->
        <xsl:if test="$choose_adv_search_page_header = 'provided' or
            $choose_adv_search_page_header = 'both'">
            <xsl:call-template name="advanced_search_header"/>
        </xsl:if>

        <xsl:call-template name="top_sep_bar">
            <xsl:with-param name="text" select="$sep_bar_adv_text"/>
            <xsl:with-param name="show_info" select="0"/>
            <xsl:with-param name="time" select="0"/>
        </xsl:call-template>

        <!--====Carry over Search Parameters======-->
        <form method="get" action="search" name="f">
            <xsl:if test="PARAM[@name='client']">
                <input type="hidden" name="client"
                    value="{PARAM[@name='client']/@value}" />
                </xsl:if>
                <!--==== site is carried over in the drop down if the menu is used =====-->
                <xsl:if test="$search_collections_xslt = '' and PARAM[@name='site']">
                    <input type="hidden" name="site" value="{PARAM[@name='site']/@value}"/>
                </xsl:if>
                <xsl:if test="PARAM[@name='output']">
                    <input type="hidden" name="output"
                        value="{PARAM[@name='output']/@value}" />
                    </xsl:if>
                    <xsl:if test="PARAM[@name='proxystylesheet']">
                        <input type="hidden" name="proxystylesheet"
                            value="{PARAM[@name='proxystylesheet']/@value}" />
                        </xsl:if>
                        <xsl:if test="PARAM[@name='ie']">
                            <input type="hidden" name="ie"
                                value="{PARAM[@name='ie']/@value}" />
                            </xsl:if>
                            <xsl:if test="PARAM[@name='oe']">
                                <input type="hidden" name="oe"
                                    value="{PARAM[@name='oe']/@value}" />
                                </xsl:if>
                                <xsl:if test="PARAM[@name='hl']">
                                    <input type="hidden" name="hl"
                                        value="{PARAM[@name='hl']/@value}" />
                                    </xsl:if>
                                    <xsl:if test="PARAM[@name='getfields']">
                                        <input type="hidden" name="getfields"
                                            value="{PARAM[@name='getfields']/@value}" />
                                        </xsl:if>
                                        <xsl:if test="PARAM[@name='requiredfields']">
                                            <input type="hidden" name="requiredfields"
                                                value="{PARAM[@name='requiredfields']/@value}" />
                                            </xsl:if>
                                            <xsl:if test="PARAM[@name='partialfields']">
                                                <input type="hidden" name="partialfields"
                                                    value="{PARAM[@name='partialfields']/@value}" />
                                                </xsl:if>

                                                <!--====Advanced Search Options======-->

                                                <table id ="adv_search_box" cellspacing="0" cellpadding="3" border="0" width="100%">
                                                    <tr bgcolor="{$adv_search_panel_bgcolor}">
                                                        <td>
                                                            <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                <tr bgcolor="{$adv_search_panel_bgcolor}">
                                                                    <td>
                                                                        <table id="find_resutls_area" width="100%" cellspacing="0" cellpadding="2"
                                                                            border="0">
                                                                            <tr>
                                                                                <td class="left_text" valign="top" width="15%">
                                                                                    <!-- <font size="-1"> -->
                                                                                    <br />
                                                                                    <strong>Find results</strong>
                                                                                    <!-- </font>  -->
                                                                                </td>

                                                                                <td width="85%">
                                                                                    <table width="100%" cellpadding="2"
                                                                                        border="0" cellspacing="0">
                                                                                        <tr>
                                                                                            <td>
                                                                                                <!-- <font size="-1"> -->with <strong>all</strong> of the words<!-- </font> -->
                                                                                            </td>

                                                                                            <td>
                                                                                                <xsl:text disable-output-escaping="yes">
                                                                                                    &lt;input class=&quot;vert_text&quot; type=&quot;text&quot;
                                                                                                    name=&quot;as_q&quot;
                                                                                                    size=&quot;25&quot; value=&quot;</xsl:text>
                                                                                                    <xsl:value-of disable-output-escaping="yes"
                                                                                                        select="$html_escaped_as_q"/>
                                                                                                        <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text>

                                                                                                        <script type="text/javascript">
                                                                                                            <xsl:comment>
                                                                                                                document.f.as_q.focus();
                                                                                                                // </xsl:comment>
                                                                                                            </script>
                                                                                                        </td>

                                                                                                        <td valign="top" rowspan="4">
                                                                                                            <!-- <font size="-1"> -->
                                                                                                            <select class="vert_text" name="num">
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="PARAM[(@name='num') and (@value!='10')]">
                                                                                                                        <option value="10">10 results</option>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        <option value="10" selected="selected">10 results</option>
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="PARAM[(@name='num') and (@value='20')]">
                                                                                                                        <option value="20" selected="selected">20 results</option>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        <option value="20">20 results</option>
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="PARAM[(@name='num') and (@value='30')]">
                                                                                                                        <option value="30" selected="selected">30 results</option>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        <option value="30">30 results</option>
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="PARAM[(@name='num') and (@value='50')]">
                                                                                                                        <option value="50" selected="selected">50 results</option>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        <option value="50">50 results</option>
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                                <xsl:choose>
                                                                                                                    <xsl:when test="PARAM[(@name='num') and (@value='100')]">
                                                                                                                        <option value="100" selected="selected">100 results</option>
                                                                                                                    </xsl:when>
                                                                                                                    <xsl:otherwise>
                                                                                                                        <option value="100">100 results</option>
                                                                                                                    </xsl:otherwise>
                                                                                                                </xsl:choose>
                                                                                                            </select>
                                                                                                            <!-- </font> -->
                                                                                                        </td>
                                                                                                        <xsl:call-template name="collection_menu"/>
                                                                                                        <td>
                                                                                                            <!-- <font size="-1"> -->
                                                                                                            <input type="submit" name="btnG"
                                                                                                                value="{$search_button_text}" />
                                                                                                                <!-- </font> -->
                                                                                                            </td>
                                                                                                        </tr>

                                                                                                        <tr>
                                                                                                            <td nowrap="nowrap">
                                                                                                                <!-- <font size="-1"> -->with the <strong>exact phrase</strong>
                                                                                                                <!-- </font> -->
                                                                                                            </td>

                                                                                                            <td>
                                                                                                                <xsl:text disable-output-escaping="yes">

                                                                                                                    &lt;input class=&quot;vert_text&quot; type=&quot;text&quot;
                                                                                                                    name=&quot;as_epq&quot;
                                                                                                                    size=&quot;25&quot; value=&quot;</xsl:text>
                                                                                                                    <xsl:value-of disable-output-escaping="yes"
                                                                                                                        select="$html_escaped_as_epq"/>
                                                                                                                        <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text>
                                                                                                                    </td>
                                                                                                                </tr>

                                                                                                                <tr>
                                                                                                                    <td nowrap="nowrap">
                                                                                                                       <!--  <font size="-1"> -->with <strong>at least one</strong> of the words<!-- </font> --></td>

                                                                                                                       <td>
                                                                                                                        <xsl:text disable-output-escaping="yes">

                                                                                                                            &lt;input class=&quot;vert_text&quot; type=&quot;text&quot;
                                                                                                                            name=&quot;as_oq&quot;
                                                                                                                            size=&quot;25&quot; value=&quot;</xsl:text>
                                                                                                                            <xsl:value-of disable-output-escaping="yes"
                                                                                                                                select="$html_escaped_as_oq"/>
                                                                                                                                <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text>
                                                                                                                            </td>
                                                                                                                        </tr>

                                                                                                                        <tr>
                                                                                                                            <td nowrap="nowrap">
                                                                                                                                <!-- <font size="-1"> -->
                                                                                                                                <strong>without</strong> the words<!-- </font> --></td>

                                                                                                                                <td>
                                                                                                                                    <xsl:text disable-output-escaping="yes">

                                                                                                                                        &lt;input class=&quot;vert_text&quot; type=&quot;text&quot;
                                                                                                                                        name=&quot;as_eq&quot;
                                                                                                                                        size=&quot;25&quot; value=&quot;</xsl:text>
                                                                                                                                        <xsl:value-of disable-output-escaping="yes"
                                                                                                                                            select="$html_escaped_as_eq"/>
                                                                                                                                            <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                            </tr>

                                                                                                            <tr bgcolor="{$global_bg_color}">
                                                                                                                <td>
                                                                                                                    <table width="100%" cellspacing="0"
                                                                                                                        cellpadding="2" border="0">
                                                                                                                        <tr>
                                                                                                                            <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>Language</strong><!-- </font> --></td>

                                                                                                                            <td width="40%"><!-- <font size="-1"> -->Return pages written in<!-- </font> --></td>

                                                                                                                            <td style="padding: 5px 2px 2px 2px"><!-- <font size="-1"> -->



                                                                                                                                <xsl:choose>
                                                                                                                                    <xsl:when test="PARAM[(@name='oe') and (@value!='')]">
                                                                                                                                        <xsl:text disable-output-escaping="yes">&lt;select class=&quot;vert_text&quot; name=&quot;lr&quot;&gt;</xsl:text>
                                                                                                                                    </xsl:when>
                                                                                                                                    <xsl:otherwise>
                                                                                                                                        <xsl:text disable-output-escaping="yes">&lt;select class=&quot;vert_text&quot; name=&quot;lr&quot; onchange=&quot;javascript:collecturl('search', 'adv');&quot;&gt;</xsl:text>
                                                                                                                                    </xsl:otherwise>
                                                                                                                                </xsl:choose>

                                                                                                                                <option value="">any language</option>

                                                                                                                                <xsl:choose>
                                                                                                                                    <xsl:when test="PARAM[(@name='lr') and (@value='lang_ar')]">
                                                                                                                                        <option value="lang_ar"
                                                                                                                                            selected="selected">Arabic</option>
                                                                                                                                        </xsl:when>
                                                                                                                                        <xsl:otherwise>
                                                                                                                                            <option value="lang_ar">Arabic</option>
                                                                                                                                        </xsl:otherwise>
                                                                                                                                    </xsl:choose>

                                                                                                                                    <xsl:choose>
                                                                                                                                        <xsl:when test="PARAM[(@name='lr') and (@value='lang_zh-CN')]">
                                                                                                                                            <option value="lang_zh-CN"
                                                                                                                                                selected="selected">Chinese (Simplified)</option>
                                                                                                                                            </xsl:when>
                                                                                                                                            <xsl:otherwise>
                                                                                                                                                <option value="lang_zh-CN">Chinese (Simplified)</option>
                                                                                                                                            </xsl:otherwise>
                                                                                                                                        </xsl:choose>

                                                                                                                                        <xsl:choose>
                                                                                                                                            <xsl:when test="PARAM[(@name='lr') and (@value='lang_zh-TW')]">
                                                                                                                                                <option value="lang_zh-TW"
                                                                                                                                                    selected="selected">Chinese (Traditional)</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_zh-TW">Chinese (Traditional)</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_cs')]">
                                                                                                                                                    <option value="lang_cs" selected="selected">Czech</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_cs">Czech</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_da')]">
                                                                                                                                                    <option value="lang_da" selected="selected">Danish</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_da">Danish</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_nl')]">
                                                                                                                                                    <option value="lang_nl" selected="selected">Dutch</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_nl">Dutch</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_en')]">
                                                                                                                                                    <option value="lang_en" selected="selected">English</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_en">English</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_et')]">
                                                                                                                                                    <option value="lang_et" selected="selected">Estonian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_et">Estonian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_fi')]">
                                                                                                                                                    <option value="lang_fi" selected="selected">Finnish</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_fi">Finnish</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_fr')]">
                                                                                                                                                    <option value="lang_fr" selected="selected">French</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_fr">French</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_de')]">
                                                                                                                                                    <option value="lang_de" selected="selected">German</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_de">German</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_el')]">
                                                                                                                                                    <option value="lang_el" selected="selected">Greek</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_el">Greek</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_iw')]">
                                                                                                                                                    <option value="lang_iw" selected="selected">Hebrew</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_iw">Hebrew</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_hu')]">
                                                                                                                                                    <option value="lang_hu" selected="selected">Hungarian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_hu">Hungarian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_is')]">
                                                                                                                                                    <option value="lang_is" selected="selected">Icelandic</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_is">Icelandic</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_it')]">
                                                                                                                                                    <option value="lang_it" selected="selected">Italian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_it">Italian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_ja')]">
                                                                                                                                                    <option value="lang_ja" selected="selected">Japanese</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_ja">Japanese</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_ko')]">
                                                                                                                                                    <option value="lang_ko" selected="selected">Korean</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_ko">Korean</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_lv')]">
                                                                                                                                                    <option value="lang_lv" selected="selected">Latvian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_lv">Latvian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_lt')]">
                                                                                                                                                    <option value="lang_lt" selected="selected">Lithuanian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_lt">Lithuanian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_no')]">
                                                                                                                                                    <option value="lang_no" selected="selected">Norwegian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_no">Norwegian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_pl')]">
                                                                                                                                                    <option value="lang_pl" selected="selected">Polish</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_pl">Polish</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_pt')]">
                                                                                                                                                    <option value="lang_pt" selected="selected">Portuguese</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_pt">Portuguese</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_ro')]">
                                                                                                                                                    <option value="lang_ro" selected="selected">Romanian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_ro">Romanian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_ru')]">
                                                                                                                                                    <option value="lang_ru" selected="selected">Russian</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_ru">Russian</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_es')]">
                                                                                                                                                    <option value="lang_es" selected="selected">Spanish</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_es">Spanish</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>

                                                                                                                                            <xsl:choose>
                                                                                                                                                <xsl:when test="PARAM[(@name='lr') and (@value='lang_sv')]">
                                                                                                                                                    <option value="lang_sv" selected="selected">Swedish</option>
                                                                                                                                                </xsl:when>
                                                                                                                                                <xsl:otherwise>
                                                                                                                                                    <option value="lang_sv">Swedish</option>
                                                                                                                                                </xsl:otherwise>
                                                                                                                                            </xsl:choose>
                                                                                                                                            <xsl:text disable-output-escaping="yes">&lt;/select&gt;</xsl:text>
                                                                                                                                            <!-- </font> --></td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>

                                                                                                                            <tr bgcolor="{$global_bg_color}">
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="2"
                                                                                                                                        cellspacing="0" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>File Format</strong><!-- </font> --></td>

                                                                                                                                            <td width="40%" nowrap="nowrap"><!-- <font size="-1"> --><select name="as_ft">
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_ft') and (@value='i')]">
                                                                                                                                                        <option value="i" selected="selected">Only</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="i">Only</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_ft') and (@value='e')]">
                                                                                                                                                        <option value="e" selected="selected">Don't</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="e">Don't</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                            </select><span class="left_text"> return </span> results of the file format<!-- </font> -->
                                                                                                                                        </td>

                                                                                                                                        <td><!-- <font size="-1"> -->
                                                                                                                                            <select class="vert_text" name="as_filetype">
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value!='')]">
                                                                                                                                                        <option value="">any format</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="" selected="selected">any format</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='pdf')]">
                                                                                                                                                        <option value="pdf" selected="selected">Adobe Acrobat PDF (.pdf)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="pdf">Adobe Acrobat PDF (.pdf)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='ps')]">
                                                                                                                                                        <option value="ps" selected="selected">Adobe Postscript (.ps)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="ps">Adobe Postscript (.ps)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='doc')]">
                                                                                                                                                        <option value="doc" selected="selected">Microsoft Word (.doc)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="doc">Microsoft Word (.doc)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='xls')]">
                                                                                                                                                        <option value="xls" selected="selected">Microsoft Excel (.xls)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="xls">Microsoft Excel (.xls)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='ppt')]">
                                                                                                                                                        <option value="ppt" selected="selected">Microsoft Powerpoint (.ppt)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="ppt">Microsoft Powerpoint (.ppt)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_filetype') and (@value='rtf')]">
                                                                                                                                                        <option value="rtf" selected="selected">Rich Text Format (.rtf)</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="rtf">Rich Text Format (.rtf)</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                            </select>
                                                                                                                                            <!-- </font> --></td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>

                                                                                                                            <tr bgcolor="{$global_bg_color}">
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellspacing="0"
                                                                                                                                        cellpadding="2" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>Occurrences</strong><!-- </font> --></td>

                                                                                                                                            <td nowrap="nowrap" width="40%"><!-- <font size="-1"> -->Return results where my terms occur<!-- </font> --></td>

                                                                                                                                            <td><!-- <font size="-1"> --><select class="vert_text"
                                                                                                                                                name="as_occt">
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_occt') and (@value!='any')]">
                                                                                                                                                        <option value="any"> anywhere in the page </option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="any" selected="selected">
                                                                                                                                                            anywhere in the page
                                                                                                                                                        </option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_occt') and (@value='title')]">
                                                                                                                                                        <option value="title" selected="selected">in the title of the page</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="title">in the title of the page</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_occt') and (@value='url')]">
                                                                                                                                                        <option value="url" selected="selected">in the URL of the page</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="url">in the URL of the page</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                            </select><!-- </font> --></td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>

                                                                                                                            <tr bgcolor="{$global_bg_color}">
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="2"
                                                                                                                                        cellspacing="0" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>Domain</strong><!-- </font> --></td>

                                                                                                                                            <td width="40%" nowrap="nowrap"><!-- <font size="-1"> --><select
                                                                                                                                                name="as_dt">
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_dt') and (@value='i')]">
                                                                                                                                                        <option value="i" selected="selected">Only</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="i">Only</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                                <xsl:choose>
                                                                                                                                                    <xsl:when test="PARAM[(@name='as_dt') and (@value='e')]">
                                                                                                                                                        <option value="e" selected="selected">Don't</option>
                                                                                                                                                    </xsl:when>
                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                        <option value="e">Don't</option>
                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                </xsl:choose>
                                                                                                                                            </select><span class="left_text" > return </span>results from the site or domain<!-- </font> --></td>

                                                                                                                                            <td>
                                                                                                                                                <table cellpadding="0" cellspacing="0"
                                                                                                                                                    border="0">
                                                                                                                                                    <tr>
                                                                                                                                                        <td>
                                                                                                                                                            <xsl:choose>
                                                                                                                                                                <xsl:when test="PARAM[@name='as_sitesearch']">
                                                                                                                                                                    <input class="vert_text" type="text" size="25"
                                                                                                                                                                        value="{PARAM[@name='as_sitesearch']/@value}"
                                                                                                                                                                        name="as_sitesearch" />
                                                                                                                                                                    </xsl:when>
                                                                                                                                                                    <xsl:otherwise>
                                                                                                                                                                        <input class="vert_text" type="text" size="25" value="" name="as_sitesearch" />
                                                                                                                                                                    </xsl:otherwise>
                                                                                                                                                                </xsl:choose>
                                                                                                                                                            </td>
                                                                                                                                                        </tr>

                                                                                                                                                        <tr>
                                                                                                                                                            <td valign="top" nowrap="nowrap"><!-- <font size="-1"> -->
                                                                                                                                                                <i>e.g. byui.edu, .org</i><!-- </font> --></td>
                                                                                                                                                            </tr>
                                                                                                                                                        </table>
                                                                                                                                                    </td>
                                                                                                                                                </tr>

                                                                                                                                                <!-- Sort by Date feature -->
                                                                                                                                                <tr>
                                                                                                                                                    <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>Sort</strong><!-- </font> --></td>

                                                                                                                                                    <td style="padding: 2px 2px 5px 2px" colspan="2" nowrap="nowrap"><!-- <font size="-1"> --><select class="vert_text"
                                                                                                                                                        name="sort">
                                                                                                                                                        <xsl:choose>
                                                                                                                                                            <xsl:when test="PARAM[(@name='sort') and (@value='')]">
                                                                                                                                                                <option value="" selected="selected">Sort by relevance</option>
                                                                                                                                                            </xsl:when>
                                                                                                                                                            <xsl:otherwise>
                                                                                                                                                                <option value="">Sort by relevance</option>
                                                                                                                                                            </xsl:otherwise>
                                                                                                                                                        </xsl:choose>
                                                                                                                                                        <xsl:choose>
                                                                                                                                                            <xsl:when test="PARAM[(@name='sort') and (@value='date:D:S:d1')]">
                                                                                                                                                                <option value="date:D:S:d1" selected="selected">Sort by date</option>
                                                                                                                                                            </xsl:when>
                                                                                                                                                            <xsl:otherwise>
                                                                                                                                                                <option value="date:D:S:d1">Sort by date</option>
                                                                                                                                                            </xsl:otherwise>
                                                                                                                                                        </xsl:choose>
                                                                                                                                                    </select><!-- </font> --></td>
                                                                                                                                                </tr>
                                                                                                                                                <!-- Secure Search feature -->
                                                                                                                                                <xsl:if test="$show_secure_radio != '0'">

                                                                                                                                                    <tr>
                                                                                                                                                        <td width="15%"><!-- <font size="-1"> --><strong>Security</strong><!-- </font> --></td>

                                                                                                                                                        <td colspan="2" nowrap="nowrap"><!-- <font size="-1"> -->
                                                                                                                                                            <xsl:choose>
                                                                                                                                                                <xsl:when test="$access='p'">
                                                                                                                                                                    <label><input type="radio" name="access" value="p" checked="checked" />Search public content only</label>
                                                                                                                                                                </xsl:when>
                                                                                                                                                                <xsl:otherwise>
                                                                                                                                                                    <label><input type="radio" name="access" value="p"/>Search public content only</label>
                                                                                                                                                                </xsl:otherwise>
                                                                                                                                                            </xsl:choose>
                                                                                                                                                            <xsl:choose>
                                                                                                                                                                <xsl:when test="$access='a'">
                                                                                                                                                                    <label><input type="radio" name="access" value="a" checked="checked" />Search public and secure content (login required)</label>
                                                                                                                                                                </xsl:when>
                                                                                                                                                                <xsl:otherwise>
                                                                                                                                                                    <label><input type="radio" name="access" value="a"/>Search public and secure content (login required)</label>
                                                                                                                                                                </xsl:otherwise>
                                                                                                                                                            </xsl:choose>
                                                                                                                                                            <!-- </font> --></td>
                                                                                                                                                        </tr>
                                                                                                                                                    </xsl:if>
                                                                                                                                                </table>
                                                                                                                                            </td>
                                                                                                                                        </tr>

                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                        <br />
                                                                                                                        <br />

                                                                                                                        <!--====Page-Specific Search======-->
                                                                                                                        <table cellpadding="6" cellspacing="0" border="0">
                                                                                                                            <tr>
                                                                                                                                <td><strong>Page-Specific Search</strong></td>
                                                                                                                            </tr>
                                                                                                                        </table>

                                                                                                                        <table cellspacing="0" cellpadding="3" border="0" width="100%">
                                                                                                                            <tr bgcolor="{$adv_search_panel_bgcolor}">
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="0" cellspacing="0"
                                                                                                                                        border="0">
                                                                                                                                        <tr bgcolor="{$adv_search_panel_bgcolor}">
                                                                                                                                            <td>

                                                                                                                                                <table width="100%" cellpadding="2"
                                                                                                                                                    cellspacing="0" border="0">
                                                                                                                                                    <form method="get" action="search" name="h">

                                                                                                                                                        <tr bgcolor="{$global_bg_color}">
                                                                                                                                                            <td class="left_text" width="15%"><!-- <font size="-1"> --><strong>Links</strong><!-- </font> --></td>

                                                                                                                                                            <td width="40%" nowrap="nowrap"><!-- <font size="-1"> -->Find pages that link to the page<!-- </font>  --></td>

                                                                                                                                                            <td nowrap="nowrap">
                                                                                                                                                                <xsl:choose>
                                                                                                                                                                    <xsl:when test="PARAM[@name='as_lq']">
                                                                                                                                                                        <input class="vert_text" type="text" size="30"
                                                                                                                                                                            value="{PARAM[@name='as_lq']/@value}"
                                                                                                                                                                            name="as_lq" />
                                                                                                                                                                        </xsl:when>
                                                                                                                                                                        <xsl:otherwise>
                                                                                                                                                                            <input class="vert_text" type="text" size="30" value="" name="as_lq" />
                                                                                                                                                                        </xsl:otherwise>
                                                                                                                                                                    </xsl:choose>
                                                                                                                                                                    <!-- <font size="-1"> -->
                                                                                                                                                                    <input style="margin-left: 5px" type="submit" name="btnG" value="{$search_button_text}" /><!-- </font> -->
                                                                                                                                                                </td>
                                                                                                                                                            </tr>
                                                                                                                                                        </form>
                                                                                                                                                    </table>
                                                                                                                                                </td>
                                                                                                                                            </tr>
                                                                                                                                        </table>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>

                                                                                                                            <xsl:call-template name="copyright"/>

                                                                                                                        </form>

                                                                                                                        <!-- *** Customer's own advanced search page footer *** -->
                                                                                                                        <xsl:call-template name="my_page_footer"/>

                                                                                                                        <!-- *** HTML footer *** -->
                                                                                                                        <xsl:text disable-output-escaping="yes">
                                                                                                                            &lt;/body&gt;
                                                                                                                        </xsl:text>

                                                                                                                        <xsl:call-template name="my_page_endHTML"/>

                                                                                                                    </xsl:template>

<!-- **********************************************************************
 Resend query with filter=p to disable path_filtering
 if there is only one result cluster (do not customize)
 ********************************************************************** -->
 <xsl:template name="redirect_if_few_results">
    <xsl:variable name="count" select="count(/GSP/RES/R)"/>
    <xsl:variable name="start" select="/GSP/RES/@SN"/>
    <xsl:variable name="filterall"
        select="count(/GSP/PARAM[@name='filter']) = 0"/>
        <xsl:variable name="filter" select="/GSP/PARAM[@name='filter']/@value"/>

    </xsl:template>

<!-- **********************************************************************
 Search results framework (do not customize)
 ********************************************************************** -->
 <xsl:template name="search_results">


    <!-- *** HTML header and style *** -->
    <xsl:call-template name="langHeadStart"/>
    <!--<xsl:call-template name="my_page_header"/>-->
    <xsl:call-template name="redirect_if_few_results"/>
    <title><xsl:value-of select="$result_page_title"/>:
    <xsl:value-of select="$space_normalized_query"/>
</title>
<xsl:call-template name="style"/>
<script type="text/javascript">
    <xsl:comment>
        function resetForms() {
        for (var i = 0; i &lt; document.forms.length; i++ ) {
        document.forms[i].reset();
        }
        }
        //</xsl:comment>
    </script>
    <xsl:call-template name="langHeadEnd"/>
    <xsl:text disable-output-escaping="yes">
        &lt;body onload="resetForms()" dir="ltr"&gt;
    </xsl:text>

    <!-- *** Analytics script first to initialize it. *** -->
    <xsl:call-template name="analytics"/>
    <xsl:call-template name="byuiAnalytics"/>

    <!-- *** Customer's own result page header *** -->
    <xsl:if test="$choose_result_page_header = 'mine' or
        $choose_result_page_header = 'both'">
        <xsl:call-template name="my_page_body"/>
    </xsl:if>

    <!-- *** Result page header *** -->
    <xsl:if test="$choose_result_page_header = 'provided' or
        $choose_result_page_header = 'both'">
        <xsl:call-template name="result_page_header" />
    </xsl:if>

    <!-- *** Top separation bar *** -->
    <xsl:if test="Q != ''">
        <xsl:call-template name="top_sep_bar">
            <xsl:with-param name="text" select="$sep_bar_std_text"/>
            <xsl:with-param name="show_info" select="$show_search_info"/>
            <xsl:with-param name="time" select="TM"/>
        </xsl:call-template>
    </xsl:if>

    <!-- *** Handle results (if any) *** -->
    <xsl:choose>
        <xsl:when test="RES or GM or Spelling or Synonyms or CT or /GSP/ENTOBRESULTS">
            <xsl:call-template name="results">
                <xsl:with-param name="query" select="Q"/>
                <xsl:with-param name="time" select="TM"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:when test="Q=''">
        </xsl:when>
        <xsl:otherwise>
            <xsl:call-template name="no_RES">
                <xsl:with-param name="query" select="Q"/>
            </xsl:call-template>
        </xsl:otherwise>
    </xsl:choose>

    <!-- *** Google footer *** -->
    <xsl:call-template name="copyright"/>

    <!-- *** Customer's own result page footer *** -->
    <xsl:call-template name="my_page_footer"/>

    <!-- *** HTML footer *** -->
    <xsl:text disable-output-escaping="yes">
        &lt;/body&gt;
    </xsl:text>
    <xsl:call-template name="my_page_endHTML"/>

</xsl:template>


<!-- **********************************************************************
  Collection menu beside the search box
  ********************************************************************** -->
  <xsl:template name="collection_menu">
    <xsl:if test="$search_collections_xslt != ''">
        <!--<td valign="middle">-->
        <div align="center">

            <select name="site">
                <xsl:choose>
                    <xsl:when test="PARAM[(@name='site') and (@value='default_collection')]">
                        <option value="default_collection" selected="selected">default_collection</option>
                    </xsl:when>
                    <xsl:otherwise>
                        <option value="default_collection">default_collection</option>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                    <xsl:when test="PARAM[(@name='site') and (@value='cms_collection')]">
                        <option value="cms_collection" selected="selected">cms_collection</option>
                    </xsl:when>
                    <xsl:otherwise>
                        <option value="cms_collection">cms_collection</option>
                    </xsl:otherwise>
                </xsl:choose>
            </select>

            <!--</td>-->
        </div>
    </xsl:if>
</xsl:template>

<!-- **********************************************************************
  Search box input form (Types: std_top, std_bottom, home, swr)
  ********************************************************************** -->
  <xsl:template name="search_box">
    <xsl:param name="type"/>
    <div id="top_search_field">
        <form name="gs" method="get" action="search" id="search">

            <xsl:if test="($egds_show_search_tabs != '0') and (($type = 'home') or ($type = 'std_top'))">

            </xsl:if>
            <xsl:if test="($type = 'swr')">

                There were about <strong><xsl:value-of select="RES/M"/></strong> results for <strong><xsl:value-of select="$space_normalized_query"/></strong>.
                <br/>
                Use the search box below to search within these results.

            </xsl:if>

            <xsl:choose>
                <xsl:when test="($type = 'swr')">
                    <input id="search_box_top_input" type="text" name="as_q" size="{$search_box_size}"  value=""/>
                    <input type="hidden" name="q" value="{$qval}"/>
                </xsl:when>
                <xsl:otherwise>
                    <input id="search_box_top_input" type="text" name="q" size="{$search_box_size}"  value="{$space_normalized_query}"/>
                </xsl:otherwise>
            </xsl:choose>

            <xsl:call-template name="collection_menu"/>

            <xsl:call-template name="nbsp"/>
            <xsl:choose>
                <xsl:when test="$choose_search_button = 'image'">
                    <input type="image" name="btnG" src="{$search_button_image_url}" valign="bottom" width="60" height="26" border="0" value="{$search_button_text}"/>
                </xsl:when>
                <xsl:otherwise>
                    <input id="search_box_top_submit" type="submit" name="btnG" value="{$search_button_text}"/>
                </xsl:otherwise>
            </xsl:choose>

            <div id="advanced_search_box">
                <!-- <font size="-2"> -->
                <xsl:if test="(/GSP/RES/M > 0) and ($show_swr_link != '0') and ($type = 'std_bottom')">
                    <xsl:call-template name="nbsp"/>
                    <xsl:call-template name="nbsp"/>
                    <a href="{$swr_search_url}">
                        <xsl:value-of select="$swr_search_anchor_text"/>
                    </a>
                    <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                </xsl:if>
                <xsl:if test="$show_result_page_adv_link != '0'">
                    <xsl:call-template name="nbsp"/>
                    <xsl:call-template name="nbsp"/>
                    <a href="{$adv_search_url}">
                        <xsl:value-of select="$adv_search_anchor_text"/>
                    </a>
                    <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                </xsl:if>
                <xsl:if test="$show_alerts_link != '0'">
                    <xsl:call-template name="nbsp"/>
                    <xsl:call-template name="nbsp"/>
                    <a href="{$alerts_url}">
                        <xsl:value-of select="$alerts_anchor_text"/>
                    </a>
                    <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                </xsl:if>
                <xsl:if test="$show_result_page_help_link != '0'">
                    <xsl:call-template name="nbsp"/>
                    <xsl:call-template name="nbsp"/>
                    <a href="{$help_url}">
                        <xsl:value-of select="$search_help_anchor_text"/>
                    </a>
                </xsl:if>
                <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
                <!-- </font> -->
            </div>

            <xsl:if test="$show_secure_radio != '0'">
                <tr>
                    <td colspan="2">
                        <!-- <font size="-1"> -->Search:
                        <xsl:choose>
                            <xsl:when test="$access='p'">
                                <label><input type="radio" name="access" value="p" checked="checked" />public content</label>
                            </xsl:when>
                            <xsl:otherwise>
                                <label><input type="radio" name="access" value="p"/>public content</label>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="$access='a'">
                                <label><input type="radio" name="access" value="a" checked="checked" />public and secure content</label>
                            </xsl:when>
                            <xsl:otherwise>
                                <label><input type="radio" name="access" value="a"/>public and secure content</label>
                            </xsl:otherwise>
                        </xsl:choose>
                        <!-- </font> -->
                    </td>
                </tr>
            </xsl:if>
            <xsl:call-template name="form_params"/>
        </form>
    </div>

</xsl:template>


<!-- **********************************************************************
  Bottom search box (do not customized)
  ********************************************************************** -->
  <xsl:template name="bottom_search_box">
    <br clear="all"/>
    <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
    <!-- <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="{$sep_bar_border_color}"><img width="1" height="1" alt=""/></td>
      </tr>
  </table> -->
  <div id="bottom_search_field">

   <xsl:call-template name="search_box">
      <xsl:with-param name="type" select="'std_bottom'"/>
  </xsl:call-template>

</div>
</xsl:template>


<!-- **********************************************************************
 Sort-by criteria: sort by date/relevance
 ********************************************************************** -->
 <xsl:template name="sort_by">
    <xsl:variable name="sort_by_url"><xsl:for-each
        select="/GSP/PARAM[(@name != 'sort') and
        (@name != 'start') and
        (@name != 'epoch' or $is_test_search != '') and
        not(starts-with(@name, 'metabased_'))]">
        <xsl:value-of select="@name"/><xsl:text>=</xsl:text>
        <xsl:value-of select="@original_value"/>
        <xsl:if test="position() != last()">
            <xsl:text disable-output-escaping="yes">&amp;</xsl:text>
        </xsl:if>
    </xsl:for-each>
</xsl:variable>

<xsl:variable name="sort_by_relevance_url">
    <xsl:value-of select="$sort_by_url"
        />&amp;sort=date%3AD%3AL%3Ad1</xsl:variable>

        <xsl:variable name="sort_by_date_url">
            <xsl:value-of select="$sort_by_url"
                />&amp;sort=date%3AD%3AS%3Ad1</xsl:variable>
                <div class="floatLeft">
                    <xsl:choose>
                        <xsl:when test="/GSP/PARAM[@name = 'sort' and starts-with(@value,'date:D:S')]">
                            <!-- <font color="{$global_text_color}"> -->
                            <xsl:text>Sort by date / </xsl:text>
                            <!-- </font> -->
                            <a href="search?{$sort_by_relevance_url}">Sort by relevance</a>
                        </xsl:when>
                        <xsl:when test="/GSP/PARAM[@name = 'sort' and starts-with(@value,'date:A:S')]">
                            <!-- <font color="{$global_text_color}"> -->
                            <xsl:text>Sort by date / </xsl:text>
                            <!-- </font> -->
                            <a href="search?{$sort_by_relevance_url}">Sort by relevance</a>
                        </xsl:when>
                        <xsl:otherwise>
                            <a href="search?{$sort_by_date_url}">Sort by date</a>
                            <!-- <font color="{$global_text_color}"> -->
                            <xsl:text> / Sort by relevance</xsl:text>
                            <!-- </font> -->
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </xsl:template>

<!-- **********************************************************************
 Output all results
 ********************************************************************** -->

 <xsl:template name="results">
    <xsl:param name="query"/>
    <xsl:param name="time"/>
    <div>
        <div id="search-container" class="col-all col-sm-8">

            <!-- *** Add top navigation/sort-by bar *** -->
            <xsl:if test="($show_top_navigation != '0') or ($show_sort_by != '0')">
                <xsl:if test="RES">
                    <xsl:text disable-output-escaping="yes">
                        &lt;div id="sorting_pagination" class="result" align="left"&gt;
                    </xsl:text>
                    <xsl:if test="$show_top_navigation != '0'"><xsl:text disable-output-escaping="yes"></xsl:text><!--<br /> added to create a same feel that table has-->
                    <xsl:call-template name="google_navigation">
                        <xsl:with-param name="prev" select="RES/NB/PU"/>
                        <xsl:with-param name="next" select="RES/NB/NU"/>
                        <xsl:with-param name="view_begin" select="RES/@SN"/>
                        <xsl:with-param name="view_end" select="RES/@EN"/>
                        <xsl:with-param name="guess" select="RES/M"/>
                        <xsl:with-param name="navigation_style" select="'top'"/>
                    </xsl:call-template>
                </xsl:if>
                <xsl:if test="$show_sort_by != '0'">
                    <xsl:text disable-output-escaping="yes">

                    </xsl:text>
                    <xsl:call-template name="sort_by"/>

                    <xsl:text disable-output-escaping="yes">
                       &lt;/p&gt;
                   </xsl:text>
               </xsl:if>
               <xsl:text disable-output-escaping="yes">
                &lt;/div&gt;
            </xsl:text>
        </xsl:if>
    </xsl:if>

    <!-- *** Handle OneBox results, if any ***-->
    <xsl:if test="$show_onebox != '0'">
        <xsl:if test="/GSP/ENTOBRESULTS">
            <xsl:call-template name="onebox"/>
        </xsl:if>
    </xsl:if>

    <!-- *** Handle spelling suggestions, if any *** -->
    <xsl:if test="$show_spelling != '0'">
        <xsl:call-template name="spelling"/>
    </xsl:if>

    <!-- *** Handle synonyms, if any *** -->
    <xsl:if test="$show_synonyms != '0'">
        <xsl:call-template name="synonyms"/>
    </xsl:if>

    <!-- *** Output Google Desktop results (if enabled and any available) *** -->
    <xsl:if test="$egds_show_desktop_results != '0'">
        <xsl:call-template name="desktop_results"/>
    </xsl:if>

    <!-- *** Output results details *** -->
    <xsl:text disable-output-escaping="yes">
        &lt;div class="keymatch_div"&gt;
    </xsl:text>
    <!-- for keymatch results -->
    <xsl:if test="$show_keymatch != '0'">
        <xsl:apply-templates select="/GSP/GM"/>
    </xsl:if>
    <xsl:text disable-output-escaping="yes">
        &lt;/div&gt;
        <!-- &lt;/div&gt; -->&lt;!-- end keymatch div --&gt;
    </xsl:text>
    <!-- for real results -->
    <xsl:apply-templates select="RES/R">
        <xsl:with-param name="query" select="$query"/>
    </xsl:apply-templates>

    <!-- *** Filter note (if needed) *** -->
    <xsl:if test="(RES/FI) and (not(RES/NB/NU))">
        <xsl:text disable-output-escaping="yes">
            &lt;p&gt;
            &lt;i&gt;
        </xsl:text>
        In order to show you the most relevant results,    we have omitted some entries very similar to the <xsl:value-of select="RES/@EN"/> already    displayed.<xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>If you like, you can <a style="text-decoration:underline" href="{$filter_url}0">    repeat the search with the omitted results included</a>.
        <xsl:text disable-output-escaping="yes">
            &lt;/i&gt;
            &lt;/p&gt;
        </xsl:text>
    </xsl:if>

    <!-- *** Add bottom navigation *** -->
    <xsl:variable name="nav_style">
        <xsl:choose>
            <xsl:when test="($access='s') or ($access='a')">simple</xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$choose_bottom_navigation"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <xsl:call-template name="google_navigation">
        <xsl:with-param name="prev" select="RES/NB/PU"/>
        <xsl:with-param name="next" select="RES/NB/NU"/>
        <xsl:with-param name="view_begin" select="RES/@SN"/>
        <xsl:with-param name="view_end" select="RES/@EN"/>
        <xsl:with-param name="guess" select="RES/M"/>
        <xsl:with-param name="navigation_style" select="$nav_style"/>
    </xsl:call-template>

</div>
<xsl:text disable-output-escaping="yes">
    &lt;/div&gt;
</xsl:text>
<div id="sidebar-container" class="hidden-xs col-sm-4">
    <p id="sidebar-top">Alternative Search Options</p>
    <div id="gray-style"></div>
    <div id="gray-menu">

        <p></p>
        <!--Search Box-->
        <div class="search">
            <div class="sidebar-title"><img alt="image of magnifying glass" height="27" src="http://www.byui.edu/Images/Internal_Use/system/search_icon.gif" width="27" /><span>Search Google</span></div>

            <form action="http://www.google.com/search?" target="_blank" name="searchform" id="search_form" method="get">
                <!--<input type="hidden" name="sitesearch" value="?sitesearch=www.byui.edu&as_q={$space_normalized_query}&safe=active" />-->
                <input class="header_search_box" id="input_1" name="q" type="text" value="byui {$space_normalized_query}" /><input type="submit" value="Search" /><!--<input name="site" type="hidden" value="default_collection" /><input name="client" type="hidden" value="current_policy_frontend" /><input name="output" type="hidden" value="xml_no_dtd" /><input name="proxystylesheet" type="hidden" value="current_policy_frontend" /><input name="proxyreload" type="hidden" value="0" />--></form>
            </div>

            <hr />

            <div class = "search">
                <div class="sidebar-title"><img alt="image of magnifying glass" height="27" src="http://www.byui.edu/Images/Internal_Use/system/search_icon.gif" width="27" /><span>Search McKay Library</span></div>

                <form action="http://chipri20lsna.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?" target="_blank" name="searchform" id="search_form" method="get">
                    <input class="header_search_box" id="input_1" name="vl(freeText0)" type="text" value="{$space_normalized_query}" />
                    <input class="header_search_box" id="input_1" name="fn" type="hidden" value="search" />
                    <input class="header_search_box" id="input_1" name="vid" type="hidden" value="BYUID" />
                    <input type="submit" value="Search" />
                </form>

            </div>
            <hr />

            <!-- Kaltura Search Integration -->
            <div class = "search">
                <div class="sidebar-title"><img alt="image of magnifying glass" height="27" src="http://www.byui.edu/Images/Internal_Use/system/search_icon.gif" width="27" /><span>Search Videos</span></div>
                <script type="text/javascript">
                    function kalturaSearch() {
                    var urlString="https://video.byui.edu/search/";
                    var toAppend = document.getElementById('menuSearch_search_for').value;
                    urlString += toAppend;
                    window.open(urlString);
                    }
                </script>
                <form id="menuSearch search_form" action="javascript:kalturaSearch()" target="_blank" name="searchform">
                   <input type="text" name="searchkeyword" id="menuSearch_search_for" value="{$space_normalized_query}" class="header_search_box"/>
                   <input type="submit" value="Search" />
               </form>
           </div>
           <hr />
           <!-- Sharepoint Search Integration -->
           <div class = "search">
              <div class="sidebar-title"><img alt="image of magnifying glass" height="27" src="http://www.byui.edu/Images/Internal_Use/system/search_icon.gif" width="27" /><span>Search Sharepoint</span></div>
              <form id="menuSearch search_form" action="https://inet.byui.edu/_layouts/15/osssearchresults.aspx?u=https%3A%2F%2Finet%2Ebyui%2Eedu" target="_blank" name="searchform">
                 <input type="text" name="k" value="{$space_normalized_query}" class="header_search_box"/>
                 <input type="submit" value="Search" />
             </form>
         </div>
         <hr />
         <!--Recommended Links-->
         <div id="recommended_links" class="sidebar-title">
            <div><img alt="computer mouse pointer" height="27" src="http://www.byui.edu/Images/Internal_Use/system/explore_icon.gif" width="27" /><span>Explore</span></div>
            <ul>
               <li><a href="http://www.byui.edu/student-records/site-index" target="_blank" title="Site index of major pages of the university">Site Index</a></li>
               <li><a href="http://www.byui.edu/directories/colleges-and-departments" target="_blank" title="Listing of all colleges and departments">Colleges &amp; Departments</a></li>
               <li><a href="http://www.byui.edu/directories/administrative-offices" target="_blank">Administrative Offices</a></li>
               <li><a href="http://web.byui.edu/directory/employees/" target="_blank">Employee Directory</a></li>
               <li><a href="http://web.byui.edu/directory/students/" target="_blank">Student Directroy</a></li>

           </ul>
       </div>
       <hr />
       <!--AskBYUI-->
       <div id="askbyui" class="sidebar-title">
          <div><img alt="two quote bubbles" height="27" src="http://www.byui.edu/Images/Internal_Use/system/chat_icon.gif" width="27"  target="_blank"/><span><em>Ask</em>BYUI</span></div>

          <p style="padding-top: 5px;">
             <a href="http://www.byui.edu/ask/live-chat" target="_blank" title="Launches a live chat session with the campus operator."><em>Ask</em>BYUI (Live Chat)</a>
         </p>

         <div>
             <b>Mon - Fri:</b> 8:00am to 7:00pm
             <br/>
             <b>Sat - Sun:</b> Closed
             <br/>
             <b>Other:</b> Leave a message and they will contact you later.</div><br/>

             <p><a href="https://server.iad.liveperson.net/hc/1132447/?cmd=file&amp;file=visitorWantsToChat&amp;site=1132447&amp;byhref=1&amp;SESSIONVAR!skill=Help%20Desk"  target="_blank">Help Desk (Live Chat)</a></p>
             <div>For technical questions call the Help Desk at 208.496.9000.
                <br />
                <b>Mon - Fri:</b> 7:00am – 9:00pm
                <br/>
                <b>Sat:</b> 9am - 5pm
                <br />
                <b>Sun:</b> Closed
                <br/>
                <b>Other:</b> Leave a message and they will contact you later.
            </div>
        </div>


        <!--Help Text-->

    </div>
</div>
</div>

<!-- *** Bottom search box *** -->
<xsl:if test="$show_bottom_search_box != '0'">
   <xsl:call-template name="bottom_search_box"/>
</xsl:if>

</xsl:template>



<!-- **********************************************************************
 Stopwords suggestions in result page (do not customize)
 ********************************************************************** -->
 <xsl:template name="stopwords">
    <xsl:variable name="stopwords_suggestions1">
        <xsl:call-template name="replace_string">
            <xsl:with-param name="find" select="'/help/basics.html#stopwords'"/>
            <xsl:with-param name="replace" select="'user_help.html#stop'"/>
            <xsl:with-param name="string" select="/GSP/CT"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:variable name="stopwords_suggestions">
        <xsl:call-template name="replace_string">
            <xsl:with-param name="find" select="'/help/basics.html'"/>
            <xsl:with-param name="replace" select="'user_help.html'"/>
            <xsl:with-param name="string" select="$stopwords_suggestions1"/>
        </xsl:call-template>
    </xsl:variable>

    <xsl:if test="/GSP/CT">
        <!-- <font size="-1" color="gray"> -->
        <xsl:value-of disable-output-escaping="yes"
            select="$stopwords_suggestions"/>
            <!-- </font> -->
        </xsl:if>
    </xsl:template>


<!-- **********************************************************************
 Spelling suggestions in result page (do not customize)
 ********************************************************************** -->
 <xsl:template name="spelling">
    <xsl:if test="/GSP/Spelling/Suggestion">
        <p><!--<span class="p">--><!-- <font color="{$spelling_text_color}"> -->
            <xsl:value-of select="$spelling_text"/>
            <xsl:call-template name="nbsp"/>
            <!-- </font> --><!--</span> -->
            <a href="search?q={/GSP/Spelling/Suggestion[1]/@qe}&amp;spell=1&amp;{$base_url}">
                <xsl:value-of disable-output-escaping="yes"
                    select="/GSP/Spelling/Suggestion[1]"/>
                </a>
            </p>
        </xsl:if>
    </xsl:template>


<!-- **********************************************************************
 Synonym suggestions in result page (do not customize)
 ********************************************************************** -->
 <xsl:template name="synonyms">
    <xsl:if test="/GSP/Synonyms/OneSynonym">
        <p><!--<span class="p">--><!-- <font color="{$synonyms_text_color}"> -->
            <xsl:value-of select="$synonyms_text"/>
            <xsl:call-template name="nbsp"/>
            <!--  </font> --><!--</span>-->
            <xsl:for-each select="/GSP/Synonyms/OneSynonym">
                <a href="search?q={@q}&amp;{$synonym_url}">
                    <xsl:value-of disable-output-escaping="yes" select="."/>
                </a><xsl:text> </xsl:text>
            </xsl:for-each>
        </p>
    </xsl:if>
</xsl:template>


<!-- **********************************************************************
 Truncation functions (do not customize)
 ********************************************************************** -->
 <xsl:template name="truncate_url">
    <xsl:param name="t_url"/>

    <xsl:choose>
        <xsl:when test="string-length($t_url) &lt; $truncate_result_url_length">
            <xsl:value-of select="$t_url"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:variable name="first" select="substring-before($t_url, '/')"/>
            <xsl:variable name="last">
                <xsl:call-template name="truncate_find_last_token">
                    <xsl:with-param name="t_url" select="$t_url"/>
                </xsl:call-template>
            </xsl:variable>
            <xsl:variable name="path_limit" select="$truncate_result_url_length - (string-length($first) + string-length($last) + 1)"/>

            <xsl:choose>
                <xsl:when test="$path_limit &lt;= 0">
                    <xsl:value-of select="concat(substring($t_url, 1, $truncate_result_url_length), '...')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:variable name="chopped_path">
                        <xsl:call-template name="truncate_chop_path">
                            <xsl:with-param name="path" select="substring($t_url, string-length($first) + 2, string-length($t_url) - (string-length($first) + string-length($last) + 1))"/>
                            <xsl:with-param name="path_limit" select="$path_limit"/>
                        </xsl:call-template>
                    </xsl:variable>
                    <xsl:value-of select="concat($first, '/.../', $chopped_path, $last)"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:otherwise>
    </xsl:choose>

</xsl:template>

<xsl:template name="truncate_find_last_token">
    <xsl:param name="t_url"/>

    <xsl:choose>
        <xsl:when test="contains($t_url, '/')">
            <xsl:call-template name="truncate_find_last_token">
                <xsl:with-param name="t_url" select="substring-after($t_url, '/')"/>
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$t_url"/>
        </xsl:otherwise>
    </xsl:choose>

</xsl:template>

<xsl:template name="truncate_chop_path">
    <xsl:param name="path"/>
    <xsl:param name="path_limit"/>

    <xsl:choose>
        <xsl:when test="string-length($path) &lt;= $path_limit">
            <xsl:value-of select="$path"/>
        </xsl:when>
        <xsl:otherwise>
            <xsl:call-template name="truncate_chop_path">
                <xsl:with-param name="path" select="substring-after($path, '/')"/>
                <xsl:with-param name="path_limit" select="$path_limit"/>
            </xsl:call-template>
        </xsl:otherwise>
    </xsl:choose>

</xsl:template>


<!-- **********************************************************************
  A single result (do not customize)
  ********************************************************************** -->
  <xsl:template match="R">
    <xsl:param name="query"/>



    <xsl:variable name="display_url_tmp" select="substring-after(UD, '://')"/>
    <xsl:variable name="display_url">
        <xsl:choose>
            <xsl:when test="$display_url_tmp">
                <xsl:value-of select="$display_url_tmp"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="substring-after(U, '://')"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    <xsl:variable name="escaped_url" select="substring-after(UE, '://')"/>
    <xsl:variable name="protocol" select="substring-before(U, '://')"/>
    <xsl:variable name="full_url" select="UE"/>
    <xsl:variable name="crowded_url" select="HN/@U"/>
    <xsl:variable name="crowded_display_url" select="HN"/>
    <xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'"/>
    <xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>

    <xsl:variable name="temp_url" select="substring-after(U, '://')"/>
    <xsl:variable name="url_indexed" select="not(starts-with($temp_url, 'noindex!/'))"/>
    <xsl:variable name="stripped_url">
        <xsl:choose>
            <xsl:when test="$truncate_result_urls != '0'">
                <xsl:call-template name="truncate_url">
                    <xsl:with-param name="t_url" select="$display_url"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$display_url"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>


    <!-- *** Indent as required (only supports 2 levels) *** -->
    <xsl:if test="@L='2'">
        <xsl:text disable-output-escaping="yes">&lt;blockquote&gt;</xsl:text>
    </xsl:if>

    <!-- *** Result Header *** -->
    <xsl:text disable-output-escaping="yes">&lt;h2&gt;</xsl:text>

    <!-- *** Result Title (including PDF tag and hyperlink) *** -->
    <xsl:if test="$show_res_title != '0'">
        <!-- Remove the file type from the front of the search result -->
        <!--
        <xsl:text disable-output-escaping="yes">&lt;font size="-2"&gt;&lt;strong&gt;</xsl:text>
        <xsl:choose>
            <xsl:when test="@MIME='text/html' or @MIME='' or not(@MIME)"></xsl:when>
            <xsl:when test="@MIME='text/plain'">[TEXT] </xsl:when>
            <xsl:when test="@MIME='application/rtf'">[RTF] </xsl:when>
            <xsl:when test="@MIME='application/pdf'">[PDF] </xsl:when>
            <xsl:when test="@MIME='application/postscript'">[PS] </xsl:when>
            <xsl:when test="@MIME='application/vnd.ms-powerpoint'">[MS POWERPOINT] </xsl:when>
            <xsl:when test="@MIME='application/vnd.ms-excel'">[MS EXCEL] </xsl:when>
            <xsl:when test="@MIME='application/msword'">[MS WORD] </xsl:when>
            <xsl:otherwise>
                <xsl:variable name="extension">
                    <xsl:call-template name="last_substring_after">
                        <xsl:with-param name="string" select="substring-after(
                            substring-after(U,'://'),
                            '/')"/>
                            <xsl:with-param name="separator" select="'.'"/>
                            <xsl:with-param name="fallback" select="'UNKNOWN'"/>
                        </xsl:call-template>
                    </xsl:variable>
                    [<xsl:value-of select="translate($extension,$lower,$upper)"/>]
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes">&lt;/strong&gt;&lt;/font&gt;</xsl:text>
        -->

        <xsl:if test="$url_indexed">

            <xsl:text disable-output-escaping='yes'>&lt;a href="</xsl:text>

            <xsl:choose>
                <xsl:when test="starts-with(U, $db_url_protocol)">
                    <xsl:value-of disable-output-escaping='yes'
                        select="concat('db/', substring-after(U,'://'))"/>
                    </xsl:when>
                    <!-- *** URI for smb or NFS must be escaped because it appears in the URI query *** -->
                    <xsl:when test="$protocol='nfs' or $protocol='smb'">
                        <xsl:value-of disable-output-escaping='yes'
                            select="concat($protocol,'/',
                            substring-after(U,'://'))"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of disable-output-escaping='yes' select="U"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text disable-output-escaping='yes'>"&gt;</xsl:text>
                </xsl:if>
                <!-- <span class="l">-->
                <xsl:choose>
                    <xsl:when test="T">
                        <xsl:call-template name="reformat_keyword">
                            <xsl:with-param name="orig_string" select="T"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:otherwise><xsl:value-of select="$stripped_url"/></xsl:otherwise>
                </xsl:choose>
                <!--</span>-->
                <xsl:if test="$url_indexed">
                    <xsl:text disable-output-escaping='yes'>&lt;/a&gt;</xsl:text>
                    <!--Insert File type at the end of the search result-->
                    <xsl:text disable-output-escaping="yes">&lt;strong class=&quot;docType&quot;&gt;</xsl:text>
                    <xsl:choose>
                        <xsl:when test="@MIME='text/html' or @MIME='' or not(@MIME)"></xsl:when>
                        <xsl:when test="@MIME='text/plain'"> [TEXT] </xsl:when>
                        <xsl:when test="@MIME='application/rtf'"> [RTF] </xsl:when>
                        <xsl:when test="@MIME='application/pdf'"> [PDF] </xsl:when>
                        <xsl:when test="@MIME='application/postscript'"> [PS] </xsl:when>
                        <xsl:when test="@MIME='application/vnd.ms-powerpoint'"> [MS POWERPOINT] </xsl:when>
                        <xsl:when test="@MIME='application/vnd.ms-excel'"> [MS EXCEL] </xsl:when>
                        <xsl:when test="@MIME='application/msword'"> [MS WORD] </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable name="extension">
                                <xsl:call-template name="last_substring_after">
                                    <xsl:with-param name="string" select="substring-after(
                                        substring-after(U,'://'),
                                        '/')"/>
                                        <xsl:with-param name="separator" select="'.'"/>
                                        <xsl:with-param name="fallback" select="'UNKNOWN'"/>
                                    </xsl:call-template>
                                </xsl:variable>
                                [<xsl:value-of select="translate($extension,$lower,$upper)"/>]
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text disable-output-escaping="yes">&lt;/strong&gt;</xsl:text>
                        <xsl:text disable-output-escaping='yes'>
                            &lt;/h2&gt;
                        </xsl:text>
                                     <!-- Display Source <a> tag -->


             <xsl:if test="$url_indexed">

                 <xsl:text disable-output-escaping='yes'>&lt;a class="linkUrl" href="</xsl:text>

                 <xsl:choose>
                    <xsl:when test="starts-with(U, $db_url_protocol)">
                       <xsl:value-of disable-output-escaping='yes'
                          select="concat('db/', substring-after(U,'://'))"/>
                      </xsl:when>
                      <!-- *** URI for smb or NFS must be escaped because it appears in the URI query *** -->
                      <xsl:when test="$protocol='nfs' or $protocol='smb'">
                          <xsl:value-of disable-output-escaping='yes'
                             select="concat($protocol,'/',
                             substring-after(U,'://'))"/>
                         </xsl:when>
                         <xsl:otherwise>
                             <xsl:value-of disable-output-escaping='yes' select="U"/>
                         </xsl:otherwise>
                     </xsl:choose>
                     <xsl:text disable-output-escaping='yes'>"&gt;</xsl:text>
                 </xsl:if>
                 <!-- Display Source <a> tag END -->
                 <!-- Display Source info -->

                 <!-- <font color="{$res_url_color}" size="{$res_url_size}"> -->
                 <xsl:choose>
                  <xsl:when test="not($url_indexed)">
                     <xsl:if test="($show_res_size!='0') or
                        ($show_res_date!='0') or
                        ($show_res_cache!='0')">
                        <xsl:text>Not Indexed:</xsl:text>
                        <xsl:value-of select="$stripped_url"/>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>
                 <xsl:if test="$show_res_url != '0'">
                    <xsl:value-of select="$stripped_url"/>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
        <!-- </font> -->

        <!-- *** Miscellaneous (- size - date - cache) *** -->
        <xsl:if test="$url_indexed">
           <xsl:apply-templates select="HAS/C">
              <xsl:with-param name="stripped_url" select="$stripped_url"/>
              <xsl:with-param name="escaped_url" select="$escaped_url"/>
              <xsl:with-param name="query" select="$query"/>
              <xsl:with-param name="mime" select="@MIME"/>
              <xsl:with-param name="date" select="FS[@NAME='date']/@VALUE"/>
          </xsl:apply-templates>
      </xsl:if>

      <!-- Display Source info END -->
      <!-- Display Source </a> tag -->

      <xsl:if test="$url_indexed">
       <xsl:text disable-output-escaping='yes'>&lt;/a&gt;</xsl:text>
   </xsl:if>

   <!-- Display Source </a> tag END-->
                        <xsl:text disable-output-escaping='yes'>
                            &lt;p class="g"&gt;
                        </xsl:text>
                    </xsl:if>
                </xsl:if>
                <xsl:if test="$show_res_snippet != '0'">
                   <xsl:call-template name="reformat_keyword">
                      <xsl:with-param name="orig_string" select="S"/>
                  </xsl:call-template>
              </xsl:if>

              <!-- *** Meta tags *** -->
              <xsl:if test="$show_meta_tags != '0'">
                 <xsl:apply-templates select="MT"/>
             </xsl:if>

             <!-- *** URL *** -->
             <xsl:text disable-output-escaping="yes">
                 &lt;br /&gt;
             </xsl:text>


   <!-- *** Link to more links from this site *** -->
   <xsl:if test="HN">
       <xsl:text disable-output-escaping="yes">&lt;br /&gt;</xsl:text>
       [
       <a class="f" href="search?as_sitesearch={$crowded_url}&amp;{
          $search_url}">More results from <xsl:value-of select="$crowded_display_url"/></a>
          ]



          <!-- *** Link to aggregated results from database source *** -->
          <xsl:if test="starts-with($crowded_url, $db_url_protocol)">
             [
             <a class="f" href="dbaggr?sitesearch={$crowded_url}&amp;{
                $search_url}">View all data</a>
                ]
            </xsl:if>
        </xsl:if>


        <!-- *** Result Footer *** -->
     <!-- </td>
    </tr>
</table>-->
<xsl:text disable-output-escaping="yes">

 &lt;/p&gt;
</xsl:text>

<!-- *** End indenting as required (only supports 2 levels) *** -->
<xsl:if test="@L='2'">
 <xsl:text disable-output-escaping="yes">&lt;/blockquote&gt;</xsl:text>
</xsl:if>
<!--<xsl:text disable-output-escaping="yes">&lt;/p&gt;</xsl:text>-->
</xsl:template>

<!-- **********************************************************************
  Meta tag values within a result (do not customize)
  ********************************************************************** -->
  <xsl:template match="MT">
    <xsl:text disable-output-escaping="yes">
        &lt;br /&gt;
    </xsl:text>
    <!--<span class="f">--><xsl:value-of select="@N"/>: <!--</span>--><xsl:value-of select="@V"/>
</xsl:template>

<!-- **********************************************************************
  A single keymatch result (do not customize)
  ********************************************************************** -->

  <xsl:template match="GM">
    <p>
        <table id="keymatch_info" cellpadding="10" cellspacing="0" border="0" height="40" width="100%" style="float: left;">
            <tr>
                <!-- <td class="keymatch_icon"><img src="http://www.byui.edu/prebuilt/search/images/thumbs-up.png" /><br/><br/></td> -->
                <td nowrap="0" bgcolor="{$keymatch_bg_color}" height="40">
                    <a href="{GL}" class="keymatch_word">
                        <xsl:value-of select="GD"/>
                    </a>
                    <br/>
                    <a href="{GL}">
                        <!-- <font size="-1" color="{$res_url_color}"> -->
                        <span class="a">
                            <xsl:value-of select="GL"/>
                        </span>
                        <!-- </font> -->
                    </a>

                </td>
                <td class="best-match" bgcolor="{$keymatch_bg_color}" height="40"
                    align="right" valign="top">
                    <b>
                        <!-- <font size="-1" color="{$keymatch_text_color}"> -->
                        <xsl:value-of select="$keymatch_text"/>
                        <!-- </font> -->
                    </b>
                    <br/><br/>
                </td>
            </tr>
        </table>
    </p>
</xsl:template>


<!-- **********************************************************************
  Variables for reformatting keyword-match display (do not customize)
  ********************************************************************** -->
  <xsl:variable name="keyword_orig_start" select="'&lt;b&gt;'"/>
  <xsl:variable name="keyword_orig_end" select="'&lt;/b&gt;'"/>

  <xsl:variable name="keyword_reformat_start">
    <xsl:if test="$res_keyword_format">
        <xsl:text>&lt;</xsl:text>
        <xsl:value-of select="$res_keyword_format"/>
        <xsl:text>&gt;</xsl:text>
    </xsl:if>
   <!--  <xsl:if test="($res_keyword_size) or ($res_keyword_color)">
        <xsl:text>&lt;font</xsl:text>
        <xsl:if test="$res_keyword_size">
            <xsl:text> size="</xsl:text>
            <xsl:value-of select="$res_keyword_size"/>
            <xsl:text>"</xsl:text>
        </xsl:if>
        <xsl:if test="$res_keyword_color">
            <xsl:text> color="</xsl:text>
            <xsl:value-of select="$res_keyword_color"/>
            <xsl:text>"</xsl:text>
        </xsl:if>
        <xsl:text>&gt;</xsl:text> 
    </xsl:if>-->
</xsl:variable>

<xsl:variable name="keyword_reformat_end">
   <!--  <xsl:if test="($res_keyword_size) or ($res_keyword_color)">
        <xsl:text>&lt;/font&gt;</xsl:text>
    </xsl:if> -->
    <xsl:if test="$res_keyword_format">
        <xsl:text>&lt;/</xsl:text>
        <xsl:value-of select="$res_keyword_format"/>
        <xsl:text>&gt;</xsl:text>
    </xsl:if>
</xsl:variable>

<!-- **********************************************************************
  Reformat the keyword match display in a title/snippet string
     (do not customize)
     ********************************************************************** -->
     <xsl:template name="reformat_keyword">
        <xsl:param name="orig_string"/>

        <xsl:variable name="reformatted_1">
            <xsl:call-template name="replace_string">
                <xsl:with-param name="find" select="$keyword_orig_start"/>
                <xsl:with-param name="replace" select="$keyword_reformat_start"/>
                <xsl:with-param name="string" select="$orig_string"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="reformatted_2">
            <xsl:call-template name="replace_string">
                <xsl:with-param name="find" select="$keyword_orig_end"/>
                <xsl:with-param name="replace" select="$keyword_reformat_end"/>
                <xsl:with-param name="string" select="$reformatted_1"/>
            </xsl:call-template>
        </xsl:variable>

        <xsl:variable name="reformatted_3">
            <xsl:call-template name="replace_string">
                <xsl:with-param name="find" select="'&lt;br&gt;'"/>
                <xsl:with-param name="replace" select="'&lt;br /&gt;'"/>
                <xsl:with-param name="string" select="$reformatted_2"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:value-of disable-output-escaping='yes' select="$reformatted_3"/>

    </xsl:template>


<!-- **********************************************************************
  Helper templates for generating a result item (do not customize)
  ********************************************************************** -->

  <!-- *** Miscellaneous: - size - date - cache *** -->
  <xsl:template match="C">
    <xsl:param name="stripped_url"/>
    <xsl:param name="escaped_url"/>
    <xsl:param name="query"/>
    <xsl:param name="mime"/>
    <xsl:param name="date"/>

    <xsl:variable name="docid"><xsl:value-of select="@CID"/></xsl:variable>

    <xsl:if test="$show_res_size != '0'">
        <xsl:if test="not(@SZ='')">
            <!-- <font color="{$res_url_color}" size="{$res_url_size}"> -->
            <xsl:text> - </xsl:text>
            <xsl:value-of select="@SZ"/>
            <!-- </font> -->
        </xsl:if>
    </xsl:if>

    <xsl:if test="$show_res_date != '0'">
        <xsl:if test="($date != '') and
            (translate($date, '-', '') &gt; 19500000) and
            (translate($date, '-', '') &lt; 21000000)">
            <!-- <font color="{$res_url_color}" size="{$res_url_size}"> -->
            <xsl:text> - </xsl:text>
            <xsl:value-of select="$date"/>
            <!-- </font> -->
        </xsl:if>
    </xsl:if>

    <xsl:if test="$show_res_cache != '0'">
        <!-- <font color="{$res_url_color}" size="{$res_url_size}"> -->
        <xsl:text> - </xsl:text>
        <!-- </font> -->
        <xsl:variable name="cache_encoding">
            <xsl:choose>
                <xsl:when test="'' != @ENC"><xsl:value-of select="@ENC"/></xsl:when>
                <xsl:otherwise>utf-8</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <a class="f" href="search?q=cache:{$docid}:{$escaped_url}+{
            $stripped_search_query}&amp;{$base_url}&amp;oe={
            $cache_encoding}">
            <xsl:choose>
                <xsl:when test="not($mime)">Cached</xsl:when>
                <xsl:when test="$mime='text/html'">Cached</xsl:when>
                <xsl:when test="$mime='text/plain'">Cached</xsl:when>
                <xsl:otherwise>Text Version</xsl:otherwise>
            </xsl:choose>
        </a>
    </xsl:if>

</xsl:template>


<!-- **********************************************************************
 Google navigation bar in result page (do not customize)
 ********************************************************************** -->
 <xsl:template name="google_navigation">
    <xsl:param name="prev"/>
    <xsl:param name="next"/>
    <xsl:param name="view_begin"/>
    <xsl:param name="view_end"/>
    <xsl:param name="guess"/>
    <xsl:param name="navigation_style"/>

    <xsl:variable name="fontclass">
        <xsl:choose>
            <xsl:when test="$navigation_style = 'top'">s</xsl:when>
            <xsl:otherwise>b</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- *** Test to see if we should even show navigation *** -->
    <xsl:if test="($prev) or ($next)">

        <!-- *** Start Google result navigation bar *** -->

        <xsl:if test="$navigation_style != 'top'">
            <xsl:text disable-output-escaping="yes">
                &lt;div class=&quot;n&quot;&gt;</xsl:text>
            </xsl:if>

    <!--Following Table has been replaced by a div
    <table border="0" cellpadding="0" width="1%" cellspacing="0">
        <tr align="center" valign="top">-->
            <xsl:text disable-output-escaping="yes">
                &lt;ul class="pagination"&gt;
            </xsl:text>
            <xsl:if test="$navigation_style != 'top'">
                <!--<td valign="bottom" nowrap="1">-->
                <!--<xsl:call-template name="nbsp"/>-->
            </xsl:if>


            <!-- *** Show previous navigation, if available *** -->
            <xsl:choose>
                <xsl:when test="$prev">
                    <!--<td nowrap="1">-->
                    <xsl:text disable-output-escaping="yes">
                        &lt;li&gt;
                    </xsl:text>
                    <!--<span class="{$fontclass}">-->
                    <a href="search?{$search_url}&amp;start={$view_begin -
                        $num_results - 1}">
                        <xsl:if test="$navigation_style = 'google'">
                            <xsl:text disable-output-escaping="yes">
                                &lt;img src="/nav_previous.gif" width="68" height="26"
                                alt="Previous" border="0"/&gt;
                            </xsl:text>
                            <!--<br/>-->
                        </xsl:if>
                        <xsl:if test="$navigation_style = 'top'">
                            <xsl:text>&lt;</xsl:text>
                        </xsl:if>
                        <xsl:text>&#32;Prev</xsl:text>
                    </a>
                    <!--</span>-->
                    <!--<xsl:if test="$navigation_style != 'google'">
                        <xsl:call-template name="nbsp"/>
                    </xsl:if>-->
                    <!--</td>-->
                    <xsl:text disable-output-escaping="yes">
                        &lt;/li&gt;
                    </xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <!--<td nowrap="1">-->
                    <xsl:text disable-output-escaping="yes">
                        &lt;li class="disabled"&gt;
                    </xsl:text>
                    <!--<span class="{$fontclass}">-->
                    <a href="search?{$search_url}&amp;start={$view_begin -
                        $num_results - 1}">
                        <xsl:if test="$navigation_style = 'google'">
                            <xsl:text disable-output-escaping="yes">
                                &lt;img src="/nav_previous.gif" width="68" height="26"
                                alt="Previous" border="0"/&gt;
                            </xsl:text>
                            <!--<br/>-->
                        </xsl:if>
                        <xsl:if test="$navigation_style = 'top'">
                            <xsl:text>&lt;</xsl:text>
                        </xsl:if>
                        <xsl:text>&#32;Prev</xsl:text>
                    </a>
                    <!--</span>-->
                    <!--<xsl:if test="$navigation_style != 'google'">
                        <xsl:call-template name="nbsp"/>
                    </xsl:if>-->
                    <!--</td>-->
                    <xsl:text disable-output-escaping="yes">
                        &lt;/li&gt;
                    </xsl:text>
                </xsl:otherwise>
            </xsl:choose>

            <xsl:if test="($navigation_style = 'google') or
                ($navigation_style = 'link')">
                <!-- *** Google result set navigation *** -->
                <xsl:variable name="mod_end">
                    <xsl:choose>
                        <xsl:when test="$next"><xsl:value-of select="$guess"/></xsl:when>
                        <xsl:otherwise><xsl:value-of select="$view_end"/></xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>

                <xsl:call-template name="result_nav">
                    <xsl:with-param name="start" select="0"/>
                    <xsl:with-param name="end" select="$mod_end"/>
                    <xsl:with-param name="current_view" select="($view_begin)-1"/>
                    <xsl:with-param name="navigation_style" select="$navigation_style"/>
                </xsl:call-template>
            </xsl:if>

            <!-- *** Show next navigation, if available *** -->
            <xsl:choose>
                <xsl:when test="$next">
                    <li>
                        <a href="search?{$search_url}&amp;start={$view_begin +
                           $num_results - 1}">
                           <xsl:if test="$navigation_style = 'google'">
                              <xsl:text disable-output-escaping="yes">
                                 &lt;img src="/nav_next.gif" width="100" height="26"

                                 alt="Next" border="0"/&gt;
                             </xsl:text>
                             <!--<br/>-->
                         </xsl:if>
                         <xsl:text>Next&#32;</xsl:text>
                         <xsl:if test="$navigation_style = 'top'">
                          <xsl:text>&gt;</xsl:text>
                      </xsl:if>
                  </a>
              </li>
              <xsl:text disable-output-escaping="yes">
               &lt;/ul&gt;
           </xsl:text>
       </xsl:when>
       <xsl:otherwise>
        <xsl:text disable-output-escaping="yes">
           &lt;/ul&gt;
       </xsl:text>
       <!--<td nowrap="1">-->
       <xsl:text disable-output-escaping="yes">
           &lt;div class="floatLeft"&gt;
       </xsl:text>
       <xsl:if test="$navigation_style != 'google'">
           <xsl:call-template name="nbsp"/>
       </xsl:if>
       <xsl:if test="$navigation_style = 'google'">
           <xsl:text disable-output-escaping="yes">
              &lt;img src="/nav_last.gif" width="46" height="26"
              alt="Last" border="0"/&gt;
          </xsl:text>
      </xsl:if>
  </xsl:otherwise>
</xsl:choose>

<xsl:if test="$navigation_style != 'top'">
   <xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
</xsl:if>
</xsl:if>
</xsl:template>

<!-- **********************************************************************
 Helper templates for generating Google result navigation (do not customize)
   only shows 10 sets up or down from current view
   ********************************************************************** -->
   <xsl:template name="result_nav">
    <xsl:param name="start" select="'0'"/>
    <xsl:param name="end"/>
    <xsl:param name="current_view"/>
    <xsl:param name="navigation_style"/>

    <!-- *** Choose how to show this result set *** -->

    <xsl:choose>
        <xsl:when test="($start)&lt;(($current_view)-(5*($num_results)))">
        </xsl:when>
        <xsl:when test="(($current_view)&gt;=($start)) and
            (($current_view)&lt;(($start)+($num_results)))">
            <!--<td>-->
            <xsl:if test="$navigation_style = 'google'">
                <img src="/nav_current.gif" width="16" height="26" alt="Current"/>
                <br/>
            </xsl:if>
            <li class="active"><a href="#"><xsl:value-of
                select="(($start)div($num_results))+1"/></a></li>
                <!--</td>-->
            </xsl:when>
            <xsl:otherwise>
                <li class="number"><a href="search?{$search_url}&amp;start={$start}">
                    <xsl:if test="$navigation_style = 'google'">
                        <img src="/nav_page.gif" width="16" height="26" alt="Navigation"
                            border="0"/>
                            <br/>
                        </xsl:if>
                        <xsl:value-of select="(($start)div($num_results))+1"/>
                    </a>
                </li>
            </xsl:otherwise>
        </xsl:choose>

        <!-- *** Recursively iterate through result sets to display ***    -->
        <xsl:if test="((($start)+($num_results))&lt;($end)) and
            ((($start)+($num_results))&lt;(($current_view)+
            (5*($num_results))))">
            <xsl:call-template name="result_nav">
                <xsl:with-param name="start" select="$start+$num_results"/>
                <xsl:with-param name="end" select="$end"/>
                <xsl:with-param name="current_view" select="$current_view"/>
                <xsl:with-param name="navigation_style" select="$navigation_style"/>
            </xsl:call-template>
        </xsl:if>

    </xsl:template>


<!-- **********************************************************************
 Top separation bar (do not customize)
 ********************************************************************** -->
 <xsl:template name="top_sep_bar">
    <xsl:param name="text"/>
    <xsl:param name="show_info"/>
    <xsl:param name="time"/>

    <!-- <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="{$sep_bar_border_color}"><img width="1" height="1" alt=""/></td>
      </tr>
  </table> -->
  <div id="result_bar" width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#F2F2F0">
        <!-- <div bgcolor="#F2F2F0">
           <font size="+1"><b>BYU-Idaho Search</b></font>
       </div> --> 
       <div bgcolor="#F2F2F0" id="results_meta">
          <xsl:if test="$show_info != '0'">
             <!-- <font size="-1"> -->
             <xsl:if test="count(/GSP/RES/R)>0 ">
               <xsl:choose>
                  <xsl:when test="$access = 's' or $access = 'a'">
                     Results <b><xsl:value-of select="RES/@SN"/></b> - <b><xsl:value-of select="RES/@EN"/></b> for <b><xsl:value-of select="$space_normalized_query"/></b>.
                 </xsl:when>
                 <xsl:otherwise>
                     Results <b><xsl:value-of select="RES/@SN"/></b> - <b><xsl:value-of select="RES/@EN"/></b> of about <b><xsl:value-of select="RES/M"/></b> for <b><xsl:value-of select="$space_normalized_query"/></b>.
                 </xsl:otherwise>
             </xsl:choose>
         </xsl:if>
         Search took <b><xsl:value-of select="round($time * 100.0) div 100.0"/></b> seconds.
         <!-- </font> -->
     </xsl:if>
 </div>

</div>

    <!--
<div id="result_bar" width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#F2F2F0">
        <div bgcolor="#F2F2F0">
            <font size="+1">&nbsp;<b>BYU-Idaho Search</b></font>
        </div>
        <div bgcolor="#F2F2F0" id="results_meta">
            <font size="-1">Results <b>1</b> - <b>10</b> of about <b>2840</b> for <b>testing</b>.  Search took <b>0.05</b> seconds.</font>
        </div>
    </div>
-->

<hr class="z"/>
<xsl:if test="$choose_sep_bar = 'line'">
    <hr size="1" color="gray"/>
</xsl:if>

</xsl:template>

<!-- **********************************************************************
 Analytics script (do not customize)
 ********************************************************************** -->
 <xsl:template name="analytics">
    <xsl:if test="string-length($analytics_account) != '0'">
        <script src="{$analytics_script_url}" type="text/javascript"></script>
        <script type="text/javascript">
            <xsl:comment>
                _uacct = "<xsl:value-of select='$analytics_account'/>";
                urchinTracker();
                //</xsl:comment>
            </script>
        </xsl:if>
    </xsl:template>

<!-- **********************************************************************
 Utility function for constructing copyright text (do not customize)
 ********************************************************************** -->
 <xsl:template name="copyright">
<!--

    <xsl:text disable-output-escaping="yes">
      &lt;div align="center"&gt;
        &lt;br /&gt;&lt;br /&gt;
        &lt;p&gt;
        &lt;font face="helvetica,arial,sans-serif" size="-1" color="#2f2f2f"&gt;
          Powered by Google Search Appliance&lt;/font&gt;
        &lt;/p&gt;              
      &lt;/div&gt;
  </xsl:text>
-->
</xsl:template>


<!-- **********************************************************************
 Utility functions for generating html entities
 ********************************************************************** -->
 <xsl:template name="nbsp">
    <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
</xsl:template>
<xsl:template name="nbsp3">
    <xsl:call-template name="nbsp"/>
    <xsl:call-template name="nbsp"/>
    <xsl:call-template name="nbsp"/>
</xsl:template>
<xsl:template name="nbsp4">
    <xsl:call-template name="nbsp3"/>
    <xsl:call-template name="nbsp"/>
</xsl:template>
<xsl:template name="quot">
    <xsl:text disable-output-escaping="yes">&amp;quot;</xsl:text>
</xsl:template>
<xsl:template name="copy">
    <xsl:text disable-output-escaping="yes">&amp;copy;</xsl:text>
</xsl:template>

<!-- **********************************************************************
 Utility functions for generating head elements so that the XSLT processor
 won't add a meta tag to the output, since it may specify the wrong
 encoding (utf8) in the meta tag.
 ********************************************************************** -->
 <xsl:template name="plainHeadStart">
    <xsl:text disable-output-escaping="yes">&lt;head&gt;</xsl:text>
    <meta name="robots" content="NOINDEX,NOFOLLOW"/>
    <xsl:text>
    </xsl:text>
</xsl:template>
<xsl:template name="plainHeadEnd">
    <xsl:text disable-output-escaping="yes">&lt;/head&gt;</xsl:text>
    <xsl:text>
    </xsl:text>
</xsl:template>


<!-- **********************************************************************
 Utility functions for generating head elements with a meta tag to the output
 specifying the character set as requested
 ********************************************************************** -->
 <xsl:template name="langHeadStart">
    <xsl:text disable-output-escaping="yes">
        &lt;!doctype html&gt;
        &lt;!--[if lt IE 7]&gt; &lt;html class=&quot;no-js ie6 oldie&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
        &lt;!--[if IE 7]&gt;    &lt;html class=&quot;no-js ie7 oldie&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
        &lt;!--[if IE 8]&gt;    &lt;html class=&quot;no-js ie8 oldie&quot; lang=&quot;en&quot;&gt; &lt;![endif]--&gt;
        &lt;!-- Consider adding an manifest.appcache: h5bp.com/d/Offline --&gt;
        &lt;!--[if IE 9 ]&gt;    &lt;html lang=&quot;en&quot; class=&quot;no-js ie9&quot;&gt; &lt;![endif]--&gt;
        &lt;!--[if gt IE 9]&gt;&lt;!--&gt; &lt;html class=&quot;no-js&quot; lang=&quot;en&quot;&gt; &lt;!--&lt;![endif]--&gt;
        &lt;head&gt;  
        &lt;meta charset=&quot;utf-8&quot;&gt;
        &lt;link rel=&quot;shortcut icon&quot; href=&quot;http://www.byui.edu/prebuilt/stylenew/images/ico/favicon.ico&quot; type=&quot;image/x-icon&quot;&gt;

        &lt;meta name=&quot;description&quot; content=&quot;Brigham Young University - Idaho Search&quot;&gt;
        &lt;meta name=&quot;author&quot; content=&quot;Brigham Young University - Idaho Search&quot;&gt;

        &lt;!-- Mobile viewport optimized: j.mp/bplateviewport --&gt;
        <!-- &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width,initial-scale=1&quot;&gt; -->
        &lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, minimum-scale=1.0, maximum-scale=1.0&quot;;&gt;

        &lt;meta name="robots" content="NOINDEX,NOFOLLOW" /&gt;
        &lt;script src=&quot;//assets.adobedtm.com/9d799723fb681f246e7d4d8e9f3a613af54bd1c5/satelliteLib-40261a90862d0f213f1d58c5e42e2d0dcaf50b4a.js&quot;&gt;&lt;/script&gt;
        
    </xsl:text>
    <xsl:choose>
        <xsl:when test="PARAM[(@name='oe') and (@value='utf8')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=utf-8" /&gt;
            </xsl:text>
        </xsl:when>

        <xsl:when test="PARAM[(@name='lr') and (@value='lang_zh-CN')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=gb2312" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_zh-TW')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=Big5" /&gt;
            </xsl:text>

        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_cs')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-2" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_da')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_nl')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_en')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_et')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_fi')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_fr')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_de')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_el')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-7" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_iw')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-8-I" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_hu')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-2" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_is')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_it')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_ja')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=Shift_JIS" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_ko')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=EUC-KR" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_lv')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_lt')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_no')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_pl')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-2" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_pt')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_ro')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-2" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_ru')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=windows-1251" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_es')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=iso-8859-1" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:when test="PARAM[(@name='lr') and (@value='lang_sv')]">
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=utf-8" /&gt;
            </xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text disable-output-escaping="yes">
                &lt;meta http-equiv="content-type" content="text/html; charset=utf-8" /&gt;
            </xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>

<xsl:template name="langHeadEnd">
    <xsl:text disable-output-escaping="yes">
        &lt;meta name="description" content="search" /&gt;
        &lt;meta name="keywords" content="search" /&gt;


<!--
 *
 * Template's broken auto suggestion function. Replace with our own when ready.
 *
-->

&lt;script type="text/javascript" language="javascript"&gt;
// If you wish to turn off the suggestion feature for the search box, set suggest_in_search = false;
var suggest_in_search = false;
var xmlpath = '../keywords.xml';
&lt;/script&gt;

<!-- Template END -->

<!-- All BYU-I Changes made here will need to be implemented in the header inports located at the top of this document. -->


&lt;meta charset=&quot;utf-8&quot;&gt; 
&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge&quot;&gt; 
&lt;title&gt;Brigham Young University - Idaho
&lt;/title&gt; 
&lt;meta name=&quot;description&quot; content=&quot;Brigham Young University - Idaho&quot;&gt; 
&lt;meta name=&quot;author&quot; content=&quot;Brigham Young University - Idaho&quot;&gt; 
&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1&quot;&gt; 
&lt;link rel=&quot;stylesheet&quot; href=&quot;http://igx1.byui.edu/prebuilt/stylenew/css/global.min.css&quot;&gt; 
&lt;link rel=&quot;stylesheet&quot; href=&quot;http://igx1.byui.edu/prebuilt/search/css/search.css&quot;&gt; 
&lt;script src=&quot;//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js&quot;&gt;
&lt;/script&gt; 
&lt;script&gt;
window.jQuery || document.write('&lt;script src=&quot;http://igx1.byui.edu/prebuilt/stylenew/js/libs/jquery.min.js&quot;&gt;&lt;\/script&gt;');
&lt;/script&gt;

<!-- BYU-I javascript END -->

&lt;/head&gt;
</xsl:text>
<xsl:text>
</xsl:text>
</xsl:template>


<!-- **********************************************************************
 Utility functions (do not customize)
 ********************************************************************** -->

 <!-- *** Find the substring after the last occurence of a separator *** -->
 <xsl:template name="last_substring_after">

    <xsl:param name="string"/>
    <xsl:param name="separator"/>
    <xsl:param name="fallback"/>

    <xsl:variable name="newString"
        select="substring-after($string, $separator)"/>

        <xsl:choose>
            <xsl:when test="$newString!=''">
                <xsl:call-template name="last_substring_after">
                    <xsl:with-param name="string" select="$newString"/>
                    <xsl:with-param name="separator" select="$separator"/>
                    <xsl:with-param name="fallback" select="$newString"/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$fallback"/>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

    <!-- *** Find and replace *** -->
    <xsl:template name="replace_string">
        <xsl:param name="find"/>
        <xsl:param name="replace"/>
        <xsl:param name="string"/>
        <xsl:choose>
            <xsl:when test="contains($string, $find)">
                <xsl:value-of select="substring-before($string, $find)"/>
                <xsl:value-of select="$replace"/>
                <xsl:call-template name="replace_string">
                    <xsl:with-param name="find" select="$find"/>
                    <xsl:with-param name="replace" select="$replace"/>
                    <xsl:with-param name="string"
                        select="substring-after($string, $find)"/>
                    </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$string"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:template>


<!-- **********************************************************************
 Display error messages
 ********************************************************************** -->
 <xsl:template name="error_page">
    <xsl:param name="errorMessage"/>
    <xsl:param name="errorDescription"/>

    <html>
        <xsl:call-template name="plainHeadStart"/>
        <title><xsl:value-of select="$error_page_title"/></title>
        <xsl:call-template name="style"/>
        <xsl:call-template name="plainHeadEnd"/>
        <body dir="ltr" id="search">

            <xsl:call-template name="analytics"/>
            <xsl:call-template name="my_page_header"/>

            <xsl:if test="$show_logo != '0'">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td rowspan="3" valign="top">
                            <xsl:call-template name="logo"/>
                            <xsl:call-template name="nbsp3"/>
                        </td>
                    </tr>
                </table>
            </xsl:if>

            <xsl:call-template name="top_sep_bar">
                <xsl:with-param name="text" select="$sep_bar_error_text"/>
                <xsl:with-param name="show_info" select="0"/>
                <xsl:with-param name="time" select="0"/>
            </xsl:call-template>

            <p>
                <table width="99%" border="0" cellpadding="2" cellspacing="0">
                    <tr>
                        <td><!-- <font color="#990000" size="+1"> -->Message:<!-- </font> --></td>
                        <td><!-- <font color="#990000" size="+1"> --><xsl:value-of select="$errorMessage"/><!-- </font> --></td>
                    </tr>
                    <tr>
                        <td><!-- <font color="#990000"> -->Description:<!-- </font> --></td>
                        <td><!-- <font color="#990000"> --><xsl:value-of select="$errorDescription"/><!-- </font> --></td>
                    </tr>
                    <tr>
                        <td><!-- <font color="#990000"> -->Details:<!-- </font> --></td>
                        <td><!-- <font color="#990000"> --><xsl:copy-of select="/"/><!-- </font> --></td>
                    </tr>
                </table>
            </p>

            <hr/>
            <xsl:call-template name="copyright"/>
            <xsl:call-template name="my_page_footer"/>

        </body>
    </html>
</xsl:template>


<!-- **********************************************************************
 Google Desktop for Enterprise integration templates
 ********************************************************************** -->
 <xsl:template name="desktop_tab">

    <!-- *** Show the Google tabs *** -->

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://www.google.com/search?q={$qval}">Web</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://images.google.com/images?q={$qval}">Images</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://groups.google.com/groups?q={$qval}">Groups</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://news.google.com/news?q={$qval}">News</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://froogle.google.com/froogle?q={$qval}">Froogle</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- <font size="-1"> -->
    <a class="q" onClick="return window.qs?qs(this):1" href="http://local.google.com/local?q={$qval}">Local</a>
    <!-- </font> -->

    <xsl:call-template name="nbsp4"/>

    <!-- *** Show the desktop and web tabs *** -->

    <xsl:if test="CUSTOM/HOME">
        <xsl:comment>trh2</xsl:comment>
    </xsl:if>
    <xsl:if test="Q">
        <xsl:comment>trl2</xsl:comment>
    </xsl:if>

    <!-- *** Show the appliance tab *** -->
    <!-- <font size="-1"> --><strong><xsl:value-of select="$egds_appliance_tab_label"/></strong><!-- </font> -->

</xsl:template>

<xsl:template name="desktop_results">
    <xsl:comment>tro2</xsl:comment>
</xsl:template>

<!-- **********************************************************************
  OneBox results (if any)
  ********************************************************************** -->
  <xsl:template name="onebox">
    <xsl:for-each select="/GSP/ENTOBRESULTS">
        <xsl:apply-templates/>
    </xsl:for-each>
</xsl:template>

<!-- **********************************************************************
 Swallow unmatched elements
 ********************************************************************** -->
 <xsl:template match="@*|node()"/>
</xsl:stylesheet>


<!-- *** END OF STYLESHEET *** -->