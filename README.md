# mp.el
A Emacs Lisp function to post to a [Micropub Endpoint](https://www.w3.org/TR/micropub/) 


## Requirements

- the request module 
- full server endpoint, capable of handling posts in json-format
- access token with scope `create` to the micrpub endpoint. Copy an existing one or use https://gimme-a-token.5eb.nl

The short version is that doing it over Oauth would require a shit load of code. 

## Installation with Spacemacs.

1. Add mp.el to ~/.emacs.d/private/ 
2. Find dotspacemacs-additional-packages inside .spacemacs and add requests to the list
3. We need to add two lines inside the setq-default method in dotspacemacs/init
`mp-domain "https://your-domain/micropub-endpoint"`
`mp-auth "your-auth-token"`
4. Add the following line to dotspacemacs/user-config function: (load "~/.emacs.d/private/mp.el") 

## Usage

Start a new buffer, write what you want to post, and then run M-x post2mb; SPC SPC post2mp if you are using spacemacs
