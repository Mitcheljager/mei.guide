(function(){window.onload,document.addEventListener("turbolinks:load",function(){var e,t,n,o,a,l;return l=document.documentElement,o=document.querySelector("[data-eye='left']"),a=document.querySelector("[data-eye='right']"),t=["blink-move","blink-static","smile","disable"],n="",e=3e3,setInterval(function(){return document.querySelector("[class*='eye--left eye--']")||(n=t[Math.floor(Math.random()*t.length)],e=-1e3*Math.random()+3e3),l.style.setProperty("--animation-duration",e+"ms"),l.style.setProperty("--rng",(-3*Math.random()+1.5).toFixed(3)),o.classList.toggle("eye--"+n),a.classList.toggle("eye--"+n)},e)})}).call(this);