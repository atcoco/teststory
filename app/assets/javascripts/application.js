// This is a manifest file that'll be compiled into application.js
// 
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// Put JS file that applies to all pages under initializations directory, which
// will get required in init.js.
//
// Put JS file that only applies to a specific page under pages directory, which
// will get required in page_specific.js.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

// Bower packages

//= require rails-ujs

//= require react
//= require react_ujs

//= require jquery
//= require jquery_ujs

//= require medium-editor
//= require handlebars
//= require jquery-sortable
//= require jquery.ui.widget
//= require jquery.iframe-transport
//= require jquery.fileupload
//= require medium-editor-insert-plugin
//= require taggle
//= require jquery.autoSave
//= require pubsub
//= require bootstrap-sprockets
//= require components
//= require init
//= require page_specific
//= require components
//= require_tree

$(document).ready(function(){
    
    $("#ebook_btn").click(function(){
          $("#action_btn").text( $("#ebook_btn").html());
    });
    $("#webinar_btn").click(function(){
        $("#action_btn").text( $("#webinar_btn").html());
    });
    $("#infographic_btn").click(function(){
        $("#action_btn").text( $("#infographic_btn").html());
    });
    $("#slides_btn").click(function(){
        $("#action_btn").text( $("#slides_btn").html());
    });
});