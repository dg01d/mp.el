(require 'request)
(defun post2mb ()
  (interactive)
  (request
   "https://micro.blog/micropub"
   :type "POST"
   :params `(("h"."entry")("content" . ,(buffer-substring-no-properties (point-min) (point-max))))
   :headers `(("Authorization" . ,(format "Bearer %s" microblog-auth)))
   :success (cl-function (lambda (&key data &allow-other-keys) (message "Success")))))
