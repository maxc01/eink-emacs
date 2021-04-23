;;; eink-theme.el --- E Ink color theme

;; Copyright (C) 2020-2021 Xingchen
;; Copyright (C) 2013-2016 Marian Schubert

;; Author: Xingchen <xingchen92@gmail.com>
;; Author: Marian Schubert <marian.schubert@gmail.com>
;; URL: http://github.com/maio/eink-emacs
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
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

;; Low distraction, minimalistic color theme emulating reading
;; on E Ink devices.

;;; Credits:

;; Inspired by:
;;
;; https://bitbucket.org/kisom/eink.vim
;; https://github.com/dmand/eink.el
;; http://www.daveliepmann.stfi.re/tufte-css/?sf=wklwy

;;; Code:

(deftheme eink
  "Theme emulating reading on an E Ink device.")

(let ((fg "#111111")
      (fg-table "#222291")
      (bg "#fffff8")
      (bg-light "#ddddd8")
      (fg-light "#ddddd8")
      (bg-highlight "#FFF1AA")
      (bg-highlight-2 "LightCyan")
      (bg-highlight-3 "LightGreen")
      (light-blue "#80c0ff")
      (light-violet "#d9c5e4")
      (light-pink "#ffc4e4"))

  (custom-theme-set-faces
   'eink

   ;; generic stuff
   `(default ((t (:background ,bg :foreground ,fg))))
   `(button ((t (:foreground ,fg :underline t))))
   `(cursor ((t (:background ,fg :foreground "white smoke"))))
   `(custom-variable-tag ((t (:foreground ,fg :weight bold))))
   `(default-italic ((t (:italic t))))
   `(font-latex-bold-face ((t (:foreground ,fg))))
   `(font-latex-italic-face ((t (:foreground ,fg :slant italic))))
   `(font-latex-match-reference-keywords ((t (:foreground ,fg))))
   `(font-latex-match-variable-keywords ((t (:foreground ,fg))))
   `(font-latex-string-face ((t (:foreground "#a9a9a9"))))
   `(font-lock-builtin-face ((t (:background ,bg :foreground ,fg))))
   `(font-lock-comment-delimiter-face ((t (:foreground "#808080"))))
   ;; `(font-lock-comment-face ((t (:foreground ,fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground "#737373" :weight bold))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-doc-face ((t (:foreground ,fg :weight semi-bold))))
   `(font-lock-function-name-face ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg))))
   `(font-lock-reference-face ((t (:foreground ,fg))))
   `(font-lock-string-face ((t (:foreground ,fg))))
   `(font-lock-type-face ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg :underline nil))))
   `(font-lock-warning-face ((t (:foreground ,fg :weight bold))))
   `(fringe ((t (:background ,bg :foreground ,bg))))
   `(gnus-header-content ((t (:foreground ,fg))))
   `(gnus-header-from ((t (:foreground ,fg))))
   `(gnus-header-name ((t (:foreground ,fg))))
   `(gnus-header-subject ((t (:foreground ,fg))))
   `(highlight ((t (:background  "#eeeee8"))))
   `(ido-first-match ((t (:foreground ,fg))))
   `(ido-only-match ((t (:foreground ,fg))))
   `(ido-subdir ((t (:foreground ,fg))))
   `(isearch ((t (:background "#eeeee8" :foreground ,fg))))
   `(link ((t (:foreground ,fg))))
   `(minibuffer-prompt ((t (:foreground ,fg :weight bold))))

   ;; Mode line faces
   `(mode-line ((t (:box (:line-width 1 :color "#1A2F54") :foreground "#f9bf45" :background "#6a4c9c"))))
   `(mode-line-inactive ((t (:box (:line-width 1 :color "#4E4E4C") :foreground "#F0F0EF" :background "#9B9C97"))))
   `(mode-line-buffer-id ((t (:foreground "#eab700" :weight bold))))

   `(region ((t (:background ,light-pink :foreground ,fg :extend t))))
   `(slime-repl-inputed-output-face ((t (:foreground ,fg))))
   `(whitespace-line ((t (:background ,bg-highlight-2 :foreground ,fg))))

   ;; org
   `(org-agenda-date ((t (:foreground ,fg :height 1.2))))
   `(org-agenda-date-today ((t (:foreground ,fg :weight bold :height 1.4))))
   `(org-agenda-date-weekend ((t (:foreground ,fg :weight normal))))
   `(org-agenda-structure ((t (:foreground ,fg :weight bold))))
   `(org-block ((t (:foreground ,fg))))
   `(org-block-begin-line ((t (:foreground ,fg :background ,light-violet :extend t))))
   `(org-block-end-line ((t (:inherit org-block-begin-line))))
   `(org-verbatim ((t (:foreground ,light-blue :weight semi-bold))))
   `(org-date ((t (:foreground ,fg) :underline)))
   `(org-done ((t (:foreground ,fg-light))))
   `(org-hide ((t (:foreground ,bg))))
   ;; use :overline to give headings more top margin
   `(org-level-1 ((t (:foreground ,fg :weight semi-bold :height 1.3))))
   `(org-level-2 ((t (:foreground ,fg :weight semi-bold :height 1.1))))
   `(org-level-3 ((t (:foreground ,fg :weight semi-bold :height 1.1 :overline ,bg))))
   `(org-level-4 ((t (:foreground ,fg :weight semi-bold :height 1.1 :overline ,bg))))
   `(org-level-5 ((t (:foreground ,fg :weight semi-bold :height 1.1 :overline ,bg))))
   `(org-level-6 ((t (:foreground ,fg :weight semi-bold :height 1.1 :overline ,bg))))
   `(org-link ((t (:foreground ,fg :underline t))))
   `(org-quote ((t (:foreground ,fg :slant italic :inherit org-block))))
   `(org-scheduled ((t (:foreground ,fg))))
   `(org-sexp-date ((t (:foreground ,fg))))
   `(org-special-keyword ((t (:foreground ,fg))))
   `(org-todo ((t (:foreground ,fg))))
   `(org-verse ((t (:inherit org-block :slant italic))))
   `(org-table ((t (:foreground ,fg-table))))

   ;; org-roam
   `(org-roam-link ((t (:inverse-video t :foreground ,light-pink))))

   ;; magit
   `(magit-header ((t (:weight semi-bold))))
   `(magit-item-mark ((t (:background ,bg-highlight))))
   `(magit-item-highlight ((t (:weight bold))))
   `(magit-section-heading ((t (:weight semi-bold :height 1.2))))
   `(magit-section-highlight ((t (:weight semi-bold))))
   `(magit-diff-context-highlight ((t (:foreground ,fg))))
   `(magit-branch-local ((t (:weight bold))))
   `(magit-branch-remote ((t (:weight bold))))

   ;; diff
   `(diff-added ((t (:background "#e9ffe9"))))
   `(diff-removed ((t (:background "#ffecec"))))
   `(diff-refine-added ((t (:background "#a4f4a3"))))
   `(diff-refine-removed ((t (:background "#f9cbca"))))
   `(magit-diff-added-highlight ((t (:weight demibold :background "#e9ffe9"))))
   `(magit-diff-added ((t (:background "#e9ffe9"))))
   `(magit-diff-removed-highlight ((t (:weight demibold :background "#ffecec"))))
   `(magit-diff-removed ((t (:background "#ffecec"))))

   ;; git-timemachine
   `(git-timemachine-minibuffer-author-face ((t (:inherit default))))
   `(git-timemachine-minibuffer-detail-face ((t (:weight bold))))

   ;; compile
   `(compilation-error ((t (:inherit error))))

   ;; flycheck
   `(flycheck-error ((t (:inherit error))))
   `(flycheck-warning ((t (:inherit warning))))

   ;; dired
   `(dired-directory ((t (:weight bold :foreground ,light-blue))))
   `(dired-subtree-depth-1-face ((t (:inherit default))))
   `(dired-subtree-depth-2-face ((t (:inherit default))))
   `(dired-subtree-depth-3-face ((t (:inherit default))))
   `(dired-subtree-depth-4-face ((t (:inherit default))))

   ;; iedit
   `(iedit-occurrence ((t (:background ,bg-highlight-3 :foreground ,fg))))

   ;; company
   `(company-echo-common ((t (:foreground ,fg))))
   `(company-tooltip-selection ((t (:background ,bg-highlight))))

   ;; parens - parenface
   '(parenface-paren-face ((t (:foreground "gray70"))))
   '(parenface-curly-face ((t (:foreground "gray70"))))
   '(parenface-bracket-face ((t (:foreground "gray70"))))

   ;; parens - paren-face
   '(parenthesis ((t (:foreground "gray70"))))

   ;; parens - other
   `(sp-show-pair-match-face ((t (:foreground "black" :weight bold))))
   `(sp-show-pair-mismatch-face ((t (:background "red" :foreground "black" :weight bold))))
   `(show-paren-match ((t (:foreground "black" :weight bold))))
   `(show-paren-mismatch ((t (:background "red" :foreground "black" :weight bold))))

   ;; js2
   `(js2-function-param ((t (:foreground ,fg))))
   `(js2-external-variable ((t (:foreground ,fg))))

   ;; perl
   `(cperl-hash-face ((t (:foreground ,fg))))
   `(cperl-array-face ((t (:foreground ,fg))))
   `(cperl-nonoverridable-face ((t (:foreground ,fg))))

   ;; rpm-spec-mode
   `(rpm-spec-tag-face ((t (:inherit default))))
   `(rpm-spec-package-face ((t (:inherit default))))
   `(rpm-spec-macro-face ((t (:inherit default))))
   `(rpm-spec-doc-face ((t (:inherit default))))
   `(rpm-spec-var-face ((t (:inherit default))))
   `(rpm-spec-ghost-face ((t (:inherit default))))
   `(rpm-spec-section-face ((t (:inherit default :weight bold))))

   ;; linum / nlinum-relative
   `(nlinum-relative-current-face ((t (:inherit normal :weight bold))))
   `(linum ((t (:inherit normal :weight bold))))

   ;; web-mode
   `(web-mode-current-element-highlight-face ((t (:inherit normal :weight bold :foreground ,fg))))

   ;; misc
   `(idle-highlight ((t (:background ,bg-highlight))))
   `(yas-field-highlight-face ((t (:background "#eeeee8" :foreground ,fg))))
   `(eshell-prompt ((t (:foreground ,fg :weight bold))))
   `(cider-result-overlay-face ((t (:weight bold))))

   ;; evil
   `(evil-ex-lazy-highlight ((t (:background ,bg-highlight-2))))
   `(evil-ex-substitute-matches ((t (:background ,bg-highlight-2))))
   `(evil-ex-substitute-replacement ((t (:background ,bg-highlight :underline nil :foreground ,fg))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'eink)

;;; eink-theme.el ends here
