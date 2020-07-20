<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- CDN - W3CSS -->
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <!-- CDN OFFLINE- sw_topNav.css -->
  <!-- CDN - sw_topNav.css -->
  <!-- 
  <link rel="stylesheet" href="https://storage.googleapis.com/sw-css/css/sw-1.0.0.css">
   -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/productForm.css">
  <script src="${pageContext.request.contextPath}/resources/js/productForm.js"></script>


</head>

<body>



  <!-- HEAD ------------------------------------------------------------------------------------ -->
  <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->

  <div id="main">
    <!-- responsive template by SW ----------------------------------------------------------- -->
    <!-- Need   W3CSS  +  FONT AS4  +  sw+topnav offline ------------------------------------- -->
    <!-- CONTENT ------------------------------------------------------------------------------------ -->
    <div class="sw-center">
      <!-- 가로복 제한 400~1200 ---------------------------------------------------------------------------------->
      <div class="sw-container-700">
        <div class="w3-container">
          <!-- 3 main content start here!!!----------------------------------------------------------- -->
          <!-- 2 main content start here!!!----------------------------------------------------------- -->
          <!-- 1 main content start here!!!----------------------------------------------------------- -->
          <div class="w3-row">
            <div class="w3-col s6">

              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./cpuForm?cpu_no=386')">CPU</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./mainboardForm')">Mainboard</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./gcardForm')">gcard</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./powerForm')">power</button>
              </div>
            </div>
            <div class="w3-col s6">

              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./coolerForm')">cooler</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./ramForm')">ram</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./caseForm')">case</button>
              </div>
              <div class="w3-col">
                <button type="button" class="w3-button" onclick="loadForm('./diskForm')">disk</button>
              </div>
            </div>
          </div>

          <div id="hereLoadForm"></div>

          <script>


            // function loadForm(loadUrl) {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', loadUrl, true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;


            //       setTimeout(() => {
            //         updateFormLoadValue();
            //       }, 100);
            //     }
            //   };
            //   request.send();

            // }
            // function loadForm2() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./mainboardForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm3() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./gcardForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm4() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./powerForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm5() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./coolerForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm6() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./ramForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm7() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./caseForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
            // function loadForm8() {
            //   console.log("-----");
            //   var request = new XMLHttpRequest();

            //   request.open('GET', "./diskForm.html", true);

            //   request.onload = function () {
            //     if (request.status >= 200 && request.status < 400) {
            //       var resp = request.responseText;

            //       document.querySelector('#hereLoadForm').innerHTML = resp;
            //     }
            //   };
            //   request.send();
            // }
          </script>

          <!-- main content end----------------------------------------------------------------------- -->
        </div>
      </div>
    </div>

    <!-- HEAD ------------------------------------------------------------------------------------ -->
    <!-- head가 맨 나중?나중에 나온 요소가 레이어 맨위로... ---------------------------------------->


  </div>

  <script>
    /* Set the width of the side navigation to 250px and the left margin of the page content to 250px and add a black background color to body */
    function openNav() {
      document.getElementById("mySidenav").style.width = "250px";
      // document.getElementById("main").style.marginLeft = "250px";
      document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }

    /* Set the width of the side navigation to 0 and the left margin of the page content to 0, and the background color of body to white */
    function closeNav() {
      document.getElementById("mySidenav").style.width = "0";
      // document.getElementById("main").style.marginLeft = "0";
      document.body.style.backgroundColor = "white";
    }

    window.onresize = function () {
      closeNav();
    };

  </script>
</body>

</html>