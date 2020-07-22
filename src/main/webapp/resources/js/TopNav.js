/*  메인 메뉴 반응형 */
function responsiveMenuPopUp() {
  var x = document.getElementById("topNav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav w3-card-4";
  }
}

window.onresize = function () {
  var x = document.getElementById("topNav");
  x.className = "topnav w3-card-4";
};
