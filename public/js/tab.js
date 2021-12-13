function openTab(tabName) {
  var i;
  var x = document.getElementsByClassName("type");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  document.getElementById(tabName).style.display = "block";
}


function openTehsale(tabName) {
  var i;
  var x = document.getElementsByClassName("tab1");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  document.getElementById(tabName).style.display = "block";
}

function openTehpurchase(tabName) {
  var i;
  var x = document.getElementsByClassName("tab2");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  document.getElementById(tabName).style.display = "block";
}
