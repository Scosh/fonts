%
% Genjimon font skeleton
% Copyright (C) 2010, 2012  Matthew Skala
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, version 3.
%
% As a special exception, if you create a document which uses this font, and
% embed this font or unaltered portions of this font into the document, this
% font does not by itself cause the resulting document to be covered by the
% GNU General Public License. This exception does not however invalidate any
% other reasons why the document might be covered by the GNU General Public
% License. If you modify this font, you may extend this exception to your
% version of the font, but you are not obligated to do so. If you do not
% wish to do so, delete this exception statement from your version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%
% Matthew Skala
% http://ansuz.sooke.bc.ca/
% mskala@ansuz.sooke.bc.ca
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

def begintsuglyph(expr name,code) =
  message name;
  encode(name) (code); standard_introduce(name);
  beginglyph(name);
enddef;

def endtsuglyph =
    fix_hsbw(1000,0,0);
  endglyph
enddef;

pair centre_pt;
centre_pt:=(500,320);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

beginfont

input "genjimon.mp";

% #1 Kiritsubo
begintsuglyph("genjimon1",65)
  genjimon.kiritsubo;
endtsuglyph;

% #2 Hahakigi
begintsuglyph("genjimon2",66)
  genjimon.hahakigi;
endtsuglyph;

% #3 Utsusemi
begintsuglyph("genjimon3",67)
  genjimon.utsusemi;
endtsuglyph;

% #4 Yuugao
begintsuglyph("genjimon4",68)
  genjimon.yuugao;
endtsuglyph;

% #5 Wakamurasaki
begintsuglyph("genjimon5",69)
  genjimon.wakamurasaki;
endtsuglyph;

% #6 Suetsumuhana
begintsuglyph("genjimon6",70)
  genjimon.suetsumuhana;
endtsuglyph;

% #7 Momiji no Ga
begintsuglyph("genjimon7",71)
  genjimon.momiji_no_ga;
endtsuglyph;

% #8 Hana no En
begintsuglyph("genjimon8",72)
  genjimon.hana_no_en;
endtsuglyph;

% #9 Aoi
begintsuglyph("genjimon9",73)
  genjimon.aoi;
endtsuglyph;

% #10 Sakaki
begintsuglyph("genjimon10",74)
  genjimon.sakaki;
endtsuglyph;

% #11 Hana Chiru Sato
begintsuglyph("genjimon11",75)
  genjimon.hana_chiru_sato;
endtsuglyph;

% #12 Suma
begintsuglyph("genjimon12",76)
  genjimon.suma;
endtsuglyph;

% #13 Akashi
begintsuglyph("genjimon13",77)
  genjimon.akashi;
endtsuglyph;

% #14 Miotsukushi
begintsuglyph("genjimon14",78)
  genjimon.miotsukushi;
endtsuglyph;

% #15 Yomogyuu
begintsuglyph("genjimon15",79)
  genjimon.yomogyuu;
endtsuglyph;

% #16 Sekiya
begintsuglyph("genjimon16",80)
  genjimon.sekiya;
endtsuglyph;

% #17 Eawase
begintsuglyph("genjimon17",81)
  genjimon.eawase;
endtsuglyph;

% #18 Matsukaze
begintsuglyph("genjimon18",82)
  genjimon.matsukaze;
endtsuglyph;

% #19 Usugumo
begintsuglyph("genjimon19",83)
  genjimon.usugumo;
endtsuglyph;

% #20 Asagao
begintsuglyph("genjimon20",84)
  genjimon.asagao;
endtsuglyph;

% #21 Otome
begintsuglyph("genjimon21",85)
  genjimon.otome;
endtsuglyph;

% #22 Tamakazura
begintsuglyph("genjimon22",86)
  genjimon.tamakazura;
endtsuglyph;

% #23 Hatsune
begintsuglyph("genjimon23",87)
  genjimon.hatsune;
endtsuglyph;

