(require 'request)
(defun get-url ()
  (if (eq mb-domain nil)
    "https://micro.blog"
    mb-domain))
(message (get-url))
(defun post2mb ()
  (interactive)
  (if (yes-or-no-p "Are you sure you want to post this?" )
    (request
      (format "%s/micropub" (get-url))
      :type "POST"
      :params `(("h"."entry")("content" . ,(buffer-substring-no-properties (point-min) (point-max))))
      :headers `(("Authorization" . ,(format "Bearer %s" microblog-auth)))
      :success (cl-function (lambda (&key data &allow-other-keys) (message "Success"))))))

