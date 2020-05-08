;;; iceberg.el --- Well-designed, eye-friendly, dark blue color scheme  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; Version: 0.0.1
;; Keywords: convenience
;; Package-Requires: ((emacs "26.1") (solarized-theme "1.3"))
;; URL: https://github.com/conao3/iceberg.el

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Well-designed, eye-friendly, dark blue color scheme.


;;; Code:

(require 'solarized-theme)

(defgroup iceberg nil
  "Well-designed, eye-friendly, dark blue color scheme."
  :prefix "iceberg-"
  :group 'tools
  :link '(url-link :tag "Github" "https://github.com/conao3/iceberg.el"))

(defvar solarized-use-less-bold)
(defvar solarized-scale-org-headlines)
(defvar solarized-distinct-fringe-background)

(defun iceberg-dark-load-theme ()
  "Create iceberg color theme using solarized API.

Solarized config pallete.

brightest                                   darkest
base03 base02 base01 base00 base0 base1 base2 base3

topic 8 colors
yellow orange red magenta violet blue cyan green"
  (interactive)

  (setq solarized-use-less-bold t)
  (setq solarized-scale-org-headlines nil)
  (setq solarized-distinct-fringe-background t)
  (solarized-create-theme-file-with-palette 'dark 'solarized-iceberg-dark
    '("#161821" "#c6c8d1" "#e2a478" "#e27878" "#e27878" "#84a0c6" "#a093c7" "#b4be82" "#89b8c2" "#84a0c6")
    '((custom-theme-set-faces
       theme-name
       `(default ((,class (:foreground ,base3 :background ,base03))))
       `(vertical-border ((,class (:foreground ,base03))))
       `(mode-line ((,class (:foreground ,base2 :background ,base02))))
       `(mode-line-inactive ((,class (:foreground ,base0 :background ,base03)))))))
  (load-theme 'solarized-iceberg-dark t))

(provide 'iceberg)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:

;;; iceberg.el ends here
