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
//= require_tree .
$(function() {
  var amapApiKey = "<%= Figaro.env.amap_api_key %>";
  var map = new AMap.Map('map', {
    resizeEnable: true,
    center: [120.382640,36.067082],
    zoom: 13
  });

  var markers = [    {      position: [120.355920,36.082834],
      title: '青岛市政府',
      content: '<div><h3>青岛市政府</h3><p>地址：青岛市市南区中山路1号</p ></div>'
    },
    {
      position: [120.355682,36.082011],
      title: '青岛市博物馆',
      content: '<div><h3>青岛市博物馆</h3><p>地址：青岛市市南区馆陶路26号</p ></div>'
    },
    {
      position: [120.369710,36.082787],
      title: '青岛市图书馆',
      content: '<div><h3>青岛市图书馆</h3><p>地址：青岛市市南区馆陶路3号</p ></div>'
    }
  ];

  markers.forEach(function(marker) {
    var marker = new AMap.Marker({
      position: marker.position,
      title: marker.title,
      map: map
    });
    marker.on('click', function() {
      var infoWindow = new AMap.InfoWindow({
        content: marker.content,
        offset: new AMap.Pixel(0, -23)
      });
      infoWindow.open(map, marker.getPosition());
    });
  });
});
