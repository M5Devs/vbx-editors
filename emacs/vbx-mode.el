;;; vbx-mode.el --- Major mode for editing Visual Basic X files -*- lexical-binding: t; -*-

;; Author: VBX Contributors
;; Keywords: languages, vbx
;; Version: 1.0.0

;;; Commentary:

;; Major mode for Visual Basic X (VBX) files.

;;; Code:

(defvar vbx-mode-syntax-table
  (let ((st (make-syntax-table)))
    ;; Apostrophe ' starts a line comment ending at newline
    (modify-syntax-entry ?' "<" st)
    (modify-syntax-entry ?\n ">" st)
    ;; Double quotes for strings
    (modify-syntax-entry ?\" "\"" st)
    st)
  "Syntax table for `vbx-mode'.")

(defvar vbx-keywords
  '("If" "Then" "Else" "ElseIf" "End" "For" "To" "Step" "Next"
    "While" "Wend" "Do" "Loop" "Select" "Case" "Exit" "Sub"
    "Function" "Return" "Dim" "Const")
  "VBX keywords.")

(defvar vbx-builtins
  '("Print" "MsgBox" "InputBox" "Len" "Left" "Right" "Mid"
    "UCase" "LCase" "InStr" "Trim" "Replace" "Str" "Val"
    "Abs" "Sqr" "Rnd" "File.Write" "File.Read")
  "VBX builtin functions.")

(defvar vbx-font-lock-keywords
  `(
    ;; Builtin functions
    (,(regexp-opt vbx-builtins 'symbols) . font-lock-builtin-face)
    ;; Keywords
    (,(regexp-opt vbx-keywords 'symbols) . font-lock-keyword-face)
    ;; Numbers
    ("\\b[0-9]+\\(\\.[0-9]+\\)?\\b" . font-lock-constant-face)
    )
  "Font lock keywords for `vbx-mode'.")

;;;###autoload
(define-derived-mode vbx-mode prog-mode "VBX"
  "Major mode for editing Visual Basic X (VBX) files."
  :syntax-table vbx-mode-syntax-table
  (setq-local font-lock-defaults '(vbx-font-lock-keywords nil t)))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.vbx\\'" . vbx-mode))

(provide 'vbx-mode)
;;; vbx-mode.el ends here
