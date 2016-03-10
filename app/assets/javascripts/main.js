;(function($, window, document) {
  'use strict';

  $(document).ready(function() {
    // hide spinner
    $(".overlay-search").hide();
    $(".sk-folding-cube").hide();
  });
    // show spinner on AJAX start
  $(document).ajaxStart(function(){
    $(".overlay-search").show();
    $(".sk-folding-cube").show();
  });

  // hide spinner on AJAX stop
  $(document).ajaxStop(function(){
    $(".overlay-search").hide();
    $(".sk-folding-cube").hide();
  });
}(window.jQuery, window, document));
