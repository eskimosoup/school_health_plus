function setTime() {
  var ct = new Date();
  var seconds = ct.getSeconds();
  if (seconds < 10)
  {
	  seconds = "0" + seconds;	
  }
  var minutes = ct.getMinutes();
  if (minutes < 10)
  {
	  minutes = "0" + minutes;	
  }
  var hours = ct.getHours();
  if (hours < 10)
  {
	  hours = "0" + hours;
  }
  document.getElementById("time").innerHTML = hours + ":" + minutes + ":" + seconds;
  //]]>
}
setInterval(function(){setTime();}, 1000);
