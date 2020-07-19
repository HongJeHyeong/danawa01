/* =============================================================================================================== */
function replaceAll(str, searchStr, replaceStr) {
  return str.split(searchStr).join(replaceStr);
}

/* =============================================================================================================== */
/* 필터 */
/* =============================================================================================================== */
/* innerText는 불필요한 공백을 제거하고 텍스트로 반환하지만 textContent는 모든 텍스트를 그대로 가져오는 차이점 */
function myFunction() {
  var input, filter, item, itemInner, i;
  input = document.getElementsByClassName("myInput")[0];
  filter = input.value.toUpperCase();
  item = document.getElementsByClassName("item");
  for (i = 0; i < item.length; i++) {
    itemInner = item[i].getElementsByClassName("itemInner")[0];
    if (itemInner) {
      txtValue = itemInner.textContent || itemInner.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        item[i].style.display = "";
      } else {
        item[i].style.display = "none";
      }
    }
  }
  document.getElementsByClassName("myInput2")[0].value = "";
}
function my2Function() {
  var input, filter, item, itemContent, i;
  input = document.getElementsByClassName("myInput2")[0];
  filter = input.value.toUpperCase();
  item = document.getElementsByClassName("item");
  for (i = 0; i < item.length; i++) {
    itemContent = item[i].getElementsByClassName("itemContent")[0];
    if (itemContent) {
      txtValue = itemContent.textContent || itemContent.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        item[i].style.display = "";
      } else {
        item[i].style.display = "none";
      }
    }
  }
  document.getElementsByClassName("myInput")[0].value = "";
}

/* =============================================================================== */
// disk
/* =============================================================================================================== */
function changeDiskCategory(e) {
  var it = e.value; // 전체,SSD,HDD
  console.log(it);

  if (it === "전체") {
    $("#itemList").load("../p_list/diskList?disk_category="); // 전체불러오기 아직
    // 미완성
  } else if (it === "SSD") {
    $("#itemList").load("../p_list/diskList?disk_category=" + it);
  } else if (it === "HDD") {
    $("#itemList").load("../p_list/diskList?disk_category=" + it);
  }
}

/* =============================================================================== */
// cooler
/* =============================================================================================================== */
function changeCoolerCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("coolerFull.html");
  } else if (it === "공냉") {
    $("#itemList").load("acool.html");
  } else if (it === "수냉") {
    $("#itemList").load("wcool.html");
  }
  // var url = "/product/p_cooler?keyword=" + it;

  // $("#itemList").load(url);
}

/* =============================================================================================================== */
// case
// slide----
function caseSlide() {
  var num = document.getElementsByClassName("slideVal")[0].value;
  if (num == null) {
    num = 0;
  }
  console.log(num);
  document.getElementsByClassName("slideNum")[0].value = num;
}

function changeCaseCategory() {
  var caseLang = document.getElementsByClassName("slideNum")[0].value;
  if (caseLang == "") {
    caseLang = 0;
  }
  console.log(caseLang);
  var url = "/product/p_case?caseLeng=" + caseLeng;

  $("#itemList").load(url);
}

// ----slide

/* =============================================================================================================== */
// cpu
function changeCpuCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("cpuFull.html");
  } else if (it === "AMD") {
    $("#itemList").load("amd.html");
  } else if (it === "Intel") {
    $("#itemList").load("intel.html");
  }
  // var url = "/product/p_cpu?keyword=" + it;

  // $("#itemList").load(url);
}
/* =============================================================================================================== */

/* =============================================================================================================== */
// power
// slide----
function powerSlide() {
  var num = document.getElementsByClassName("slideVal")[0].value;
  if (num == null) {
    num = 0;
  }
  console.log(num);
  document.getElementsByClassName("slideNum")[0].value = num;
}

function changePowerCategory() {
  var maxPower = document.getElementsByClassName("slideNum")[0].value;
  if (maxPower == "") {
    maxPower = 0;
  }
  console.log(maxPower);
  // var url = "/product/p_power?keyword=" + maxPower;

  // $("#itemList").load(url);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// graphic
function changeGraphicCategory(e) {
  var it = e.value;
  console.log(it);
  it = replaceAll(it, " ", "_");
  console.log(it);

  $("#itemList").load("../p_list/gcardList?gc_chipset=" + it);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// mainboard
function changeMainboardCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("mainFull.html");
  } else if (it === "1200") {
    $("#itemList").load("1200.html");
  } else if (it === "1151v2") {
    $("#itemList").load("1151v2.html");
  } else if (it === "AM4") {
    $("#itemList").load("AM4.html");
  }
  // var url = "/product/p_mb?keyword=" + it;

  // $("#itemList").load(url);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// ram
function changeRamCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("ramFull.html");
  } else if (it === "ram4") {
    $("#itemList").load("ram4.html");
  } else if (it === "ram8") {
    $("#itemList").load("ram8.html");
  } else if (it === "ram16") {
    $("#itemList").load("ram16.html");
  } else if (it === "ram32") {
    $("#itemList").load("ram32.html");
  }
  // var url = "/product/p_ram?keyword=" + it;

  // $("#itemList").load(url);
}
/* =============================================================================================================== */
