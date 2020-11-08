//var mymap = L.map('map').setView([38.1, -98.5556], 5).setMaxBounds(-180, 180, -180, 180);

//L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
//	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
//	maxZoom: 18,
//	id: 'mapbox/outdoors-v11',
//	tileSize: 512,
//	zoomOffset: -1,
//	accessToken: 'pk.eyJ1IjoiemNocmlzdGUiLCJhIjoiY2tnaWp6ZTFxMDcweDJ1cGQwcTc5dGk5ayJ9.Nal9tRf5gNFtQ3TpFLNDvA'
//}).addTo(mymap);
var bounds = [
	[-74.04728500751165, 40.68392799015035], // Southwest coordinates
	[-73.91058699000139, 40.87764500765852] // Northeast coordinates
];

L.mapbox.accessToken = 'pk.eyJ1IjoiemNocmlzdGUiLCJhIjoiY2tnaWp6ZTFxMDcweDJ1cGQwcTc5dGk5ayJ9.Nal9tRf5gNFtQ3TpFLNDvA';
var mymap = L.mapbox.map('map').setView([38.1, -98.5556], 5).addLayer(L.mapbox.styleLayer('mapbox://styles/zchriste/ckh1c8q0o0q8w18o3gb2o7xua'));

var popup = L.popup();

mymap.on('load', function() {
	$("#bbox").attr("value", mymap.getBounds().toBBoxString());
})

mymap.on('moveend', function() {
	var bbox = mymap.getBounds().toBBoxString();
	$("#bbox").attr("value", bbox);
	var productId = document.getElementsByName("product.productId")[0].selectedIndex;
	var productName = document.getElementsByName("product.productId")[0][productId].innerHTML;
	if (productName !== '--Please Select') {
		var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
			+ productName + "&styles=default&srs=EPSG:4326&bbox="
			+ bbox + "width=780&height=330&format=image/png";
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; }
	} else {
		var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers={ProductName}&styles=default&srs=EPSG:4326&bbox="
			+ bbox + "width=780&height=330&format=image/png";
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; }
	}
});

$(document).ready(readyFn);

function readyFn() {
	var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers={ProductName}&styles=default&srs=EPSG:4326&bbox={BBox}&width=780&height=330&format=image/png";
	document.getElementsByName("url").innerHTML = url;
}

$('select[name="product.productId"]').click(function() {
	var productId = document.getElementsByName("product.productId")[0].selectedIndex;
	var productName = document.getElementsByName("product.productId")[0][productId].innerHTML;
	var bbox = mymap.getBounds().toBBoxString();
	if (productName !== '--Please Select') {
		var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
			+ productName + "&styles=default&srs=EPSG:4326&bbox="
			+ bbox + "width=780&height=330&format=image/png";
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; }

	} else {
		var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers={ProductName}&styles=default&srs=EPSG:4326&bbox="
			+ bbox + "width=780&height=330&format=image/png";
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; }
	}
})

$('input[name="toSend"]').click(function() {
	var productId = document.getElementsByName("product.productId")[0].selectedIndex;
	var productName = document.getElementsByName("product.productId")[0][productId].innerHTML;
	var bbox = mymap.getBounds().toBBoxString();
	var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
		+ productName + "&styles=default&srs=EPSG:4326&bbox="
		+ bbox + "width=780&height=330&format=image/png";
	if (this.value === "true") {
		for (let e of document.getElementsByName("destinationType")) { e.hidden = false; }
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; e.hidden = true; }
		for (let e of document.getElementsByName("urlLabel")) { e.hidden = true; }
	}
	else {
		for (let e of document.getElementsByName("destinationType")) { e.hidden = true; e.checked = false; }
		for (let e of document.getElementsByName("destination")) { e.hidden = true; e.value = ""; }
		for (let e of document.getElementsByName("url")) { e.innerHTML = url; e.hidden = false; }
		for (let e of document.getElementsByName("urlLabel")) { e.hidden = false; }
		document.getElementById("urlLink").href = url;
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