<link rel="stylesheet" type="text/css" href="css/styles.css">
<html>
	<head>
		<title>Operator Database</title>
	</head>
	<cfinclude template="inc/inc_header.cfm">
	<cfinclude template="inc/inc_hplacehold.cfm">

	<body <!---style="padding:0px; margin:0px; font-family:Arial, Verdana;background-color:#fff;"--->>
		<center><table class="create" border="0" cellpadding="5" cellspacing="0">
			<tbody>
				<td>Click one of the above links to interact with the test database.</td>
			</tbody>
		</table></center>
<br>



    <!-- use jssor.slider.min.js for release -->
    <!-- jssor.slider.min.js = (jssor.js + jssor.slider.js) -->
<script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jssor_slider1_starter = function (containerId) {
            var _CaptionTransitions = [];
            _CaptionTransitions["L"] = { $Duration: 900, x: 0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["R"] = { $Duration: 900, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["T"] = { $Duration: 900, y: 0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["B"] = { $Duration: 900, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutSine }, $Opacity: 2 };
            _CaptionTransitions["ZMF|10"] = { $Duration: 900, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 };
            _CaptionTransitions["RTT|10"] = { $Duration: 900, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8} };
            _CaptionTransitions["RTT|2"] = { $Duration: 900, $Zoom: 3, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 0.5} };
            _CaptionTransitions["RTTL|BR"] = { $Duration: 900, x: -0.6, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8} };
            _CaptionTransitions["CLIP|LR"] = { $Duration: 900, $Clip: 15, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2 };
            _CaptionTransitions["MCLIP|L"] = { $Duration: 900, $Clip: 1, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic} };
            _CaptionTransitions["MCLIP|R"] = { $Duration: 900, $Clip: 2, $Move: true, $Easing: { $Clip: $JssorEasing$.$EaseInOutCubic} };

            var options = {
                $FillMode: 2,                                       //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                                   //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideEasing: $JssorEasing$.$EaseOutQuint,          //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
                $SlideDuration: 800,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 1,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $BulletNavigatorOptions: {                          //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                 //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 8,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 8,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                },

                $ArrowNavigatorOptions: {                       //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 1,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 2,                                 //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                }
            };

            var jssor_slider1 = new $JssorSlider$(containerId, options);

           <!--- //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var bodyWidth = document.body.clientWidth;
                if (bodyWidth)
                    jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
                else
                    $Jssor$.$Delay(ScaleSlider, 30);
            }

            ScaleSlider();
            $Jssor$.$AddEvent(window, "load", ScaleSlider);

            $Jssor$.$AddEvent(window, "resize", $Jssor$.$WindowResizeFilter(window, ScaleSlider));
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            //responsive code end --->
        };
    </script>
    <!-- Jssor Slider Begin -->
    <!-- To move inline styles to css file/block, please specify a class name for each element. -->
    <div id="slider1_container" style="position: relative; margin: 0 auto; border-style: groove;
        top: 0px; left: -228px; width: 750px; height: 325px; overflow: hidden;">
        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 750px;
            height: 325px; overflow: hidden;">
            <div>
                <img u="image" src="img/bg_content.png" />
                <div u="caption" t="NO" r3="137.5%" du3="3000" d3="500" style="position: absolute; width: 370px; height: 250px; top: 40px; left: 350px;">
                    <img src="img/CreateForm.png" style="position: absolute; width: 350px; height: 250px; top: 0px; left: 0px;" />
                </div>
                <div style="position: absolute; width: 480px; height: 120px; top: 45px; left: 125px; padding: 5px;
                    text-align: left; line-height: 60px; text-transform: uppercase; font-size: 30px;
                        color: Black;">CREATE
                </div>
                <div style="position: absolute; width: 290px; height: 75px; top: 85px; left: 40px; padding: 5px;
                    text-align: left; line-height: 36px; font-size: 17px;
                        color: Black;"><br>
                        Add a new operator to the database using a simple input form. <br>
						Input information as accurately as possible and try to fill in all that is asked. <br>
                </div>
            </div>
            <div>
                <img u="image" src="img/bg_content.png" />
                <div u="caption" t="NO" r3="137.5%" du3="3000" d3="500" style="position: absolute; width: 370px; height: 250px; top: 40px; left: 350px;">
                    <img src="img/restIDfin.png" style="position: absolute; width: 350px; height: 250px; top: 0px; left: 0px;" />
                </div>
                <div style="position: absolute; width: 480px; height: 120px; top: 45px; left: 60px; padding: 5px;
                    text-align: left; line-height: 60px; text-transform: uppercase; font-size: 30px;
                        color: Black;">UPDATE/DELETE
                </div>
                <div style="position: absolute; width: 290px; height: 75px; top: 85px; left: 40px; padding: 5px;
                    text-align: left; line-height: 36px; font-size: 17px;
                        color: Black;"><br>
                        Change operators' information, or completely remove their records. <br>
						Start by entering the ID of the restaurant you want to access! <br>
                </div>
            </div>
            <div>
                <img u="image" src="img/bg_content.png" />
                <div u="caption" t="NO" r3="137.5%" du3="3000" d3="500" style="position: absolute; width: 370px; height: 250px; top: 40px; left: 350px;">
                    <img src="img/listing.png" style="position: absolute; width: 350px; height: 250px; top: 0px; left: 0px;" />
                </div>
                <div style="position: absolute; width: 480px; height: 120px; top: 25px; left: 125px; padding: 5px;
                    text-align: left; line-height: 60px; text-transform: uppercase; font-size: 30px;
                        color: Black;">LIST
                </div>
                <div style="position: absolute; width: 290px; height: 75px; top: 85px; left: 40px; padding: 5px;
                    text-align: left; line-height: 36px; font-size: 17px;
                        color: Black;">
                        Check the list of all operators in the current database. Very helpful for finding restaurant ID's! <br>
						The list is cached, so hit "Update?" to see a more accurate/recent list. NOTE: this takes some time to load <br>
                </div>
            </div>
        </div>

        <!--#region Arrow Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
        <style>
            /* jssor slider arrow navigator skin 21 css */
            /*
            .jssora21l                  (normal)
            .jssora21r                  (normal)
            .jssora21l:hover            (normal mouseover)
            .jssora21r:hover            (normal mouseover)
            .jssora21l.jssora21ldn      (mousedown)
            .jssora21r.jssora21rdn      (mousedown)
            */
            .jssora21l, .jssora21r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 55px;
                height: 55px;
                cursor: pointer;
                background: url(img/a21.png) center center no-repeat;
                overflow: hidden;
            }
            .jssora21l { background-position: -3px -33px; }
            .jssora21r { background-position: -63px -33px; }
            .jssora21l:hover { background-position: -123px -33px; }
            .jssora21r:hover { background-position: -183px -33px; }
            .jssora21l.jssora21ldn { background-position: -243px -33px; }
            .jssora21r.jssora21rdn { background-position: -303px -33px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora21l" style="top: 123px; left: 0px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora21r" style="top: 123px; right: 0px;">
        </span>
        <!--#endregion Arrow Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">Image Slider</a>

    </div>
    <!-- Trigger -->
    <script>
        jssor_slider1_starter('slider1_container');
    </script>
    <!-- Jssor Slider End -->


<div id="Right_Text_Box" style="position: absolute; margin: 0 auto; border-style: groove;
        top: 185px; left: 800px; width: 275px; height: 645px; overflow: hidden;">
	<p>
	<h2>Content Title</h2>
	<h3><ul>
		<li>Number One: <br> &nbsp;&nbsp;&nbsp;&nbsp; Lorem Ipsum dolor blue &nbsp;&nbsp;&nbsp;&nbsp; black yellow green!</li>
		<li>Number Two: <br> &nbsp;&nbsp;&nbsp;&nbsp; Information about this &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;item is listed here! </li>
		<li>Number Three: <br> &nbsp;&nbsp;&nbsp;&nbsp; Find more information at &nbsp;&nbsp;&nbsp;&nbsp; their <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">website</a>! </li>
	</ul></h3>
	</p>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	.<br>
	Text can go all the way down to here!
</div>
<div id="Lower_Text_Box" style="position: relative; margin: 0 auto; border-style: groove;
        top: 12px; left: -228px; width: 750px; height: 300px; overflow: hidden; ">
	<h2>MOAR CONTENT SPACE!!!</h2>
	<h3>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WHAT A GOOD PLACE FOR INFORMATION LIKES SPECIALS, ETC. <br>
	&nbsp;&nbsp;&nbsp;&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit.
	Donec lacinia mattis velit, in posuere nisl bibendum a.
	Nunc vitae nibh sit amet justo pellentesque vulputate sit amet at velit.
	Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.
	Fusce tempus quis tellus sed dictum. Suspendisse potenti.
	Nullam in tristique magna. Phasellus placerat vehicula lacus.
	Fusce erat odio, interdum vel magna eu, euismod suscipit eros.
	Aliquam non velit aliquam, convallis enim eu, iaculis nisl.
	Vivamus hendrerit risus lectus, ut semper diam mollis quis.
	Donec lacinia scelerisque nunc, nec malesuada elit rhoncus sit amet.</h3>
</div>

<div id="Demonstrate_Scrolling" style="position: relative; margin: 0 auto;
        top: 0px; left: 0px; width: 750px; height: 900px; overflow: hidden; ">
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center>SCROLLING DEMONSTRATION</center>
</div>

	</body>
	<cfinclude template="inc/inc_footer.cfm">
</html>