(setq exec-path (append exec-path '("d:/msys64/usr/bin/")))
(setenv "PATH"
        (concat
         "d:/msys64/usr/bin/"
         ";"
         (getenv "PATH")
         ))
(setq eyebrowse-keymap-prefix "")
 
