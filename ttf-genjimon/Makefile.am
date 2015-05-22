## Process this file with automake to produce Makefile.in

#
# Makefile for Genjimon
# Copyright (C) 2011, 2012  Matthew Skala
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3.
#
# As a special exception, if you create a document which uses this font, and
# embed this font or unaltered portions of this font into the document, this
# font does not by itself cause the resulting document to be covered by the
# GNU General Public License. This exception does not however invalidate any
# other reasons why the document might be covered by the GNU General Public
# License. If you modify this font, you may extend this exception to your
# version of the font, but you are not obligated to do so. If you do not
# wish to do so, delete this exception statement from your version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Matthew Skala
# http://ansuz.sooke.bc.ca/
# mskala@ansuz.sooke.bc.ca
#

############################################################################

# BASIC AUTOTOOLS STUFF

ACLOCAL_AMFLAGS = -I m4
@SET_MAKE@
@INC_AMINCLUDE@

mvp:=$(if $(VPATH),$(VPATH),.)

empty:=
space:=$(empty) $(empty)
comma:=,
percent=%

############################################################################

# SILENT BUILD BLINKENLIGHTS

TSU_V_REDIR=$(if $(AM_V_at),>& /dev/null)

if COND_COLOUR
  ECHO_ANSI=echo -e
  ansi_default=\e[0m
  ansi_red=\e[31m
  ansi_green=\e[32m
  ansi_yellow=\e[33m
  ansi_blue=\e[34m
  ansi_magenta=\e[35m
  ansi_cyan=\e[36m
  ansi_pink=\e[35;1m
  ansi_white=\e[37;1m
  ansi_cleareol=\e[K
  ansi_clearescaped=\033\[K
  ansi_home=\e[1G
  am__@andt@v_CC_0=@echo -e "$(ansi_default)$(ansi_cleareol)  CC    " $@;
  am__@andt@v_CCLD_0=@echo -e "$(ansi_default)$(ansi_cleareol)  CCLD  " $@;
  am__@andt@v_GEN_0=@echo -e "$(ansi_default)$(ansi_cleareol)  GEN   " $@;
else
  ECHO_ANSI=echo
  ansi_default=
  ansi_red=
  ansi_green=
  ansi_yellow=
  ansi_blue=
  ansi_magenta=
  ansi_cyan=
  ansi_pink=
  ansi_white=
  ansi_cleareol=
  ansi_clearescaped=
  ansi_home=
endif

TSU_V_CP =$(TSU_V_CP_$(V))
TSU_V_CP_=$(TSU_V_CP_$(AM_DEFAULT_VERBOSITY))
TSU_V_CP_0=@$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_default)CP$(ansi_default)    " $@;

TSU_V_MT1=$(TSU_V_MT1_$(V))
TSU_V_MT1_=$(TSU_V_MT1_$(AM_DEFAULT_VERBOSITY))
TSU_V_MT1_0=$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_blue)MT1$(ansi_default)   " $@;

TSU_V_NAPERL=$(TSU_V_NAPERL_$(V))
TSU_V_NAPERL_=$(TSU_V_NAPERL_$(AM_DEFAULT_VERBOSITY))
TSU_V_NAPERL_0=$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_magenta)PERL$(ansi_default)  " $@;

TSU_V_TEX=$(TSU_V_TEX_$(V))
TSU_V_TEX_=$(TSU_V_TEX_$(AM_DEFAULT_VERBOSITY))
TSU_V_TEX_0=@$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_green)TEX$(ansi_default)   " $@;

TSU_V_TEXL=$(TSU_V_TEXL_$(V))
TSU_V_TEXL_=$(TSU_V_TEXL_$(AM_DEFAULT_VERBOSITY))
TSU_V_TEXL_0=$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_green)TEX$(ansi_default)   " "$@($$I)";

TSU_V_TTF=$(TSU_V_TTF_$(V))
TSU_V_TTF_=$(TSU_V_TTF_$(AM_DEFAULT_VERBOSITY))
TSU_V_TTF_0=$(ECHO_ANSI) \
  "$(ansi_cleareol)  $(ansi_cyan)TTF$(ansi_default)   " $@;

############################################################################

# CONDITIONAL OPTIONS

if COND_DOCS
    MAYBE_DOCS=genjimon.pdf
endif
if COND_EXPECT
  expect_start= $(if $(AM_V_at),$(EXPECT) -c \
    'log_user 0 ; spawn -noecho sh -c ")
  expect_end= $(if $(AM_V_at), " ; \
    expect -timeout -1 \
    -re "\n! " {exit 1} \
    -re "PROGRESS:(\[^\n\]*)\n" \
      {puts -nonewline \
         "$(ansi_clearescaped)$$expect_out(1,string)\r"; \
       flush stdout;exp_continue} \
    eof' )
else
  expect_end=$(TSU_V_REDIR)
endif

############################################################################

# FILENAMES FOR AUTOTOOLS

# we need a "built source" to make jobserver mode work, for stupid reasons
BUILT_SOURCES=Makefile

# QVFG and FPEVCGF are DIST and SCRIPTS in ROT13, to keep Automake
# from recognizing them

STANDALONE_QVFG:=fntbase.mp genjimon.mp
EXTRA_DIST:= \
  $(if $(filter $(distdir),$(top_distdir)),$(STANDALONE_QVFG)) \
  genfont.mp $(wildcard genjimon-*.mp) genjimon.tex

STANDALONE_FPEVCGF:=mp2pf
dist_noinst_SCRIPTS:= \
  $(if $(filter $(distdir),$(top_distdir)),$(STANDALONE_FPEVCGF)) \
  makettf.pe

dist_pdf_DATA = $(MAYBE_DOCS)

dist_ttf_DATA = \
  GenjimonMedium.ttf GenjimonReverse.ttf \
  GenjimonWhite.ttf GenjimonBlack.ttf \
  GenjimonRound.ttf GenjimonRoundOutline.ttf

############################################################################

# MAKE CLEAN

MOSTLYCLEANFILES = \
  *.pfb *.sfd *.ttf \
  genjimon.aux genjimon.log genjimon.out genjimon.pdf

DISTCLEANFILES = aminclude.am

############################################################################

# POSTSCRIPT FONTS

%.pfb: %.mp \
  mp2pf @T1ASM@ \
  fntbase.mp genfont.mp genjimon.mp
	$(AM_V_at)$(TSU_V_MT1) \
	$(MKDIR_P) $*.tmp ; \
	$(LN_S) -f $(realpath $(mvp))/*.mp $*.tmp/ ; \
	$(LN_S) -f $(realpath .)/*.mp $*.tmp/ ; \
	(cd $*.tmp ; $(expect_start)$(MPOST) $*.mp$(expect_end) ) ; \
	if $(GREP) -q '^! ' $*.tmp/$*.log ; then exit 1 ; fi ; \
	$(TSU_V_NAPERL) \
	$(PERL) -CSD $(mvp)/mp2pf $*.tmp/$* $(TSU_V_REDIR) ; \
	(cd $*.tmp ; $(realpath @T1ASM@) -b $*.p $*.pfb ) ; \
	if test -r $*.tmp/$*.pfb \
	  && $(GREP) -q 'output files\? written' $*.tmp/$*.log; then \
	  mv -f $*.tmp/$*.pfb . ; \
	else \
	  echo "ERROR BUILDING" $@ ; \
	  exit 1 ; \
	fi ; \
	if test "x$(KEEPTMP)" = "x" ; then \
	  rm -rf $*.tmp ; \
	fi

genjimon-black.pfb: genjimon-black.mp

genjimon-white.pfb: genjimon-white.mp

genjimon-medium.pfb: genjimon-medium.mp

genjimon-reverse.pfb: genjimon-reverse.mp

genjimon-round.pfb: genjimon-round.mp

genjimon-routline.pfb: genjimon-routline.mp

############################################################################

# TRUETYPE FONTS

GenjimonMedium.ttf: genjimon-medium.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe medium Medium $(TSU_V_REDIR)

GenjimonReverse.ttf: genjimon-reverse.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe reverse Reverse $(TSU_V_REDIR)

GenjimonWhite.ttf: genjimon-white.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe white White $(TSU_V_REDIR)

GenjimonBlack.ttf: genjimon-black.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe black Black $(TSU_V_REDIR)

GenjimonRound.ttf: genjimon-round.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe round Round $(TSU_V_REDIR)

GenjimonRoundOutline.ttf: genjimon-routline.pfb makettf.pe
	$(AM_V_at)$(TSU_V_TTF) \
	$(FONTFORGE) $(mvp)/makettf.pe routline RoundOutline $(TSU_V_REDIR)

############################################################################

# PDF DOCUMENTATION

genjimon.pdf: genjimon.tex \
  GenjimonMedium.ttf GenjimonReverse.ttf GenjimonWhite.ttf GenjimonBlack.ttf
	$(AM_V_at)$(TSU_V_TEX)$(expect_start)$(XELATEX) \
	  $(mvp)/genjimon$(expect_end)

############################################################################

# TESTING

TESTS = $(dist_ttf_DATA)
TEST_EXTENSIONS = .ttf
TTF_LOG_COMPILER = fontlint

############################################################################

# PARASITE BUILD

if COND_PARASITE

fntbase.mp: ../mp/fntbase.mp
	$(TSU_V_CP) cp $< $@

genjimon.mp: ../mp/genjimon.mp
	$(TSU_V_CP) cp $< $@

m4/ax_add_am_macro.m4: ../m4/ax_add_am_macro.m4
	$(TSU_V_CP) cp $< $@

m4/ax_am_jobserver.m4: ../m4/ax_am_jobserver.m4
	$(TSU_V_CP) cp $< $@

m4/ax_am_macros.m4: ../m4/ax_am_macros.m4
	$(TSU_V_CP) cp $< $@

m4/ax_append_to_file.m4: ../m4/ax_append_to_file.m4
	$(TSU_V_CP) cp $< $@

m4/ax_check_gnu_make.m4: ../m4/ax_check_gnu_make.m4
	$(TSU_V_CP) cp $< $@

m4/ax_count_cpus.m4: ../m4/ax_count_cpus.m4
	$(TSU_V_CP) cp $< $@

m4/ax_file_escapes.m4: ../m4/ax_file_escapes.m4
	$(TSU_V_CP) cp $< $@

m4/ax_print_to_file.m4: ../m4/ax_print_to_file.m4
	$(TSU_V_CP) cp $< $@

mp2pf: ../tools/mp2pf
	$(TSU_V_CP) cp $< $@

endif
