;;; init-projectile.el --- Projectile settings -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package projectile
  :demand
  :delight
  :config
  (projectile-mode 1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :custom
  (projectile-completion-system 'helm)
  (projectile-project-search-path '("~/workspace/" "~/pws")))

(use-package helm-projectile
  :requires (projectile helm)
  :config
  (helm-projectile-on))

(provide 'init-projectile)
;;; init-projectile.el ends here
