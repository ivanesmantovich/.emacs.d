;;; init-helper-functions.el --- My helper functions -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(defun open-projects-job ()
  "Open the directory with the current job projects."
  (interactive)
  (switch-to-buffer (find-file "~/projects/job/")))

(defun open-projects-pets ()
    "Open the pet-projects directory."
    (interactive)
    (switch-to-buffer (find-file "~/projects/pets/")))

(defun open-tasks-job ()
  "Open the org-file with tasks at the current job."
  (interactive)
  (switch-to-buffer (find-file "~/org/money/goodt/tasks.org")))

(defun open-tasks-petprojects ()
  "Open the org-file with my pet-project tasks."
  (interactive)
  (switch-to-buffer (find-file "~/org/projects/tasks.org")))

(defun open-notes ()
  "Open the directory with my notes."
  (interactive)
  (switch-to-buffer (find-file "~/org/notes/")))

(provide 'init-helper-functions)
;;; init-helper-functions.el ends here
