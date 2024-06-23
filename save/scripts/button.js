document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('miBoton').addEventListener('click', function() {
        fetch('https://localhost:8080/click/', {
            method: 'POST'
        })
        .then(response => {
			console.log("Response received from backend");
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    });
});
