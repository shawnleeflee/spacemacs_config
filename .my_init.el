(global-company-mode t)

;; do not use auto backup
(setq make-backup-files nil)
(spacemacs/toggle-transparency)
(find-file "d:/0-document/2-personal/org/ever_notes.org")

(setq org-startup-truncated nil)
(setq default-truncate-lines nil)
(setq truncate-lines nil)

;; quick open init file
(defun fun/open-my-init-file()
  (interactive)
  (find-file "~/.my_init.el"))
(defun fun/open-org-init-file()
  (interactive)
  (find-file "~/.org_init.el"))
(defun fun/open-pre-init-file()
  (interactive)
  (find-file "~/.pre_init.el"))

;; refile to specific location
(defun fun/refile-to (file headline)
  "move current headline to specified location"
  (let ((pos (save-excursion
               (find-file file)
               (org-find-exact-headline-in-buffer headline))))
    (org-refile nil nil (list headline file nil pos))))
(defun fun/refile-to-dropbox ()
  "move current headline to dropbox"
  (interactive)
  (org-mark-ring-push)
  (fun/refile-to "d:/0-document/2-personal/org/ever_notes.org" "Dropbox")
  (org-mark-ring-goto))
(defun fun/refile-to-task ()
  "move current headline to tasks"
  (interactive)
  (org-mark-ring-push)
  (fun/refile-to "d:/0-document/2-personal/org/ever_notes.org" "Tasks")
  (org-mark-ring-goto))

(defun fun/archive-done-item()
  (if (string-equal org-last-todo-state-is-todo nil)
      (fun/refile-to-dropbox)))
(defun fun/archive-todo-item()
  (if (string-equal org-last-todo-state-is-todo t)
      (fun/refile-to-dropbox)))


(add-hook 'org-after-todo-state-change-hook
          'fun/archive-done-item)
