
function fetchMessage() {
    fetch("/api/message")
      .then(res => res.json())
      .then(data => {
        document.getElementById("message").innerText = data.message;
      });
  }
  