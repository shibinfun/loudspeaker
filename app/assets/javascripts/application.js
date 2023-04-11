// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/alert
 //= require bootstrap/dropdown
 //= require maps
//= require_tree .

function initMap() {
  const myLatLng = [36.067108, 120.382609];

  const map = new AMap.Map('map', {
    zoom: 13,
    center: myLatLng
  });

  const marker = new AMap.Marker({
    position: myLatLng,
    map: map,
    title: 'Hello World!'
  });
}

document.addEventListener('DOMContentLoaded', () => {
  const script = document.createElement('script');
  script.src = `https://webapi.amap.com/maps?v=1.4.15&key=${shibinsitemap}&callback=initMap`;
  script.defer = true;

  document.body.appendChild(script);
});