% #24 Kochou
begintsuglyph("genjimon24",88)
  genjimon.kochou;
endtsuglyph;

% #25 Hotaru
begintsuglyph("genjimon25",89)
  genjimon.hotaru;
endtsuglyph;

% #26 Tokonatsu
begintsuglyph("genjimon26",90)
  genjimon.tokonatsu;
endtsuglyph;

% #27 Kagaribi
begintsuglyph("genjimon27",91)
  genjimon.kagaribi;
endtsuglyph;

% #28 Nowaki
begintsuglyph("genjimon28",97)
  genjimon.nowaki;
endtsuglyph;

% #29 Miyuki
begintsuglyph("genjimon29",98)
  genjimon.miyuki;
endtsuglyph;

% #30 Fujibakama
begintsuglyph("genjimon30",99)
  genjimon.fujibakama;
endtsuglyph;

% #31 Makibashira
begintsuglyph("genjimon31",100)
  genjimon.makibashira;
endtsuglyph;

% #32 Umegae
begintsuglyph("genjimon32",101)
  genjimon.umegae;
endtsuglyph;

% #33 Fuji no Uraba
begintsuglyph("genjimon33",102)
  genjimon.fuji_no_uraba;
endtsuglyph;

% #34 Wakana no Jou
begintsuglyph("genjimon34",103)
  genjimon.wakana_no_jou;
endtsuglyph;

% #35 Wakana no Ge
begintsuglyph("genjimon35",104)
  genjimon.wakana_no_ge;
endtsuglyph;

% #36 Kashiwagi
begintsuglyph("genjimon36",105)
  genjimon.kashiwagi;
endtsuglyph;

% #37 Yokobue
begintsuglyph("genjimon37",106)
  genjimon.yokobue;
endtsuglyph;

% #38 Suzumushi
begintsuglyph("genjimon38",107)
  genjimon.suzumushi;
endtsuglyph;

% #39 Yuugiri
begintsuglyph("genjimon39",108)
  genjimon.yuugiri;
endtsuglyph;

% #40 Minori
begintsuglyph("genjimon40",109)
  genjimon.minori;
endtsuglyph;

% #41 Maboroshi
begintsuglyph("genjimon41",110)
  genjimon.maboroshi;
endtsuglyph;

% #42 Ninounomiya
begintsuglyph("genjimon42",111)
  genjimon.ninounomiya;
endtsuglyph;

% #43 Koubai
begintsuglyph("genjimon43",112)
  genjimon.koubai;
endtsuglyph;

% #44 Takegawa
begintsuglyph("genjimon44",113)
  genjimon.takegawa;
endtsuglyph;

% #45 Hashihime
begintsuglyph("genjimon45",114)
  genjimon.hashihime;
endtsuglyph;

% #46 Shii ga Moto
begintsuglyph("genjimon46",115)
  genjimon.shii_ga_moto;
endtsuglyph;

% #47 Agemaki
begintsuglyph("genjimon47",116)
  genjimon.agemaki;
endtsuglyph;

% #48 Sawarabi
begintsuglyph("genjimon48",117)
  genjimon.sawarabi;
endtsuglyph;

% #49 Yadorigi
begintsuglyph("genjimon49",118)
  genjimon.yadorigi;
endtsuglyph;

% #50 Azumaya
begintsuglyph("genjimon50",119)
  genjimon.azumaya;
endtsuglyph;

% #51 Ukifune
begintsuglyph("genjimon51",120)
  genjimon.ukifune;
endtsuglyph;

% #52 Kagerou
begintsuglyph("genjimon52",121)
  genjimon.kagerou;
endtsuglyph;

% #53 Tenarai
begintsuglyph("genjimon53",122)
  genjimon.tenarai;
endtsuglyph;

% #54 Yume no Ukihashi
begintsuglyph("genjimon54",123)
  genjimon.yume_no_ukihashi;
endtsuglyph;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

endfont;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
