![main-cover](https://github.com/Scosh/fonts/blob/master/images/main-cover.png)
## Say what now?
This is a collection of a bunch of open-source fonts aimed at designers and people who like to mess around with the typograhpy of their documents, code, website, operating systems and top-secret love letters to Ryan Gosling.

These are generally fonts that I think are pretty, well developed and handy, and which I have personally used frequently in my own designs over the years.

All of this really started when friends became interested in my collection of free fonts, and so, when I eventually got tired of moving those fonts around computers, I made a git repo to make that process easier.

Since then, this project has grown, both in terms of the number of fonts it comprises, as well as in its scope. I've shifted my efforts completely to fully open-source fonts (more on that below), and have begun turning this into a project that doesn't just assemble fonts, but also documents and presents them using real example designs made using the various fonts.

It isn't quite there *yet*, but if you're interested in helping out and improving the project, have a look at **Contributing** below.

![mission-cover](https://github.com/Scosh/fonts/blob/master/images/mission-cover.png)
## The Mission
#### Quality over Quantity
I don't want this to be another one of those ***incredible!*** font-packs with 1000 apparently ***amazing!*** "*free fonts for your sick desings bruuu~~~!!!*", of which perhaps a handful at best are really even worth considering using. Rather, I'd like this to be a valid option for anyone in need of good type that is free and easy to license. Because, among other things, that's one of the big advantages you'll have as a designer using open-source fonts: you can do pretty much anything you want with them, because their licenses are inherently laissez-faire.

#### Open-Source, not Freemium
And this is the big distinction you must bear in mind for this project: for mostly legal, but also somewhat ideological reasons, this is an assembly of fonts that come with licenses that, as far as I am aware, allow *redistribution* and (usually) *modicfication*.

As much as I'd like to, I can't and won't include things like [Fontin](http://www.exljbris.com/fontin.html) or similar gratis fonts, however beautiful they may be, because I'm simply not allowed to, and because this would go against a lot of the goals that have been set out for this project.

#### Free Software Classics
This collection has become quite a varied assortment of styles and origins. If you're a designer who works with free fonts at all, you'll most likely have heard of the big names in here like Adobe's **Source Sans Pro**, Mozilla's **Fira** and perhaps even Intel's **Clear Sans**. Those are all present, but there's also a bunch of stuff here you've probably never seen before and might be quite happy to discover.

Other than these, I've also included some long-running classics the Free Software scene has produced, such as the **Liberation** and **Deja Vu** fonts. These aren't necessarily as pretty as their more high-profile sistren and brethren, but they come with very large character-sets, something you might need from time to time.

#### IPA Support
Which brings me to an obscurer aspect of this project. I study [Linguistics](https://xkcd.com/1483/), so I have an esoteric interest in fonts that come with support for the special characters of the [IPA](http://bit.ly/2bTJT70). If you care about this too, check out [this Markdown document](https://github.com/Scosh/fonts/blob/master/md/Fonts%20with%20IPA%20Support.md), where I've tried to compile a list of all the fonts in this font-pack that come with a full set of IPA symbols (spoiler: not a lot).

![install-cover](https://github.com/Scosh/fonts/blob/master/images/install-cover.png)
## Installation and Syncing
#### The Easy Way: *Download, Unzip, Install*
Either scroll back up and press the big, green `Clone or download` button to the top-right of this page and choose `Download ZIP`, or click the following link:

[Download as ZIP](https://minhaskamal.github.io/DownGit/#/home?url=https://github.com/Scosh/fonts).

Once your download is done, unzip the archive and copy the `fonts` subfolder into wherever your operating system wants fonts to go.

On Windows that should be `C:\Windows\Fonts`. However, by default, Windows doesn't allow you to just drag font files into this folder. You'll need to select or group-select the fonts individually in their folders, right-click on them and select 'Install fonts' or something along those lines… And I'm not even sure if that contextual right-click command is just a new thing in Windows 10, or if it's also already there in Windows 7. I'm sorry… I'm not a Windows expert, and personally, I think this is a super dumb and annoying way to handle font installation when dealing with large font-packs like this one — so if there's any other, easier and faster way of doing this that you are familiar with, please let me know!

For Mac OSX [it depends](https://support.apple.com/en-us/HT201722), though somewhere in `/Library/Fonts/` is probably best. (Been a while since I've used OSX too though, so I hope this hasn't changed.)

And on Linux I'd recommend `/usr/share/fonts` or `~/.local/share/fonts/` — but obviously you can do something [entirely](https://wiki.ubuntu.com/Fonts) [different](https://wiki.archlinux.org/index.php/Fonts) if you want.

Windows and OSX usually update their font caches automagically, but for Linux it's generally good practice to perform an `fc-cache -fv` in the terminal once you're done copying the files.

#### The Harder but cooler Way: *Sync 'Em Up!*
If you're on Linux and fancy yourself a little more experienced, you might want to clone this repository and run the handy *Makefile* (kindly provided by [my incredibly sexy and hip friend](https://github.com/LordSentox)) rather than downloading the fonts conventionally. The advantage to this method is that you'll be able to easily update your local copy of the collection whenever new fonts are added.

You can of course still do `git clone`, `git pull` and all that if you're running Windows or OSX, but the Makefile is pretty much a Linux only affair. [OSX apparently too, if you know what you're doing](http://stackoverflow.com/questions/1469994/using-make-on-osx), but you're going to have to edit a few lines of the Makefile, because they won't translate over directly to Unix.

What the Makefile does, is create a symbolic link between the contents of the cloned repository and the installation directory (`/usr/share/fonts/git` by default), and then it updates the font cache for you.

Here's what you'll want to do if you like the sound of all this:

1. Clone this repository.
2. `cd` to wherever you put the repository and then into the `fonts` subfolder.
3. Do `make`.

After your font cache is refreshed, you should be good! Any changes made to the cloned repo will carry over to the installation directory. Whenever you feel like updating you can do a `git pull origin master` inside your local copy of the repository, and get the newest fonts. You can also easily refresh your font cache with `make update-cache`. Or you can use this set-up to create your own synced collection of fonts, make a new fork, share it around, send it to NASA — whatever, man!

![label-cover](https://github.com/Scosh/fonts/blob/master/images/label-cover.png)
## Labelling and Naming Conventions
Currently, the fonts are grouped into 8 unique classifications using folders. Each folder within one of these category folders contains a font family, and is labelled according to the following convention, where information in round brackets () is optional:
```
typeface-(foundry)-file_format.
```
In some cases, webfont (woff, eot) and/or source (svg) files may also be included, but only either .ttf or .otf desktop fonts will be, which is what the `file_format` part always reflects.

![contribute-cover](https://github.com/Scosh/fonts/blob/master/images/contribute-cover.png)
## Contributing
There are three things I need help with right now:

#### :one: Specimen Artwork
Contributing artwork made using any of these fonts. If you have anything that you've made with one or more of the fonts present in this repository and you're willing to give it away to be shared around or even just to provide an image link to your work, I want it! You can submit work either by creating a [pull request](https://github.com/Scosh/fonts/pulls) with your art added to the [images](https://github.com/Scosh/fonts/tree/master/images) subfolder or by posting a comment on the 'Specimen Artwork' issue thread [create issue and add link].

I want people to browse through this repository, checking out all the different fonts and getting excited about using them! And I would like there to be a varied assortment of images of those fonts in use for them to look at, much like there is on [MyFonts](http://www.myfonts.com/fonts/mostardesign/sofia-pro/) or [The League of Moveable Type](https://www.theleagueofmoveabletype.com/ostrich-sans).

Of course, a proper, full website interface for you to look at the fonts would be even better — but woah, baby steps, alright muchacho?

#### :two: Documentation and Descriptions
The dream is that eventually every font family will come with a readme.md that doesn't just display the specimens, but also gives a brief description of the typeface and names its designer, where it was downloaded, what languages are supported, etc. If you'd like to contribute a full description or an edit of an existing one, [make a pull request](https://github.com/Scosh/fonts/pulls) and please adhere to the following styleguide/template I've put together [add link].

#### :three: New Font Suggestions
I want this project to keep growing and if you can come up with or have found an open-source font that isn't in here yet and you think absolutely needs to be, please go ahead and recommend it! I'm always open to suggestions and thrilled to discover new hidden gems. Again, you can do so either by posting a comment with your suggestion(s) in the 'New Font Suggestions' issue thread [create issue and add link] or with a [pull request](https://github.com/Scosh/fonts/pulls) that adds the new font to the appropriate font style folder. E.g. a sans font should always go into the [sans_serif directory](https://github.com/Scosh/fonts/tree/master/fonts/sans_serif). Please also try to follow the naming guidelines described in **Labelling and Naming Conventions** above.

You're going to have to rely on my taste in fonts at least somewhat, because ultimately, I will of course have the final say as to whether or not a particular font will be included, which is why I'd prefer you choose the issue thread option [add link again] for this one. This way, we can talk about why a certain font should or shouldn't be added. I might also decline pull requests that disregard the existing naming and sorting conventions, even if I happen to like the font. Sorry for being so anal about this… but those guidelines are there for a reason, and I'm half German, so I can't really undestand people ignoring established conventions. It's nothing personal, honest. :stuck_out_tongue_winking_eye:

![ryan-cover](https://github.com/Scosh/fonts/blob/master/images/ryan-cover.png)
## Credits and Disclaimer
- [Joshua Scott | Scosh](https://github.com/Scosh): *curation*
- [Arne Dußin | LordSentox](https://github.com/LordSentox): *coding*

Fonts used in cover images:  
Sans: [Alegreya Sans](https://github.com/Scosh/fonts/tree/master/fonts/sans_serif/alegreya_sans-huerta-otf)  
Serif: [Gentium Basic](https://github.com/Scosh/fonts/tree/master/fonts/serif/gentium_basic-sil-ttf)  
Script: [League Script](https://github.com/Scosh/fonts/tree/master/fonts/script/script-league-otf)  
Icons: [FontAwesome](https://github.com/Scosh/fonts/tree/master/fonts/icon/font_awesome-otf)  

To be clear: I did not create any of these typefaces, I am simply a humble collector and admirer. Full credit goes to the wonderful designers and foundries who have made their painstaiking work freely available to the world. I have done my best to preserve the original copyright notices, but if you find any such information missing please go ahead and [open an issue](https://github.com/Scosh/fonts/issues) or contact me otherwise so I can fix it as quickly as possible.

Most of the fonts here are available under the [SIL Open Font License](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL). Others will be available under various other open-source licenses. Please refer to the individual fonts for detailed licensing information.
