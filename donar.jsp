<html> 

<head> 
<% String email=(String) session.getAttribute("username");
    %>
    <% out.println("welcome: "+email);
    %>
    <style>
        *{
            margin:0px;
            padding:0px;
        }
        #k{
    text-align: center;
    color:black;
}
#j,#s{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
    margin: 41px;
}  
#l,#m,#n,#x,#y,#z{
    width: 29vw;
    height: 360px;
    border: 2px solid black;
    background-repeat: no-repeat;
     background-position: 50px 100px; 
     background-size: 60px;
    display: flex;
    justify-content:center;
    align-items:flex-end;
    border-radius: 15px;
}
#m
{
    background:url('liver.jpg') ;
    background-repeat: no-repeat;
    background-size: cover;
}
#l{
    background:url('heart.jpg') ;
    background-repeat: no-repeat;
    background-size: 500px 350px;
}
#n{
    background:url('kidney.jpg') ;
    background-repeat: no-repeat;
    background-size: cover;
}
#x{
    background:url('lungs.jpg') ;
    background-repeat: no-repeat;
    background-size: cover;
}
#y{
    background:url('pancreas.jpg') ;
    background-repeat: no-repeat;
    background-size: cover;
}
#z{
    background:url('smallbowel.jpg') ;
    background-repeat: no-repeat;
    background-size: cover;
}
footer{
    text-align:right;
}
.p
{
    font-size: 20px;
    font-style: italic;
    margin-top:0X;
    margin-left:1300px;
    text-decoration:none;

}
.l{
text-decoration:none;
}
body {
             text-overflow: unset;
        overflow-x: hidden;

        }

     </style>
</head> 

<body bgcolor="pink"> 
	<h1 id="k">BODY ORGANS ARE</h1> 
	<h2 class="l"><a href=main1.html>LOGOUT</a></h2>
    <h3 class="p"><a  href=reg1.html>CLICK TO DoNATE</a></h3>
	<div id="j"> 
		<div id="l"> 
			<button class="b"><a href="https://www.organdonation.nhs.uk/helping-you-to-decide/about-organ-donation/what-can-you-donate/about-heart-donation/">CLICK</a></button> 
		</div> 
		<div id="m"> 
			<button class="b"><a href=""><h3>CLICK</h3></a></button> 
		</div> 
		<div id="n"> 
			<button class="b"><a href=""><h3>CLICK</h3></a></button> 
		</div>
    </div> 
    <div id="s">
		<div id="x"> 
			<button class="b"><a href =""><h3>CLICK</h3></a></button> 
		</div> 
		<div id="y"> 
			<button class="b"><a href =""><h3>CLICK</a></button> 
		</div> 
		<div id="z"> 
			<button class="b"><a href =""><h3>CLICK</a></button> 
		</div>
     </div>        

	

      <footer >
              <b><p>sindhumandadapu@gmail.com</p></b>
              <b><P>MYLAVARAM</p> </b> 
              <b><P>NTR DIST,AP</p> </b>

</footer>
</body> 
</html>