
(add-to-list 'load-path "../neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; 隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)

;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)

;; icons
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-theme (if (display-graphic-p) 'icons 'alltheicon))


;; Shortcut (Only in Neotree Buffer)
;;  - [n] next line ， p previous line。
;;  - [SPC] or [RET] or [TAB] Open current item if it is a file. Fold/Unfold current item if it is a directory.
;;  - [g] Refresh
;;  - [A] Maximize/Minimize the NeoTree Window
;;  - [H] Toggle display hidden files
;;  - [C-c C-n] Create a file or create a directory if filename ends with a ‘/’
;;  - [C-c C-d] Delete a file or a directory.
;;  - [C-c C-r] Rename a file or a directory.
;;  - [C-c C-c] Change the root directory.

;; Commands（Global）
;;  - [neotree-dir] show NeoTree window and specify a directory as its root
;;  - [neotree-show] or neotree show NeoTree window using current directory as its root
;;  - [neotree-hide] Hide NeoTree window
;;  - [neotree-toggle] toggle/hide NeoTree window
;;  - [neotree-find] show NeoTree window and use the file of current buffer as its root

;; Command（Only in NeoTree Buffer）
;;  - [neotree-enter] Open File / Unfold Directory
;;  - [neotree-refresh] Refresh
;;  - [neotree-stretch-toggle] Maximize / Minimize
;;  - [neotree-change-root] Switch Root Directory
;;  - [neotree-hidden-file-toggle] Toggle hidden files
;;  - [neotree-rename-node] Rename a Node
;;  - [neotree-delete-node] Delete a Node
;;  - [neotree-create-node] Create a file or a directory (if filename ends with ‘/’)
