// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// Core libraries
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// jQuery (as a read only property so browser extensions can't clobber it)
const jquery = require("jquery")
const descriptor = { value: jquery, writable: false, configurable: false }
Object.defineProperties(window, { $: descriptor, jQuery: descriptor })

// AppJs libraries
require("bootstrap")
require("jquery.nicescroll")

require("select2")
require("cleave.js")
require("waypoints/lib/noframework.waypoints")
require("waypoints/lib/shortcuts/infinite")
require("chart.js")

window.iziToast = require("izitoast")

// Stisla
require("../src/utils/vendors/stisla/stisla")
require("../src/utils/vendors/stisla/scripts")
require('/vendor/page/bootstrap-modal')
require("/vendor/page/modules-chartjs")
