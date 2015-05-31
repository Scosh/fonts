# The Fonts
These guys and gals are hosted here on Github primarily for my convenience. However, perhaps you too dear internet person can benefit from this repository's existence: this hand-picked selection of typefaces promises to bestow upon your system both open source classics like the **Liberation** and **Deja Vu** fonts as well as the hip and fresh kids everyone is talking about like Mozilla's **Fira**, Adobe's **Source Sans Pro** and Intel's **Clear Sans**. 

There's also a lot of obscurer stuff to be found here too, so why don't you take a gander and see if this pack is to your liking. The mission statement here is to create a comprehensive but quality before quantity oriented collection of open source typefaces that can keep growing and expanding. This project is still in it's infancy, so if you do stumble upon this, please bear in mind that I'm busy working on making it nice but it isn't quite where I want it to be yet.

## Naming
The fonts are labelled according to the following convention: `typeface-foundry-format`.

## Installation & Syncing
### The Easy Way: *Just Install 'Em*
Simply download a ZIP of this repository and throw these fonts in whatever place your system wants fonts to be in. On Windows that should be `C:\Windows\Fonts`, on Mac OSX [it depends](https://support.apple.com/en-us/HT201722) though somewhere in `/Library/Fonts/` is probably best and on Linux I'd recommend `/usr/share/fonts` or `~/.local/share/fonts/` — obviously you can do something [entirely](https://wiki.ubuntu.com/Fonts) [different](https://wiki.archlinux.org/index.php/Fonts) if you want to however.

Windows and OSX usually update their font caches automagically, but on Linux it's good practice to execute a `fc-cache -fv` in the terminal once you're done copying the files.

### The Harder (but cooler) Way: *Sync 'Em Up!*
If you're a seasoned Linux user, you have the option of executing a handy *Makefile* [a good friend of mine](https://github.com/7bitHero) wrote to create a synced git folder on your computer. Basically, it'll create a system link between the contents of this repository and the install directory (`/usr/share/fonts/git` by default).

1. Clone this repository.
2. `cd` to wherever you put the repository
3. do `make`

The Makefile will create the symlinks and update your font cache. Be sure to keep the cloned repository around though, because any change you make here will also happen in the `installDir` you specify. This is cool, because now you can just do a `git pull` to get the latest version of the font pack and simply write `make update-cache` to update the cache, but it also means deleting the original folder will delete all the symlinked contents.

## Credits:
- scosh: *curation*
- 7bitHero: *coding*

To be clear: I did not create any of these typefaces, I am simply a humble collector and hobby typographer, flabbergasted by the craftsmanship and hard work all these wonderful type designers have put into their freely available work. Please refer to the individual fonts for licensing information.
