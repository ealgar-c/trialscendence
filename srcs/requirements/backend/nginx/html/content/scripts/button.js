document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('miBoton').addEventListener('click', function() {
        fetch('/click/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({})
        })
        .then(response => {
			console.log("Response received from backend");
        })
        .catch(error => {
            console.error('There was a problem with your fetch operation:', error);
        });
    });
});
