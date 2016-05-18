console.log("Hello!");

var thePic = document.getElementById("bourbon_street");
var secondPic = thePic.cloneNode(false);
var theDiv = document.getElementById("theDiv");
theDiv.appendChild(secondPic);

function switchPar(event){
	var text1 = document.getElementById("text1");
	var text2 = document.getElementById("text2");
	theDiv.insertBefore(text2, text1);
}

thePic.addEventListener("click", switchPar);