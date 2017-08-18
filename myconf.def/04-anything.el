
;;-------------------------------------------------------------------------;;
;;anything
(require 'anything-startup)

;;filelistへのパス
;; (setq anything-c-filelist-file-name "/home/issei/.emacs.d/anything.filelist")
;; (setq anything-grep-candidates-fast-directory-regexp "/home/issei/.emacs.d/anything.filelist")

(setq anything-c-filelist-file-name "~/.emacs.d/anything.filelist")
(setq anything-grep-candidates-fast-directory-regexp "~/.emacs.d/anything.filelist")

;;C-c C-fでanything-filelist+
(define-key global-map [(C c) (f)] 'anything-filelist+)

;;M-yでanything-show-kill-ring
(define-key global-map [(M y)] 'anything-show-kill-ring)

;; anythingのマッチング機能を強化
(require 'anything-match-plugin nil t)

;; anythingによる保管インターフェイス
(require 'anything-show-completion nil t)

;; auto-installのanythingインターフェース
(when (require 'anything-install nil t)
  (require 'anything-auto-install nil t))

;; describe-binding(C-h b)をAnythingに置き換える
(when (require 'descbinds-anything nil t)
  (descbinds-anything-install))
;;-------------------------------------------------------------------------;;
