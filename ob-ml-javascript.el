;;; ob-ml-javascript.el --- org-babel functions for MarkLogic Javascript evaluation

;; Copyright (C) 2016,2019 Norman Walsh

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary:

;; This file provides JavaScript support.  See ob-ml-marklogic.el.

;;; Code:

(require 'ob)
(require 'ob-ml-common)

(defvar org-babel-default-header-args:ml-javascript
  ob-ml-common-default-header-args)

(defun org-babel-execute:ml-javascript (body params)
  "Execute the query in BODY using the specified PARAMS.
The code is executed by passing it to MarkLogic for evaluation.
This function is called by `org-babel-execute-src-block'."
  (ob-ml-common-execute body params "javascript"))

(defun org-babel-prep-session:ml-javascript (session params)
  "Raise an error if a SESSION is passed with PARAMS.
I haven't a clue what sessions are at the moment."
  (error "MarkLogic sessions are not supported at this time"))

(provide 'ob-ml-javascript)

;;; ob-ml-javascript.el ends here
