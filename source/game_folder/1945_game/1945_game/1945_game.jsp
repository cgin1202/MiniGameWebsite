<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
  <title>1945</title>
  <link rel="stylesheet" href="style.css">

</head>

<body>

 <form action="score.jsp" id="myForm" method="post">
 <input type="hidden" value="" name="score">
 </form>

  <div id="score-name">
    <p class="level-text">score</br><span id="score">000</span>
    </p>
  </div>
  <div id="game-over">
    <p class="game-over-text">Game Over</p>
      <button id="play-again">Play Again</button>
  </div>
  <div id="level">
    <p class="level-text">
    </p>
  </div>
  <div id="game-over-overlay"></div>


  <script src="element/assetsmanager.js"></script>
  <script src="element/sprites.js"></script>
  <script src="element/input.js"></script>
  <script src="element/soundjs.js"></script>
  <script src="game2.js"></script>
</body>

</html>
