<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Secure Login</title>
  <style>
    body {
      background: #0a0a0a;
      color: #e5e5e5;
      font-family: Consolas, monospace;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
    }
    .box {
      background: #111;
      padding: 40px;
      border: 1px solid #333;
      width: 320px;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      background: #000;
      border: 1px solid #333;
      color: #e5e5e5;
    }
    button {
      width: 100%;
      padding: 10px;
      background: #222;
      border: 1px solid #444;
      color: #e5e5e5;
      cursor: pointer;
    }
    #error {
      color: #ff4d4d;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div class="box">
    <h2>LOGIN PORTAL</h2>
    <input id="user" type="text" placeholder="username" />
    <input id="pass" type="password" placeholder="password" />
    <button onclick="login()">ENTER</button>
    <div id="error"></div>
  </div>

  <script>
    const correctUser = "admin"; // change to your clue username
    const correctPass = "delta42"; // change to your clue password

    function login() {
      const u = document.getElementById("user").value;
      const p = document.getElementById("pass").value;

      if (u === correctUser && p === correctPass) {
        window.location.href = "next.html"; // page unlocked
      } else {
        document.getElementById("error").textContent = "ACCESS DENIED";
      }
    }
  </script>
</body>
</html>
