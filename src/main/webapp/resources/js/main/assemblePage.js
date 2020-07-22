window.onload = function () {
  swiper_tab();
  scrollTop();
  loadTab2();
};

window.onresize = function () {
  swiper_tab();
};

// @ts-ignore
var swiper1 = new Swiper(".swiper-container", {
  pagination: {
    el: ".swiper-pagination",
  },
  on: {
    slidePrevTransitionEnd: function () {
      // 앞슬라이드 이동시
      console.log("앞슬라이드 이동!!");
      scrollTop();
    },
  },
});

function loadTab2() {
  console.log("load right page!!!!--------");
  $("#tab2").load("../board/cartPage");
}

function swiper_tab() {
  let tab_container = document.getElementById("tab_container");
  let tab_wrapper = document.getElementById("tab_wrapper");
  let tab1 = document.getElementById("tab1");
  let tab2 = document.getElementById("tab2");
  // @ts-ignore
  var swiper1 = document.querySelector("#tab_container").swiper;
  console.log("screen_size=" + window.innerWidth);

  if (window.innerWidth >= 900) {
    console.log("change2 grid!!");

    // swiper1.detachEvents();

    tab_container.className = "";
    tab_wrapper.className = "w3-row";
    tab1.className = "w3-col s6";
    tab2.className = "w3-col s6";
    tab1.removeAttribute("style");
    tab2.removeAttribute("style");
    tab_wrapper.removeAttribute("style");

    swiper1.allowTouchMove = false;
  } else if (window.innerWidth < 900) {
    console.log("change2 swiper!!!");
    tab_container.className = "swiper-container";
    tab_wrapper.className = "swiper-wrapper";
    tab1.className = "swiper-slide";
    tab2.className = "swiper-slide";

    swiper1.allowTouchMove = true;
  }
}

function scrollTop() {
  // @ts-ignore
  window.scrollTo({ top: location, behavior: "auto" });
}

function goTab1(e) {
  console.log(e);
  swiper1.slideTo(0, 500, callList(e));
  catogory_change();
}

function callList(e) {
  var category_selecter = document.getElementById(
    "category_selecter"
  );
  // @ts-ignore
  category_selecter.value = e;

  setTimeout(() => {
    console.log("--load list of---" + e);
    scrollTop();
  }, 500);
}

function catogory_change() {
  // @ts-ignore
  var a1 = document.getElementById("category_selecter").value;
  console.log(a1);
  a1 += "Search";
  console.log(a1);
  // @ts-ignore
  $("#searchFormHere").load("../p_list/" + a1);
}

function countPlus(e) {
  console.log("++++++++++++++++++++");
  var a1 = e.parentNode.children[3].innerText;
  console.log(a1);
  var a2 = e.parentNode.children[0].innerText;
  console.log(a2);

  //TODO: ajax로 증감처리

  loadTab2();
}
function countMinus(e) {
  console.log("-------------------");
  var a1 = e.parentNode.children[1].innerText;
  console.log(a1);
  var a2 = e.parentNode.children[0].innerText;
  console.log(a2);

  //TODO: ajax로 증감처리

  loadTab2();
}
