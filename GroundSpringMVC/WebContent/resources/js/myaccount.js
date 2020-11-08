document.addEventListener("DOMContentLoaded", function() {
	var toSend = document.getElementsByClassName("toSend")

	for (index in toSend) {
		if (index % 2 === 0) {
			i = index / 2;
			var productName = document.getElementsByName("subscriptions[" + i + "].product.productName")[0].value;
			var bbox = document.getElementsByName("subscriptions[" + i + "].bbox").innerHTML;
			var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
				+ productName + "&styles=default&srs=EPSG:4326&bbox="
				+ bbox + "width=780&height=330&format=image/png";
			if (toSend[index].checked === true) {
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].destinationType")) { e.hidden = false; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].url")) { e.innerHTML = productName; e.hidden = true; }
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].url")) { e.hidden = true; }
			}
			else {
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].destinationType")) { e.hidden = true; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].destinationType")) { e.hidden = true; e.checked = false; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].destination")) { e.hidden = true; e.value = ""; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].url")) { e.innerHTML = productName; e.hidden = false; }
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].url")) { e.hidden = false; }
				document.getElementById("urlLink").href = url;
			}
		}
	}
});

$('input[class="toSend"]').click(function() {
	var index = this.name.substring(14, 15);
	var productName = document.getElementsByName("subscriptions[" + index + "].product.productName")[0].value;
	var bbox = document.getElementsByName("subscriptions[" + i + "].bbox")[0].value;
	var url = "http://localhost:8080/geoserver/wms?request=GetMap&service=WMS&version=1.1.1&layers="
		+ productName + "&styles=default&srs=EPSG:4326&bbox="
		+ bbox + "width=780&height=330&format=image/png";
	if (this.value === "true") {
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].destinationType")) { e.hidden = false; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].url")) { e.innerHTML = productName; e.hidden = true; }
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].url")) { e.hidden = true; }
	}
	else {
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].destinationType")) { e.hidden = true; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].destinationType")) { e.hidden = true; e.checked = false; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].destination")) { e.hidden = true; e.value = ""; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].url")) { e.innerHTML = productName; e.hidden = false; }
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].url")) { e.hidden = false; }
		document.getElementById("urlLink").href = url;
	}
});

$('input[class="destinationType"]').click(function() {
	var index = this.name.substring(14, 15);
	if (this.value === "sftp") {
		if (this.checked) {
			for (let e of document.getElementsByClassName("subscriptions[" + index + "].destination")) { e.hidden = false; e.required = true; }
		} else {
			for (let e of document.getElementsByClassName("subscriptions[" + index + "].destination")) { e.hidden = true; e.value = ""; e.required = false; }
		}
	}
});

$(document).ready(function() {
	$('input[id="userSave"]').attr('disabled', true);
	$('input[id="password"]').on('keyup', function() {
		var textarea_value = $('input[id="password"]').val() != '' ? true : false;
		if (textarea_value) {
			$('input[id="userSave"]').attr('disabled', false);
		} else {
			$('input[id="userSave"]').attr('disabled', true);
		}
	});
});