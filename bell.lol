<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>bell.lol</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial, sans-serif;
}

body{
background:#0d1117;
color:white;
}

/* NAVBAR */

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
padding:20px 60px;
background:rgba(20,20,20,0.7);
backdrop-filter:blur(10px);
}

.logo{
font-weight:bold;
font-size:22px;
background: linear-gradient(90deg,#a855f7,#3b82f6);
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
text-shadow:0 0 12px rgba(139,92,246,0.5);
}

.nav-links a{
margin:0 15px;
text-decoration:none;
color:#ccc;
font-size:14px;
}

.nav-links a:hover{
color:white;
}

/* HERO */

.hero{
text-align:center;
padding:80px 20px;
}

.hero h1{
font-size:64px;
font-weight:bold;
background: linear-gradient(90deg,#a855f7,#3b82f6);
-webkit-background-clip:text;
-webkit-text-fill-color:transparent;
text-shadow:0 0 20px rgba(139,92,246,0.6);
}

.hero p{
margin-top:10px;
color:#aaa;
font-size:18px;
}

/* SEARCH */

.search{
max-width:900px;
margin:40px auto;
background:#11151c;
padding:25px;
border-radius:12px;
border:1px solid #1f2937;
}

.search input{
width:100%;
padding:14px;
background:#0d1117;
border:1px solid #333;
border-radius:8px;
color:white;
font-size:15px;
}

/* CARDS */

.cards{
display:grid;
grid-template-columns:repeat(3,1fr);
gap:25px;
padding:40px 60px;
}

.card{
background:#11151c;
border-radius:12px;
overflow:hidden;
transition:0.25s;
border:1px solid #1f2937;
position: relative; /* for badge */
}

.card:hover{
transform:translateY(-6px);
box-shadow:0 10px 30px rgba(0,0,0,0.5);
}

.card img{
width:100%;
height:160px;
object-fit:cover;
}

.card-content{
padding:15px;
}

.card-content h3{
font-size:18px;
margin-bottom:5px;
}

.card-content p{
font-size:13px;
color:#aaa;
}

/* STATUS BADGE */

.status-badge {
  position: absolute;
  top: 10px;
  right: 10px;
  background: orange;
  color: white;
  font-size: 10px;
  font-weight: bold;
  padding: 5px 8px;
  border-radius: 50px;
  box-shadow: 0 0 5px rgba(0,0,0,0.5);
  animation: pulse 1.5s infinite;
}

@keyframes pulse {
  0% { transform: scale(1); box-shadow: 0 0 5px rgba(0,0,0,0.5), 0 0 5px orange; }
  50% { transform: scale(1.1); box-shadow: 0 0 10px rgba(0,0,0,0.5), 0 0 15px orange; }
  100% { transform: scale(1); box-shadow: 0 0 5px rgba(0,0,0,0.5), 0 0 5px orange; }
}

/* TERMS OF SERVICE OVERLAY */

#tosOverlay {
  position: fixed;
  top:0;
  left:0;
  width:100%;
  height:100%;
  background: rgba(0,0,0,0.95);
  color:white;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  z-index:9999;
  text-align:center;
  padding:20px;
}

#tosOverlay h2{
margin-bottom:20px;
}

#tosOverlay p{
margin-bottom:30px;
color:#ccc;
max-width:500px;
}

.tos-button{
margin: 0 10px;
padding:12px 25px;
border:none;
border-radius:8px;
font-weight:bold;
cursor:pointer;
transition:0.3s;
}

#agreeButton{
background: #22c55e;
color:white;
}

#agreeButton:hover{
box-shadow: 0 0 15px #22c55e;
}

#disagreeButton{
background: #ef4444;
color:white;
}

#disagreeButton:hover{
box-shadow: 0 0 15px #ef4444;
}

</style>
</head>

<body>

<!-- TERMS OF SERVICE OVERLAY -->
<div id="tosOverlay">
  <h2>Terms of Service</h2>
  <p>By entering this website, you agree to our terms of service. You must accept to continue browsing the games.</p>
  <div>
    <button class="tos-button" id="agreeButton">I Agree</button>
    <button class="tos-button" id="disagreeButton">I Do Not Agree</button>
  </div>
</div>

<!-- MAIN WEBSITE CONTENT -->
<div id="mainContent" style="display:none;">

<div class="navbar">
<div class="logo">
bell.lol
</div>

<div class="nav-links">
<a href="#">Home</a>
<a href="#">Explore</a>
</div>
</div>

<div class="hero">
<h1>bell.lol</h1>
<p>Browse Games about Mr. Bell</p>
</div>

<div class="search">
<input 
type="text" 
id="searchInput" 
placeholder="Search games..."
onkeyup="searchCards()">
</div>

<div class="cards">

<!-- Five nights at bells with pulsing badge -->
<div class="card">
  <img src="https://i.postimg.cc/4Nss51WL/image.png">
  <div class="status-badge">In Progress!</div>
  <div class="card-content">
    <h3>Five nights at bells</h3>
    <p>v1.0 • Fun horror game</p>
  </div>
</div>

<div class="card">
  <img src="https://i.postimg.cc/BbttQcRQ/image-2026-03-12-164927447.png">
  <div class="card-content">
    <h3>treasure doors bell edition</h3>
    <p>v2.3 • puzzle</p>
  </div>
</div>

<div class="card">
  <img src="https://i.postimg.cc/fL5y7gxn/image.png">
  <div class="card-content">
    <h3>Bell Clicker</h3>
    <p>v2.0 • Simulation game</p>
  </div>
</div>

</div>

</div>

<script>
// Search Function
function searchCards() {
  let input = document.getElementById("searchInput").value.toLowerCase();
  let cards = document.querySelectorAll(".card");
  cards.forEach(card => {
    let title = card.querySelector("h3").innerText.toLowerCase();
    if(title.includes(input)){
      card.style.display = "block";
    } else {
      card.style.display = "none";
    }
  });
}

// Terms of Service Logic
document.getElementById("agreeButton").onclick = function() {
  document.getElementById("tosOverlay").style.display = "none";
  document.getElementById("mainContent").style.display = "block";
};

document.getElementById("disagreeButton").onclick = function() {
  alert("You must agree to the Terms of Service to enter the website.");
};
</script>

</body>
</html>
