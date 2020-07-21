function loadForm(loadUrl) {
  console.log("-----");
  var request = new XMLHttpRequest();

  request.open("GET", loadUrl, true);

  request.onload = function () {
    if (request.status >= 200 && request.status < 400) {
      var resp = request.responseText;

      document.querySelector("#hereLoadForm").innerHTML = resp;

      setTimeout(() => {
        updateFormLoadValue();
      }, 100);
    }
  };
  request.send();
}

// 클럭 Up , Down 부분 JavaScript -------------------------------------------------
function clockdown() {
  const clock = document.getElementById("cpu_clock");

  if (clock.value.trim() * 1 >= 1.05) {
    var clock_val = clock.value * 1 - 0.1;
    console.log("==" + clock_val);
    clock.value = round1(clock_val + 0.00001).trim();
  }
}

function clockup() {
  const clock = document.getElementById("cpu_clock");
  var clock_val = clock.value * 1 + 0.1;
  console.log("==" + clock_val);
  clock.value = round1(clock_val + 0.00001);
}

function round1(e) {
  console.log(e);
  var whereDot = (e + "").indexOf(".");
  console.log(whereDot + "---");
  e = (e + "").substring(0, whereDot + 2).trim();
  return e;
}
// 클럭 Up , Down 부분 JavaScript -------------------------------------------------

//------------------------------------------------------------------------------
function updateFormLoadValue() {
  //1. bb_input >> aa_input  ,,,  bb_select >> aa_select로 값 이동
  let aa_input_arr = document.getElementsByClassName("get_input");
  let bb_input_arr = document.getElementsByClassName("put_input");
  let aa_select_arr = document.getElementsByClassName("get_select");
  let bb_select_arr = document.getElementsByClassName("put_select");
  console.log(
    (aa_input_arr.length == bb_input_arr.length) +
      " " +
      (aa_select_arr.length == bb_select_arr.length)
  );

  //2 input type text 값 넣어주기
  for (let i = 0; i < aa_input_arr.length; i++) {
    console.log("--" + i);
    aa_input_arr[i].value = bb_input_arr[i].value;
  }
  console.log();
  //3. select option 값 넣어주기
  for (let i = 0; i < aa_select_arr.length; i++) {
    console.log("-- " + i + " ------------------------------");
    var value2select = bb_select_arr[i].value;
    console.log(value2select);
    var op = aa_select_arr[i].options;

    for (let j = 0; j < op.length; j++) {
      console.log("-- --" + j);
      if (op[j].value == value2select) {
        op[j].selected = true;
      } else {
        op[j].selected = false;
      }
      console.log(op[j].selected);
    }
  }
}
//------------------------------------------------------------------------------
function submitFormCpu() {
	var form = document.getElementById("cpuForm");
	form.action="./updateCpu";
	form.submit();
}
function submitFormMb() {
	var form = document.getElementById("mainboardForm");
	form.action="./updateMainboard";
	form.submit();
}
function submitFormGc() {
	var form = document.getElementById("gcardForm");
	form.action="./updateGcard";
	form.submit();
}
function submitFormRam() {
	var form = document.getElementById("ramForm");
	form.action="./updateRam";
	form.submit();
}
function submitFormDisk() {
	var form = document.getElementById("diskForm");
	form.action="./updateDisk";
	form.submit();
}
function submitFormPower() {
	var form = document.getElementById("powerForm");
	form.action="./updatePower";
	form.submit();
}
function submitFormCase() {
	var form = document.getElementById("caseForm");
	form.action="./updateCase";
	form.submit();
}
function submitFormCooler() {
	var form = document.getElementById("coolerForm");
	form.action="./updateCooler";
	form.submit();
}
