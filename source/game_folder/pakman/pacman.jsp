<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Pacman Game Page</title>
		<link rel='stylesheet' href='css/login.css' />
	</head>
	<style type="text/css">
      @font-face {
	    font-family: 'writing/BDCartoonShoutRegular';
        src: url('BD_Cartoon_Shout-webfont.ttf') format('truetype');
	    font-weight: normal;
	    font-style: normal;
      }
      #pacman {
        height:450px;
        width:342px;
        margin:20px auto;
      }
      #shim { 
        font-family: 'writing/BDCartoonShoutRegular';
        position:absolute;
        visibility:hidden
      }
      h1 { font-family: 'writing/BDCartoonShoutRegular'; text-align:center; }
      body { width:342px; margin:0px auto; font-family:sans-serif; }
      a { text-decoration:none; }
    </style>
	<body>
		
		<div id="shim">shim for font face</div>
	 
	  <h1>Pacman</h1>
	  
	<form action="score.jsp" id="myForm" method="post">
	 <input type="hidden" value="" name="score">
	 </form>
	 
	  <div id="pacman"></div>
	  <script src="js/pacman.js"></script>
	  <script src="js/modernizr-1.5.min.js"></script>
	
	  <script>
	
	    var el = document.getElementById("pacman");
	
	    if (Modernizr.canvas && Modernizr.localstorage && 
	        Modernizr.audio && (Modernizr.audio.ogg || Modernizr.audio.mp3)) {
	      window.setTimeout(function () { PACMAN.init(el, "./"); }, 0);
	    } else { 
	      el.innerHTML = "Sorry, needs a decent browser<br /><small>" + 
	        "(firefox 3.6+, Chrome 4+, Opera 10+ and Safari 4+)</small>";
	    }
	  </script>
	</body>
</html>