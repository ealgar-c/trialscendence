document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('miBoton').addEventListener('click', function() {
        fetch('/click/', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRFToken': getCookie('csrftoken')  // Asegúrate de manejar CSRF adecuadamente
            },
        })
        .then(response => response.json())
        .then(data => {
            if (data.status === 'success') {
                document.getElementById('clickCount').innerText = data.count;
            }
        });
    });

    function getCookie(name) {
        let cookieValue = null;
        if (document.cookie && document.cookie !== '') {
            const cookies = document.cookie.split(';');
            for (let i = 0; i < cookies.length; i++) {
                const cookie = cookies[i].trim();
                if (cookie.substring(0, name.length + 1) === (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
});
