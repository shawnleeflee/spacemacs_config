;; this is my org init file


;; code exec
;; enable python for in-buffer evaluation
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)
   (java . t)
   (sh . t)
   (emacs-lisp . t)
   (C . t)))
;; do not show images
(setq org-startup-with-inline-images nil)
;; bullet setting
;;(setq org-bullets-bullet-list '("☯" "☢" "♠" "◆"))
;; default  ◉  ○ ✸ ✿
;; ♥ ● ◇ ✚ ✜ ☯ ◆ ♠ ♣ ♦ ☢ ❀ ◆ ◖ ▶
;; ► • ★ ▸
;; ✴ +_+

;; File setup
(setq org-agenda-files (quote ("e:/Documents/org/task.org"
                               "e:/Documents/org/inbox.org"
                               "e:/Documents/org/finished.org"
                               "e:/Documents/org/project.org"
                               "e:/Documents/org/ever_notes.org"
                               )))
(setq org-directory "E:/Documents/org")
(setq org-default-notes-file "e:/Documents/org/evernotes.org")

;; TODO keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t!)" "NEXT(n!)" "|" "DONE(d!)")
              (sequence "IDEA(i@/!)" "HOLD(h@/!)" "ROUTINE(r!)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("IDEA" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("ROUTINE" :foreground "orange" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

;; TODO state triggers
;; (setq org-todo-state-tags-triggers
;;       (quote (("CANCELLED" ("CANCELLED" . t))
;;               ("IDEA" ("WAITING" . t))
;;               ("HOLD" ("WAITING") ("HOLD" . t))
;;               (done ("WAITING") ("HOLD"))
;;               ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
;;               ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
;;               ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))
;; set org log into :logbook:
(setq org-log-into-drawer t)

;; Capture Templates
(setq org-capture-templates
      (quote (("t" "Todo" entry (id "36b1b95e-cdfb-450b-8591-ef04e0b48915")
               "* TODO %?\nCREATED: %U\n")
              ("n" "NEXT" entry (id "27fb3238-c4c8-4984-8ced-93829e0cee44")
               "* NEXT %?\nCREATED: %U\n")
              ("i" "Idea" entry (id "27fb3238-c4c8-4984-8ced-93829e0cee44")
               "* IDEA %?\nCREATED: %U\n")
              ;; ("r" "respond" entry (file "e:/Documents/org/inbox.org")
              ;;  "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("N" "Note" entry (id "d61d7e8a-4735-4212-aedf-3d50a436a693")
               "* %?\nCREATED: %U\n")
              ("j" "Journal" entry (file+datetree "e:/Documents/org/ever_notes.org")
               "* %?\n")
              ("r" "Routine" entry (id "676020d5-7d02-4e91-9938-16160b945a16")
               "* ROUTINE %?\nCREATED: %U\n")
              
              ;;("w" "org-protocol" entry (file "e:/Documents/org/inbox.org")
              ;; "* TODO Review %c\n%U\n" :immediate-finish t)
              ;; ("m" "Meeting" entry (file "~/git/org/refile.org")
              ;;  "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ;; ("p" "Phone call" entry (file "~/git/org/refile.org")
              ;;  "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ;; ("h" "Habit" entry (file "~/git/org/refile.org")
              ;;  "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n")
              )))

;; Refile Setup
; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))
; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

;; org column ,properties, setting
;; Set default column view headings
;; (setq org-columns-default-format "%25ITEM %TODO %3PRIORITY %TAGS %14ESTIMATED_TIME{:} %CLOCKSUM_T %8CLOCKSUM")
;; (setq org-global-properties (quote (
;;                                     ("ESTIMATED_TIME_ALL" . "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")
;;                                     ("PROPERTIY" . "A B C")
;;                                     ))
      ;; )

(setq org-priority-faces (quote ((65 . "red") (66 . "yellow") (67 . "green"))))
