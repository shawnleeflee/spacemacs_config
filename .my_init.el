;; this is my init file (load after spacemacs loaded)
;; three block : variable setting , function define , key-binding , other, command



;;;;           *variable setting*
;;(setq global-company-mode t)
;; spaceline setting
(setq powerline-default-separator 'nil)
(setq spaceline-minor-modes-p 'nil)
(setq display-time-day-and-date t
      display-time-24hr-format t)

;; do not use auto backup
(setq make-backup-files nil)
(setq org-startup-truncated nil)
;; (setq default-truncate-lines nil)
;; (setq truncate-lines nil)

;; use ascii window-numbers instead of unicode numbers
(setq spaceline-window-numbers-unicode nil)
(setq spaceline-workspace-numbers-unicode nil)

;; smooth scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control))))


;;;;          *function define*
;; quick open init file
;; (defun fun/open-my-note-file()
;;  (interactive)
;;  (find-file "d:/0-document/2-personal/org/ever_notes.org"))
(defun fun/open-my-init-file()
  (interactive)
  (find-file "~/.my_init.el"))
(defun fun/open-org-init-file()
  (interactive)
  (find-file "~/.org_init.el"))
(defun fun/open-pre-init-file()
  (interactive)
  (find-file "~/.pre_init.el"))

;; ;; refile to specific location
;; (defun fun/refile-to (file headline)
;;   "move current headline to specified location"
;;   (let ((pos (save-excursion
;;                (find-file file)
;;                (org-find-exact-headline-in-buffer headline))))
;;     (org-refile nil nil (list headline file nil pos))))
;; (defun fun/refile-to-dropbox ()
;;   "move current headline to dropbox"
;;   (interactive)
;;   (org-mark-ring-push)
;;   (fun/refile-to "d:/0-document/2-personal/org/finished.org" "Dropbox")
;;   (org-mark-ring-goto))
;; (defun fun/refile-to-tasks ()
;;   "move current headline to tasks"
;;   (interactive)
;;   (org-mark-ring-push)
;;   (fun/refile-to "d:/0-document/2-personal/org/task.org" "Tasks")
;;   (org-mark-ring-goto))
;; ;; auto refile done and todo item
;; (defun fun/refile-done-item()
;;   (interactive)
;;   (if (equal org-state "DONE")
;;        (if (y-or-n-p "Refile to dropbox? ")
;;           (fun/refile-to-dropbox))))
;; (defun fun/refile-todo-item()
;;   (interactive)
;;   (if (equal org-state  "TODO")
;;        (if (y-or-n-p "Refile to tasks? ")
;;           (fun/refile-to-tasks))))
;; ;; (add-hook 'org-after-todo-state-change-hook
;; ;;           'fun/refile-done-item)
;; ;; (add-hook 'org-after-todo-state-change-hook
;; ;;           'fun/refile-todo-item)


;;;;         *key binding*
;; self define function prefix SPC o
(spacemacs/set-leader-keys "oi" 'fun/open-my-init-file)
(spacemacs/set-leader-keys "oo" 'fun/open-org-init-file)
(spacemacs/set-leader-keys "op" 'fun/open-pre-init-file)
;; (spacemacs/set-leader-keys "ou" 'fun/open-my-note-file)
;; quick edit and navigate prefix SPC d
;; (spacemacs/set-leader-keys "da" 'mwim-beginning-of-code-or-line)
;; (spacemacs/set-leader-keys "de" 'mwim-end-of-line-or-code)
;; (spacemacs/set-leader-keys "dn" 'scroll-up-command)
;; (spacemacs/set-leader-keys "dp" 'scroll-down-command)

;; save desktop config
;; (spacemacs/set-leader-keys "os" 'desktop-save-in-desktop-dir)
;; (spacemacs/set-leader-keys "or" 'desktop-read)

;; eyebrowse key binding
(spacemacs/set-leader-keys "e<" 'eyebrowse-prev-window-config)
(spacemacs/set-leader-keys "e>" 'eyebrowse-next-window-config)
(spacemacs/set-leader-keys "e'" 'eyebrowse-last-window-config)
(spacemacs/set-leader-keys "e\"" 'eyebrowse-close-window-config)
(spacemacs/set-leader-keys "e," 'eyebrowse-rename-window-config)
;; (spacemacs/set-leader-keys "e." 'eyebrowse-switch-to-window-config)
(spacemacs/set-leader-keys "e0" 'eyebrowse-switch-to-window-config-0)
(spacemacs/set-leader-keys "e1" 'eyebrowse-switch-to-window-config-1)
(spacemacs/set-leader-keys "e2" 'eyebrowse-switch-to-window-config-2)
(spacemacs/set-leader-keys "e3" 'eyebrowse-switch-to-window-config-3)
(spacemacs/set-leader-keys "e4" 'eyebrowse-switch-to-window-config-4)
(spacemacs/set-leader-keys "e5" 'eyebrowse-switch-to-window-config-5)
(spacemacs/set-leader-keys "e6" 'eyebrowse-switch-to-window-config-6)
(spacemacs/set-leader-keys "e7" 'eyebrowse-switch-to-window-config-7)
(spacemacs/set-leader-keys "e8" 'eyebrowse-switch-to-window-config-8)
(spacemacs/set-leader-keys "e9" 'eyebrowse-switch-to-window-config-9)
(spacemacs/set-leader-keys "ec" 'eyebrowse-create-window-config)

;; org key binding
(global-set-key "\C-cb" 'org-iswitchb)
(spacemacs/set-leader-keys "bo" 'org-iswitchb)
(global-set-key "\C-cw" 'org-refile)
;; (spacemacs/set-leader-keys "ot" 'fun/refile-to-tasks)
;; (spacemacs/set-leader-keys "od" 'fun/refile-to-dropbox)



;;;;         *other*
;; growlnotify setting with pomodoro
;; (setq todochiku-command "C:/Program Files (x86)/Growl for Windows/growlnotify.exe")
;; (add-to-load-path "~/.emacs-cfg/")
;; (require 'todochiku)
;; (add-hook 'org-pomodoro-finished-hook '(lambda () (todochiku-message "Pomodoro Finished" "Have a break!" 'clean)))
;; (add-hook 'org-pomodoro-short-break-finished-hook '(lambda () (todochiku-message "Short Break" "Ready to Go?" 'bell)))
;; (add-hook 'org-pomodoro-long-break-finished-hook '(lambda () (todochiku-message "Long Break" "Ready to Go?" 'bell)))





;;;;           *command*
;; (display-time)
;; (setq dotspacemacs-active-transparency 75)
(spacemacs/toggle-transparency)
(dolist (charset '(kana han cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
                    (font-spec :family "微软雅黑" :size 20)))
;; set fringe width
(fringe-mode 1)
;; open file
;; (fun/open-my-note-file)
;; (desktop-read)
