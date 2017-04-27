function initMap() {
    var lcb = { lat: 4.8857, lng: 114.9317 };
    var map = new google.maps.Map(document.getElementById('lcbMap'), {
        zoom: 16,
        center: lcb
    });
    var marker = new google.maps.Marker({
        position: lcb,
        map: map
    });
}
