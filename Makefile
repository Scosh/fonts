################################################################################
# This file will automatically add these fonts into your font-folder (via alias)
# and update your font-cache automatically to install the fonts.
################################################################################

# At this moment it simply creates a symbolic link to the font-folder

install: link update-cache

link:
	sudo ln -s $(shell pwd) /usr/share/fonts/git

update-cache:
	sudo fc-cache -vf
