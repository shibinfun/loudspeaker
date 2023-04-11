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
