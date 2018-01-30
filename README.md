# mb.el
A Emacs Lisp function to post to Micro.blog (either hosted by micro.blog or WordPress based sites. )


## Hosted by Micro.blog
It requires the request module, and a variable named microblog-auth with a microblog app token. 
## Wordpress
It requires the request module, and that you define the following variables: mb-domain, mb-username and mb-password. You also need to add [this plugin](https://github.com/WP-API/Basic-Auth). It enables us to login with username and password through Basic Auth against the WordPress REST API. 

The short version is that doing it over Oauth would require a shit load of code. 

# Installation with Spacemacs.
## Hosted
1. Add mb.el to ~/.emacs.d/private/ or wp.el if you use wordpress
2. Find dotspacemacs-additional-packages inside .spacemacs and add requests to the list
3. Add a line to the dotspacemacs/init function inside the setq-default function call that looks like: microblog-auth "ABC", where ABC is your app token. 
4. Add the following line to dotspacemacs/user-config function: (load "~/.emacs.d/private/mb.el") 
## Other Micropub
1. Add mb.el to ~/.emacs.d/private/ or wp.el if you use wordpress
2. Find dotspacemacs-additional-packages inside .spacemacs and add requests to the list
3. We need to add three lines inside the setq-default method in dotspacemacs/init
mb-domain "https://your-domain"
microblog-auth "your-auth-token"
4. Add the following line to dotspacemacs/user-config function: (load "~/.emacs.d/private/mb.el") 

## WordPress
1. Add wp.el to ~/.emacs.d/private/ or wp.el if you use wordpress
2. Find dotspacemacs-additional-packages inside .spacemacs and add requests to the list
3. We need to add three lines inside the setq-default method in dotspacemacs/init
mb-domain "your-domain"
mb-username "your username"
mb-password "your password
4. Add the following line to dotspacemacs/user-config function: (load "~/.emacs.d/private/wp.el") 
# Usage

Start a new buffer, write what you want to post, and then run M-x post2mb; SPC SPC post2mb if you are using spacemacs
