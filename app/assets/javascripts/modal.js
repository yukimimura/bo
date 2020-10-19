/*global $*/

// modal
$(document).ready(function() {
  $("#open").on("click", function() {
    $("div.modal.1").addClass("is-active");
  })

  $("#close, div.modal-background.1").on("click", function() {
    $("div.modal.1").removeClass("is-active");
  })
});

$(document).ready(function() {
  $("#show").on("click", function() {
    $("div.modal.2").addClass("is-active");
  })

  $("#close.delete, div.modal-background.2").on("click", function() {
    $("div.modal.2").removeClass("is-active");
  })
});