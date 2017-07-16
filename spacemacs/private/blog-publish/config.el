(use-package ox-publish
  :commands (org-publish))

(setq org-publish-project-alist
      '(
        ("blog-mlr-articles"
         :base-directory "~/repos/blog/make-learn-repeat/"
         :base-extension "org"
         :publishing-directory "~/repos/blog/publish/mlr"
         :recursive t
         :publishing-function org-html-publish-to-html)
        ("blog-mlr-static"
         :base-directory "~/repos/blog/make-learn-repeat/"
         :base-extension "css\\|js\\|png\\|gif\\|jpg\\|jpeg"
         :publishing-directory "~/repos/blog/publish/mlr"
         :recursive t
         :publishing-function org-publish-attachment)
        ("blog-mlr" :components ("blog-mlr-articles" "blog-mlr-static"))))
