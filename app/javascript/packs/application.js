// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import "bootstrap"
import $ from 'jquery';
global.$ = jQuery;

//= require bootstrap-modal

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")

$(document).ready( function () {
    $('#example').DataTable();
} );

$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
})