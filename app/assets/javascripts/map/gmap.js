// $(document).ready(function(){

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 41.1810055, lng: -74.3380419},
    zoom: 5
  });
}

// var marker = new google.maps.LatLng(41.1810055, -74.3380419);
var location = new google.maps.LatLng(41.1810055, -74.3380419);

var marker = new google.maps.Marker({
	 position: location,
      map: map,
      title: 'Weed Pens',
      visible: true
	});
 	marker.setMap(map);
	

var geocoding  = new google.maps.Geocoder();
$("#submit_button_geocoding").click(function(){
  codeAddress(geocoding);
});
$("#submit_button_reverse").click(function(){
  codeLatLng(geocoding);
});

function codeAddress(geocoding){
  var address = $("#search_box_geocoding").val();
  if(address.length > 0){
    geocoding.geocode({'address': address},function(results, status){
      if(status == google.maps.GeocoderStatus.OK){
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
        });
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  } else {
    alert("Search field can't be blank");
  		}
  	}
	
// });

  // var marker = new google.maps.Marker({
  //   position: {lat: 41.1810055, lng: -74.3380419},
  //   map: map,
  //   title: 'Weed Pens!'
  // });



 // var image = '/images/weed.jpg';
 //  var weedMarker = new google.maps.Marker({
 //    position: {lat: 41.1810055, lng: -74.3380419},
 //    map: map,
 //    icon: image
 //  });

	// var marker;
	// function createMarker(coords, map, title){
 //  		marker = new google.maps.Marker({
 //    	position: coords,
 //    	map: map,
 //    	title: title
 // 	 });
 //  	}








