function sideBarToggle() {
  $("#sdBrToggle").toggleClass("hide")
  var source = $("#mainLogo").attr("src")
  $("#hamMenuIcon").toggleClass("d-none")
  if (source == "./assets/FandAlogo.png") {
    $("#mainLogo").attr("src", "./assets/FandAWhite.png")
  } else {
    $("#mainLogo").attr("src", "./assets/FandAlogo.png")
  }
}

function displayToggleOrng() {
  $("#slctOrgn").addClass("d-flex")
  $("#slctOrgn").removeClass("d-none")
  $("#slctCstmr").addClass("d-none")
  $("#slctCstmr").removeClass("d-flex")
}
function displayToggleCstmr() {
  $("#slctCstmr").addClass("d-flex")
  $("#slctCstmr").removeClass("d-none")
  $("#slctOrgn").addClass("d-none")
  $("#slctOrgn").removeClass("d-flex")
}
