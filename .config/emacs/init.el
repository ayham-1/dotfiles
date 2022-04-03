;; Configure package.el to include MELPA.
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/") t)
(package-initialize)

;; Ensure that use-package is installed.

(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))
  (require 'use-package)

(org-babel-load-file (concat user-emacs-directory "config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline success warning error])
 '(ansi-color-names-vector
   ["gray35" "#ff8059" "#44bc44" "#d0bc00" "#2fafff" "#feacd0" "#00d3d0" "gray65"])
 '(awesome-tray-mode-line-active-color "#2fafff")
 '(awesome-tray-mode-line-inactive-color "#323232")
 '(company-quickhelp-color-background "#3E4452")
 '(company-quickhelp-color-foreground "#ABB2BF")
 '(custom-enabled-themes '(xresources))
 '(custom-safe-themes
   '("e5dc5b39fecbeeb027c13e8bfbf57a865be6e0ed703ac1ffa96476b62d1fae84" "dad622637530638a2140b83812e159a06b4791eb2f67ffd4abb4ff671b062d0b" "aa72e5b41780bfff2ff55d0cc6fcd4b42153386088a4025fed606c1099c2d9b8" "5d6cc3e22172f051d68c0c95d79f3dff0e800f2d107f6f6b9220ed5380285c50" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "0dd2666921bd4c651c7f8a724b3416e95228a13fca1aa27dc0022f4e023bf197" "b73a23e836b3122637563ad37ae8c7533121c2ac2c8f7c87b381dd7322714cd0" "d0fb0c463d5d61e93f920e0fd1aa4c023bf719874b4d08f7f473b46c4adc0682" "6fc03df7304728b1346091dd6737cb0379f348ddc9c307f8b410fba991b3e475" "9f1d0627e756e58e0263fe3f00b16d8f7b2aca0882faacdc20ddd56a95acb7c2" "7397cc72938446348521d8061d3f2e288165f65a2dbb6366bb666224de2629bb" default))
 '(exwm-floating-border-color "#646464")
 '(flymake-error-bitmap '(flymake-double-exclamation-mark modus-themes-fringe-red))
 '(flymake-note-bitmap '(exclamation-mark modus-themes-fringe-cyan))
 '(flymake-warning-bitmap '(exclamation-mark modus-themes-fringe-yellow))
 '(hl-todo-keyword-faces
   '(("HOLD" . "#c0c530")
	 ("TODO" . "#feacd0")
	 ("NEXT" . "#b6a0ff")
	 ("THEM" . "#f78fe7")
	 ("PROG" . "#00d3d0")
	 ("OKAY" . "#4ae2f0")
	 ("DONT" . "#70b900")
	 ("FAIL" . "#ff8059")
	 ("BUG" . "#ff8059")
	 ("DONE" . "#44bc44")
	 ("NOTE" . "#d3b55f")
	 ("KLUDGE" . "#d0bc00")
	 ("HACK" . "#d0bc00")
	 ("TEMP" . "#ffcccc")
	 ("FIXME" . "#ff9077")
	 ("XXX+" . "#ef8b50")
	 ("REVIEW" . "#6ae4b9")
	 ("DEPRECATED" . "#bfd9ff")))
 '(ibuffer-deletion-face 'modus-themes-mark-del)
 '(ibuffer-filter-group-name-face 'modus-themes-pseudo-header)
 '(ibuffer-marked-face 'modus-themes-mark-sel)
 '(ibuffer-title-face 'default)
 '(org-src-block-faces 'nil)
 '(package-selected-packages
   '(xresources-theme 2048-game cyberpunk-theme one-themes kotlin-mode good-scroll org-contrib borg consult general emmet-mode web-mode embark-consult marginalia orderless vertico exec-path-from-shell exec-patch-from-shell uniquify simple-httpd auctex dap-mode lsp-mode focus avy elfeed monokai-theme use-package magit))
 '(pdf-view-midnight-colors '("#ffffff" . "#100f10"))
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#ff8059")
	 (40 . "#feacd0")
	 (60 . "#f78fe7")
	 (80 . "#ef8b50")
	 (100 . "#d0bc00")
	 (120 . "#c0c530")
	 (140 . "#f8dec0")
	 (160 . "#bfebe0")
	 (180 . "#44bc44")
	 (200 . "#70b900")
	 (220 . "#6ae4b9")
	 (240 . "#4ae2f0")
	 (260 . "#00d3d0")
	 (280 . "#c6eaff")
	 (300 . "#2fafff")
	 (320 . "#79a8ff")
	 (340 . "#00bcff")
	 (360 . "#b6a0ff")))
 '(vc-annotate-very-old-color nil)
 '(widget-link-prefix " ")
 '(widget-link-suffix " ")
 '(widget-mouse-face '(highlight widget-button))
 '(widget-push-button-prefix " ")
 '(widget-push-button-suffix " ")
 '(xterm-color-names
   ["black" "#ff8059" "#44bc44" "#d0bc00" "#2fafff" "#feacd0" "#00d3d0" "gray65"])
 '(xterm-color-names-bright
   ["gray35" "#ef8b50" "#70b900" "#c0c530" "#79a8ff" "#f78fe7" "#4ae2f0" "white"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
