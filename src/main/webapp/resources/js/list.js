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
    $("#itemList").load("./diskList?category=");
  } else if (it === "SSD") {
    $("#itemList").load("./diskList?category=" + it);
  } else if (it === "HDD") {
    $("#itemList").load("./diskList?category=" + it);
  }
}

/* =============================================================================== */
// cooler
/* =============================================================================================================== */
function changeCoolerCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("./coolerList?type=");
  } else if (it === "공냉") {
    $("#itemList").load("./coolerList?type="+it);
  } else if (it === "수냉") {
    $("#itemList").load("./coolerList?type="+it);
  }
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
  var caseLeng = document.getElementsByClassName("slideNum")[0].value;
  if (caseLeng == "") {
    caseLeng = 0;
  }
  console.log(caseLeng);

  $("#itemList").load("./caseList?caseLeng=" + caseLeng);
}

// ----slide

/* =============================================================================================================== */
// cpu
function changeCpuCategory(e) {
  var it = e.value;

  if (it === "전체") {
    $("#itemList").load("./cpuList?company=");
  } else if (it === "AMD") {
    $("#itemList").load("./cpuList?company="+it);
  } else if (it === "Intel") {
    $("#itemList").load("./cpuList?company="+it);
  }
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
  var capacity = document.getElementsByClassName("slideNum")[0].value;
  if (capacity == "") {
	  capacity = 0;
  }
  console.log(capacity);
  
  $("#itemList").load("./powerList?capacity=" + capacity);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// graphic
function changeGraphicCategory(e) {
  var it = e.value;
  console.log(it);
  it = replaceAll(it, " ", "_");
  console.log(it);

  $("#itemList").load("./gcardList?gc_chipset=" + it);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// mainboard
function changeMainboardCategory(e) {
  var it = e.value;

  $("#itemList").load("./mbList?socket=" + it);
}
/* =============================================================================================================== */

/* ========================================================================================================== */
// ram
function changeRamCategory(e) {
  var it = e.value;

    $("#itemList").load("./ramList?volume="+it);
}
/* =============================================================================================================== */
