## The Fonts
These guys and gals are hosted here on Github primarily for my convenience. However, perhaps you too dear internet person can benefit from this repository's existence. This hand-picked selection of typefaces promises to bestow upon your system both open source classics like the **Liberation** and **Deja Vu** fonts as well as the hip and fresh kids everyone is talking about like Mozilla's **Fira**, Adobe's **Source Sans Pro** and Intel's **Clear Sans**.

There's a lot of obscurer stuff to be found here too — so why don't you take a gander, and see if this pack is to your liking!

## The Mission
To create a comprehensive but quality before quantity oriented collection of open source typefaces that can keep growing and getting better. I don't want this to be another one of those ***incredible!*** font packs with 1000 apparently ***amazing!*** free fonts, of which perhaps a handful at best are even worth earnestly considering using. Rather, I'd like this to be a valid option for anyone in need of good type that doesn't cost a dime, and is really easy to license. Because you know, among other things, that's one of the big advantages you'll have as a designer using open source fonts: you can do pretty much anything you want with them, because their licenses are inherently laissez-faire.

This project is still in it's infancy, so please bear in mind that I'm busy working on making it nice if you do happen to stumble upon this right now. It's not quite where I'd like it to be yet, but I think it's slowly getting there.

#### Labelling
Currently, the fonts are grouped into 8 unique classifications using folders. Each folder within one of these category folders contains a font family, and is labelled according to the following convention: `typeface-foundry-file_format`.

## Installation and Syncing
#### The Easy Way: *Just Install 'Em*
Simply download a ZIP of this repository and throw these fonts in whatever place your system wants fonts to be in. On Windows that should be `C:\Windows\Fonts`, on Mac OSX [it depends](https://support.apple.com/en-us/HT201722) though somewhere in `/Library/Fonts/` is probably best, and on Linux I'd recommend `/usr/share/fonts` or `~/.local/share/fonts/` — obviously you can do something [entirely](https://wiki.ubuntu.com/Fonts) [different](https://wiki.archlinux.org/index.php/Fonts) if you want to however.

Windows and OSX usually update their font caches automagically, but for Linux it's generally good practice to perform an `fc-cache -fv` in the terminal once you're done copying the files.

#### The Harder (but cooler) Way: *Sync 'Em Up!*
If you're on Linux and fancy yourself a little more experienced, you might want to clone this repository and run the handy *Makefile* (kindly provided by [a good friend of mine(https://github.com/LordSentox)) rather than downloading the fonts conventionally. The advantage to this method is that you'll be able to easily update your local copy of the collection whenever new fonts are added. The downside is that you will obviously have to keep the cloned repository around for this to work, and, depending on how you organize your files, that may not be the way you like to roll. What the Makefile does, is create a symbolic link between the contents of the cloned repository and the installation directory (`/usr/share/fonts/git` by default), and then it updates the font cache for you.
Here's what you'll want to do if you like the sound of this:

1. Clone this repository.
2. `cd` to wherever you put the repository.
3. Do `make`.

After your font cache is refreshed, you should be golden! Any changes made to the cloned repo will carry over to the installation directory. Now, whenever you feel like updating you can just do a `git pull origin master` inside your local copy of the repository, and get the newest fonts. You can also easily refresh your font cache with `make update-cache`. Or you can use this set-up to create your own synced collection of fonts, make a new fork, share it around, send it to NASA — whatever, man!

## Credits and Disclaimer
- [Joshua Scott | Scosh](https://github.com/Scosh): *curation*
- [Arne Dußin | LordSentox](https://github.com/LordSentox): *coding*

To be clear: I did not create any of these typefaces, I am simply a humble collector and type admirer flabbergasted by the craftsmanship and hard work all these wonderful designers have put into their freely available work. Most of the fonts are available under the [SIL Open Font License](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL). Please refer to the individual fonts for detailed licensing information.
