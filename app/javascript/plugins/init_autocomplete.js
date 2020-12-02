import places from 'places.js';
console.log("hello");
const initAutocomplete = () => {
	const addressInput = document.getElementById('search-home');
	console.log("aaaa");
	console.log(addressInput);
	if (addressInput) {
		places({ container: addressInput });
	}
};

export { initAutocomplete };