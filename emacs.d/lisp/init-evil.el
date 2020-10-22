;;; init-evil.el --- Settings for evil mode -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(eval-when-compile
  (require 'cl-lib))

(use-package evil
  :config
  (evil-mode 1))

(use-package evil-ledger
  :requires (evil ledger-mode)
  :config
  (setq evil-ledger-sort-key "S")
  (add-hook 'ledger-mode-hook #'evil-ledger-mode))

(use-package evil-surround
  :config
  (global-evil-surround-mode 1))

(use-package evil-snipe
  :delight evil-snipe-local-mode
  :requires evil
  :config
  (evil-snipe-mode 1)
  (evil-snipe-override-mode 1)
  (setq evil-snipe-scope 'buffer
        evil-snipe-repeat-scope 'buffer
        evil-snipe-spillover-scope 'whole-buffer))

(provide 'init-evil)
;;; init-evil.el ends here