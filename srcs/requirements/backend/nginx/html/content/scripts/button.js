document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('miBoton').addEventListener('click', function() {
        fetch('http://localhost:8000/', {
            method: 'GET'
        })
        .then(response => {
			console.log("Response received from backend");
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    });
});
