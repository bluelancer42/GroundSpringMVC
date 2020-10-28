var mymap = L.map('map').setView([38.1, -98.5556], 5);

L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
	maxZoom: 18,
	id: 'mapbox/satellite-streets-v11',
	tileSize: 512,
	zoomOffset: -1,
	accessToken: 'pk.eyJ1IjoiemNocmlzdGUiLCJhIjoiY2tnaWp6ZTFxMDcweDJ1cGQwcTc5dGk5ayJ9.Nal9tRf5gNFtQ3TpFLNDvA'
}).addTo(mymap);

var popup = L.popup();

mymap.on('load', function() {
	$("#bbox").attr("value", mymap.getBounds().toBBoxString());
})

mymap.on('moveend', function() {
	$("#bbox").attr("value", mymap.getBounds().toBBoxString());
});

$('input[name="toSend"]').click(function() {
	if (this.value === "true") {
		for (let e of document.getElementsByName("destinationType")) { e.hidden = false; }
	}
	else {
		for (let e of document.getElementsByName("destinationType")) { e.hidden = true; e.checked = false; }
		for (let e of document.getElementsByName("destination")) { e.hidden = true; e.value = ""; }
	}
});

$('input[name="destinationType"]').click(function() {
	if (this.value === "sftp") {
		if (this.checked) {
			for (let e of document.getElementsByName("destination")) { e.hidden = false; e.required = true; }
		} else {
			for (let e of document.getElementsByName("destination")) { e.hidden = true; e.value = ""; e.required = false; }
		}
	}
});