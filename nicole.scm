; An example of how to create a floating layer and how to ancor it.
(define (script-fu-sel-copy img
                          drawable)

  (gimp-selection-clear img)
  (gimp-image-select-rectangle img CHANNEL-OP-ADD 0 0 1240 2480)
  (script-fu-selection-to-image img drawable)
  (gimp-selection-clear img)
  (gimp-image-select-rectangle img CHANNEL-OP-ADD 1240 0 1240 2480)
  (script-fu-selection-to-image img drawable)
  ; Flush output
  (gimp-displays-flush))

(script-fu-register "script-fu-sel-copy"
                    "Selection Copy"
                    "Copy the selection into the same layer"
                    "Dov Grobgeld"
                    "Dov Grobgeld"
                    "2002-02-12"
                    "RGB*, GRAY*"
                    SF-IMAGE "Image" 0
                    SF-DRAWABLE "Layer" 0)
(script-fu-menu-register "script-fu-sel-copy"
                         "<Image>/Script-Fu/Decouper image")