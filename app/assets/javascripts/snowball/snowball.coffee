prev_handler = window.onload;

window.onload = ->
 if prev_handler
      prev_handler()

  root = document.documentElement;
  leftEye = document.querySelector "[data-eye='left']"
  rightEye = document.querySelector "[data-eye='right']"

  animations = ["blink-move", "blink-static", "smile", "disable"]
  # animations = ["disable"]
  currentAnimation = ""
  animationDuration = 3000

  setInterval (->
    unless document.querySelector "[class*='eye--left eye--']"
      currentAnimation = animations[Math.floor(Math.random()*animations.length)]
      animationDuration = Math.random() * (2000 - 3000) + 3000

    root.style.setProperty "--animation-duration", animationDuration + "ms"
    root.style.setProperty "--rng", (Math.random() * (-1.5 - 1.5) + 1.5).toFixed(3)

    leftEye.classList.toggle "eye--" + currentAnimation
    rightEye.classList.toggle "eye--" + currentAnimation
  ), animationDuration
