document.addEventListener("DOMContentLoaded", function() {
	var toSend = document.getElementsByClassName("toSend")
	for (index in toSend) {
		if (index % 2 === 0) {
			i = index / 2;
			if (toSend[index].checked === true) {
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].destinationType")) { e.hidden = false; }
			}
			else {
				for (let e of document.getElementsByClassName("subscriptions[" + i + "].destinationType")) { e.hidden = true; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].destinationType")) { e.hidden = true; e.checked = false; }
				for (let e of document.getElementsByName("subscriptions[" + i + "].destination")) { e.hidden = true; e.value = ""; }
			}
		}
	}
});

$('input[class="toSend"]').click(function() {
	var index = this.name.substring(14, 15);
	if (this.value === "true") {
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].destinationType")) { e.hidden = false; }
	}
	else {
		for (let e of document.getElementsByClassName("subscriptions[" + index + "].destinationType")) { e.hidden = true; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].destinationType")) { e.hidden = true; e.checked = false; }
		for (let e of document.getElementsByName("subscriptions[" + index + "].destination")) { e.hidden = true; e.value = ""; }
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