# britter's dotfiles

This is a repository containing configuration files for my development environment.

## Installation

Pick what you like from the files, then modify the link script to link the files you're interested in. The actual bash configuration can be linked in the following way:

```
git clone git@github.com:britter/dotfiles.git ~/.dotfiles
bash "~/.dotfiles/link"
```

This will replace the dotfiles in the user home with the dotfiles stored in this repository.

After linking the following software needs to be installed as well:

- fisher - a plugin manager for fish shell
- pathogen - a plugin manager for vim

## Inspiration

My dotfiles are heavily inspired by [Ben Ripkens'](http://github.com/bripkens/dotfiles) dotfiles.
He drew his inspiration from [Mathias Bynens'](https://github.com/mathiasbynens/dotfiles) and
[Ben Alman's](https://github.com/cowboy/dotfiles) and many other great blog posts on the web.

Thanks guys!
