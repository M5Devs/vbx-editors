# VBX Mode for Emacs

`vbx-mode.el` is a major mode for editing Visual Basic X (`.vbx`) files in GNU Emacs.

## Features

- Syntax highlighting for keywords, builtins, numbers, strings, and comments (`'`).
- Automatic association with `.vbx` files.

## Installation & Configuration

1. Copy `vbx-mode.el` to your Emacs `load-path` (e.g. `~/.emacs.d/site-lisp/` or `~/.config/emacs/lisp/`).
2. Add the following to your Emacs configuration (`init.el` or `.emacs`):

```elisp
(add-to-list 'load-path "~/.emacs.d/site-lisp/") ; Adjust directory as needed
(require 'vbx-mode)
```

Now opening any `.vbx` file will automatically activate `vbx-mode`.
