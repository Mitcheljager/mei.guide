prev_handler = window.onload;

window.onload = ->
  if prev_handler
       prev_handler()

  toggler = document.querySelectorAll "[data-toggle-content]"

  document.onclick = (event) ->
    _this = event.target

    if _this.matches "[data-toggle-content]"
      sources = _this.querySelectorAll "[data-src]"

      i = 0
      len = sources.length
      while i < len
        source = sources[i].getAttribute "src"

        unless source
          source = sources[i].getAttribute "data-src"
          sources[i].setAttribute "src", source

        i++
