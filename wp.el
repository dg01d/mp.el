(require 'request)
(defun post2mb ()
  (interactive)
  (if (yes-or-no-p "Are you sure you want to post this?")
      (request
       (format "%s/wp-json/wp/v2/posts" mb-domain)
       :type "POST"
       :params `(("title"."")("status"."publish")("content" . ,(buffer-substring-no-properties (point-min) (point-max))))
       :headers `(("Authorization" . ,(format "Basic %s" (base64-encode-string (format "%s:%s" mb-username mb-password)))))
       :success (cl-function (lambda (&key data &allow-other-keys) (message "Success"))))))
