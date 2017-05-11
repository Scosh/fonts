################################################################################
# This file will automatically add these fonts into your font-folder (via alias)
# and update your font-cache automatically to install the fonts.
################################################################################

# At this moment it simply creates a symbolic link to the font-folder

installDir=/usr/share/fonts/git

install: link update-cache

link:
	sudo rm -f $(installDir)
	sudo ln -s $(shell pwd) $(installDir)

update-cache:
	sudo fc-cache -vf
