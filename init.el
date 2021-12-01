;; Change to your .emacs.d/ directory accordingly
(setq user-emacs-directory "~/.emacs.d")

(require 'package)

(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; Bootstrap `use-package'
;; http://www.lunaryorn.com/2015/01/06/my-emacs-configuration-with-use-package.html
;; use-package autoloads will make sure it get pulled in at the right time
;; read "package autoloads":  http://www.lunaryorn.com/2014/07/02/autoloads-in-emacs-lisp.html
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

(use-package org
  :ensure t)

(use-package evil
  :ensure t
  :config
  (evil-mode 1))

(desktop-save-mode 1)

;; Change to the path where you cloned the config to
(org-babel-load-file "~/.emacs.d/myinit.org")

