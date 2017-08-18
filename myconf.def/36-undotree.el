;; undo-treeの設定
;; C-x uで別ウィンドウにtree表示、qで抜ける
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

