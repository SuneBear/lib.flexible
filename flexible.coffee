((win) ->
  doc      = win.document
  docEl    = doc.documentElement

  refreshRem = ->
    width = docEl.getBoundingClientRect().width
    width = 720 if width > 720
    rem = width / 20
    rem = Math.max(24, rem)
    docEl.style.fontSize = rem + "px"
    return this

  win.addEventListener "resize", (->
    clearTimeout tid
    tid = setTimeout(refreshRem, 300)
    return
  ), false

  win.addEventListener "pageshow", ((e) ->
    if e.persisted
      clearTimeout tid
      tid = setTimeout(refreshRem, 300)
    return
  ), false

  refreshRem()

)(window)
