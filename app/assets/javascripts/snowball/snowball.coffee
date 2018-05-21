prev_handler = window.onload;

window.onload = ->
 if prev_handler
      prev_handler()

  root = document.documentElement;
  leftEye = document.querySelector "[data-eye='left']"
  rightEye = document.querySelector "[data-eye='right']"

  animations = ["blink-move", "blink-static", "smile", "disable", "idle"]
  # animations = ["disable"]
  currentAnimation = ""

  setInterval (->
    unless document.querySelector "[class*='eye--left eye--']"
      currentAnimation = animations[Math.floor(Math.random()*animations.length)]

    root.style.setProperty "--rng", (Math.random() * (-1.5 - 1.5) + 1.5).toFixed(3)

    leftEye.classList.toggle "eye--" + currentAnimation
    rightEye.classList.toggle "eye--" + currentAnimation
  ), 3000
