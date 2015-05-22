%
% Genjimon glyphs
% Copyright (C) 2011, 2012  Matthew Skala
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

genji_grid:=150;

if unknown tsu_brush_max:
  if known brush_max:
    tsu_brush_max:=brush_max;
  else:
    tsu_brush_max:=0.75;
  fi;
fi;
if unknown genji_hw:
  genji_hw:=tsu_brush_max/1.5;
  if genji_hw>0.85: genji_hw:=0.85; fi;
fi;
if unknown genji_outline:
  boolean genji_outline;
  genji_outline:=false;
fi;
if genji_outline: genji_hw:=1-genji_hw; fi;
if unknown genji_rounded:
  boolean genji_rounded;
  genji_rounded:=false;
fi;

path genji_background;

% gb(f) - start a line at the bottom in file f
vardef gb(expr f,gp) =
  begingroup
    save myxf,mygl;
    transform myxf;
    path mygl;
    myxf=identity scaled (genji_grid/2) shifted (whatever,whatever);
    ((3-f)*2,4) transformed myxf=centre_pt;
    if genji_rounded:
      mygl:=((0,-genji_hw){right}..(genji_hw,0){up}..
          {up}(gp shifted (0,1)){down}..
          {down}(-genji_hw,0)..{right}cycle) transformed myxf;
    else:
      mygl:=((0,-genji_hw)--(genji_hw,-genji_hw)--
          (gp shifted (0,1))--
          (-genji_hw,-genji_hw)--cycle) transformed myxf;
    fi;
    if genji_outline:
      unFill reverse mygl;
      save mybk,x,y,old_dir;
      path mybk;
      pair old_dir;
      mybk:=(0,genji_hw-1.99) transformed myxf;
      old_dir:=right;
      for i:=1 upto (length mygl)-1:
        numeric x[],y[];
        z1=(point i of mygl)-(precontrol i of mygl);
        z2=(postcontrol i of mygl)-(point i of mygl);
        z3=z1/abs(z1);
        z4=z2/abs(z2);
        if z3=z4:
          mybk:=mybk{old_dir}..
            {z3}((0.99-genji_hw)*genji_grid*(z4 rotated -90)
                +point i of mygl);
        else:
          mybk:=mybk{old_dir}..
            {z3}((0.99-genji_hw)*genji_grid*((z3+z4) rotated -90)
                +point i of mygl);
        fi;
        if (((point i of mybk)-(point (i-1) of mybk)) dotprod z3<0)
        or (((point i of mybk)-(point (i-1) of mybk)) dotprod old_dir<0):
          mybk:=(subpath (0,i-1) of mybk)--(point i of mybk);
        fi;
        if (length mybk)>3:
          z5=(subpath ((length mybk)-4,(length mybk)-3) of mybk)
              intersectiontimes
            (subpath ((length mybk)-1,(length mybk)) of mybk);
          if x5>0:
            mybk:=(subpath (0,(length mybk)-4+x5) of mybk)..
              (subpath ((length mybk)-1+y5,infinity) of mybk)
          fi;
        fi;
        if (length mybk)>3:
          z6=(subpath ((length mybk)-4,(length mybk)-3) of mybk)
              intersectiontimes
            (subpath ((length mybk)-2,(length mybk)-1) of mybk);
          if x6>0:
            mybk:=(subpath (0,(length mybk)-4+x6) of mybk)..
              (subpath ((length mybk)-2+y6,infinity) of mybk)
          fi;
        fi;
        if (length mybk)>3:
          z7=((point (length mybk)-4 of mybk)
            -(precontrol (length mybk)-4 of mybk));
          z8=((postcontrol (length mybk)-3 of mybk)
            -(point (length mybk)-3 of mybk));
          if (abs(z7)>0) and (abs(z8)>0):
            if (z7/abs(z7)) dotprod (z8/abs(z8))<-0.1:
              mybk:=(subpath (0,(length mybk)-4) of mybk)--
                (subpath ((length mybk)-3,infinity) of mybk);
            fi;
          fi;
        fi;
        old_dir:=z4;
      endfor;
      mybk:=regenerate(mybk{old_dir}..{right}cycle);
      dangerousFill mybk;
    else:
      Fill mygl;
    fi;
  endgroup;
enddef;

path ge_path[];
ge_path[0]=(genji_hw,0)--(genji_hw,genji_hw)--
  (-genji_hw,genji_hw)--(-genji_hw,0);
ge_path[1]=(genji_hw,0){up}..(0,genji_hw){left}..
  (-genji_hw,genji_hw)--(-genji_hw,0);
ge_path[2]=(genji_hw,0)--(genji_hw,genji_hw)--
  (0,genji_hw){left}..{down}(-genji_hw,0);
ge_path[3]=(genji_hw,0){up}..(0,genji_hw){left}..{down}(-genji_hw,0);

% ge(t) - end a line, style t
vardef ge(expr t) =
  if genji_rounded:
    ((genji_hw,0)..(ge_path[t] shifted (0,1))..(-genji_hw,0))
  else:
    ((genji_hw,0)..(ge_path[0] shifted (0,1))..(-genji_hw,0))
  fi
enddef;

% gf(d) - go forward d steps
vardef gf(expr d,gp) =
  ((genji_hw,0)--(gp shifted (0,2*d))--(-genji_hw,0))
enddef;

% gr(r) - turn to right, radius r
vardef gr(expr r,gp) =
  if genji_rounded and (r>=0):
    ((genji_hw,0){up}..
     (gp shifted (0,r+1) rotated -90 shifted (0,r+1))..
     {down}(-genji_hw,0))
  else:
    ((genji_hw,0)--(genji_hw,max(r,0)+1-genji_hw)--
     (gp shifted (0,max(r,0)+1) rotated -90 shifted (0,max(r,0)+1))--
     (-genji_hw,max(r,0)+1+genji_hw)--(-genji_hw,0))
  fi
enddef;

% gl(r) - turn to left, radius r
vardef gl(expr r,gp) =
  if genji_rounded and (r>=0):
    ((genji_hw,0)..
     (gp shifted (0,r+1) rotated 90 shifted (0,r+1))..
     (-genji_hw,0))
  else:
    ((genji_hw,0)--(genji_hw,max(r,0)+1+genji_hw)--
     (gp shifted (0,max(r,0)+1) rotated 90 shifted (0,max(r,0)+1))--
     (-genji_hw,max(r,0)+1-genji_hw)--(-genji_hw,0))
  fi
enddef;

% gt(gpa,gpb) - make a T-junction
vardef gt(expr gpa,gpb) =
  ((genji_hw,0)--(genji_hw,1-genji_hw)--
   (gpa shifted (0,1) rotated -90 shifted (0,1))--
   (genji_hw,1+genji_hw)--(gpb shifted (0,2))--(-genji_hw,0))
enddef;

% gx(gpa,gpb,gpc) - make an X-junction
vardef gx(expr gpa,gpb,gpc) =
  ((genji_hw,0)--(genji_hw,1-genji_hw)--
   (gpa shifted (0,1) rotated -90 shifted (0,1))--
   (genji_hw,1+genji_hw)--(gpb shifted (0,2))--(-genji_hw,1+genji_hw)--
   (gpc shifted (0,1) rotated 90 shifted (0,1))--
   (-genji_hw,1-genji_hw)--(-genji_hw,0))
enddef;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% #1 Kiritsubo
vardef genjimon.kiritsubo =
  gb(1,gf(2.5,gr(1,gr(1,gf(2.5,ge(3))))));
  gb(2,gf(2,ge(3)));
  gb(4,gf(3,gr(0,gr(0,gf(3,ge(3))))));
enddef;

% #2 Hahakigi
vardef genjimon.hahakigi =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,ge(3)));
  gb(3,gf(3,ge(3)));
  gb(4,gf(3,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #3 Utsusemi
vardef genjimon.utsusemi =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,ge(3)));
  gb(3,gf(3,ge(3)));
  gb(4,gf(3,gr(0,gr(0,gf(3,ge(3))))));
enddef;

% #4 Yuugao
vardef genjimon.yuugao =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,ge(3)));
  gb(3,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(5,gf(3,ge(3)));
enddef;

% #5 Wakamurasaki
vardef genjimon.wakamurasaki =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(4,gf(3,gr(0,gr(0,gf(3,ge(3))))));
enddef;

% #6 Suetsumuhana
vardef genjimon.suetsumuhana =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3))))))));
  gb(5,gf(3,ge(3)));
enddef;

% #7 Momiji no Ga
vardef genjimon.momiji_no_ga =
  gb(1,gf(3,ge(3)));
  gb(4,gf(2,ge(1)));
  gb(2,gf(3,gr(0,gt(gf(3,ge(3)),gf(0.5,gr(1,gf(2.5,ge(3))))))));
enddef;

% #8 Hana no En
vardef genjimon.hana_no_en =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,ge(3)));
  gb(3,gf(2.5,gr(1,gr(1,gf(2.5,ge(3))))));
  gb(4,gf(2,ge(3)));
enddef;

% #9 Aoi
vardef genjimon.aoi =
  gb(1,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(3,gf(3,ge(3)));
  gb(4,gf(3,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #10 Sakaki
vardef genjimon.sakaki =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gr(0,gf(3,ge(3)))))));
  gb(4,gf(3,gr(0,gr(0,gf(3,ge(3))))));
enddef;

% #11 Hana Chiru Sato
vardef genjimon.hana_chiru_sato =
  gb(1,gf(3,ge(3)));
  gb(2,gf(2,gr(2,gr(0,gx(gl(0,gf(2,ge(3))),
    gf(2,ge(3)),gr(0,gf(2,ge(3))))))));
enddef;

% #12 Suma
vardef genjimon.suma =
  gb(1,gf(2,gr(0,gx(gf(2,ge(3)),gt(gf(2,ge(3)),
    gr(0,gf(2,ge(3)))),gr(0,gf(1,gr(2,gf(2,ge(3)))))))));
enddef;

% #13 Akashi
vardef genjimon.akashi =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(4,gf(3,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #14 Miotsukushi
vardef genjimon.miotsukushi =
  gb(1,gf(3,ge(3)));
  gb(2,gf(2.5,gr(1,gf(0.5,gt(gf(3,ge(3)),gr(0,gf(3,ge(3))))))));
  gb(3,gf(2,ge(2)));
enddef;

% #15 Yomogyuu
vardef genjimon.yomogyuu =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gr(0,gf(3,ge(3)))))));
  gb(4,gf(3,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #16 Sekiya
vardef genjimon.sekiya =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,gr(0,gt(gf(3,ge(3)),gr(0,gf(3,ge(3)))))));
  gb(5,gf(3,ge(3)));
enddef;

% #17 Eawase
vardef genjimon.eawase =
  gb(1,gf(2,gr(0,gx(gf(2,ge(3)),gr(-1,gf(2,ge(3))),
    gr(0,gf(1.5,gr(1,gf(2.5,ge(3)))))))));
  gb(4,gf(2,ge(1)));
enddef;

% #18 Matsukaze
vardef genjimon.matsukaze =
  gb(1,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(3,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(5,gf(3,ge(3)));
enddef;

% #19 Usugumo
vardef genjimon.usugumo =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,gr(0,gt(gf(3,ge(3)),gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3))))))));
enddef;

% #20 Asagao
vardef genjimon.asagao =
  gb(1,gf(2.5,gr(1,gf(0.5,gt(gf(3,ge(3)),gr(0,gf(3,ge(3))))))));
  gb(2,gf(2,ge(2)));
  gb(5,gf(3,ge(3)));
enddef;

% #21 Otome
vardef genjimon.otome =
  gb(1,gf(2.5,gr(1,gr(1,gf(2.5,ge(3))))));
  gb(2,gf(2,ge(3)));
  gb(4,gf(3,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #22 Tamakazura
vardef genjimon.tamakazura =
  gb(1,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(3,gf(3,gr(0,gt(gf(3,ge(3)),gr(0,gf(3,ge(3)))))));
enddef;

% #23 Hatsune
vardef genjimon.hatsune =
  gb(1,gf(2,gr(0,gx(gf(2,ge(3)),gr(0,gf(2,ge(3))),
    gr(0,gr(2,gf(2,ge(3))))))));
  gb(5,gf(3,ge(3)));
enddef;

% #24 Kochou
vardef genjimon.kochou =
  gb(1,gf(2,gr(2,gf(1,gr(0,gx(reverse gt(gf(2,ge(3)),
    gr(0,gf(2,ge(3)))) xscaled -1,gf(2,ge(3)),
    gr(0,gf(2,ge(3)))))))));
enddef;

% #25 Hotaru
vardef genjimon.hotaru =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gf(0.5,gr(1,gf(2.5,ge(3))))))));
  gb(3,gf(2,ge(1)));
  gb(5,gf(3,ge(3)));
enddef;

% #26 Tokonatsu
vardef genjimon.tokonatsu =
  gb(1,gf(3,ge(3)));
  gb(2,gf(3,ge(3)));
  gb(3,gf(3,gr(0,gt(gf(3,ge(3)),gr(0,gf(3,ge(3)))))));
enddef;

% #27 Kagaribi
vardef genjimon.kagaribi =
  gb(1,gf(3,ge(3)));
  gb(2,gf(2.5,gr(1,gr(1,gf(2.5,ge(3))))));
  gb(3,gf(2,ge(3)));
  gb(5,gf(3,ge(3)));
enddef;

% #28 Nowaki
vardef genjimon.nowaki =
  gb(1,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(3,gf(3,ge(3)));
  gb(4,gf(3,gr(0,gr(0,gf(3,ge(3))))));
enddef;

% #29 Miyuki
vardef genjimon.miyuki =
  gb(1,gf(2,gr(2,gr(0,gx(gl(0,gf(2,ge(3))),
    gf(2,ge(3)),gt(gf(2,ge(3)),gr(0,gf(2,ge(3)))))))));
enddef;

% #30 Fujibakama
vardef genjimon.fujibakama =
  gb(1,gf(2.5,gr(1,gf(1,gr(1,gf(2.5,ge(3)))))));
  gb(2,gf(2,ge(2)));
  gb(3,gf(2,ge(1)));
  gb(5,gf(3,ge(3)));
enddef;

% #31 Makibashira
vardef genjimon.makibashira =
  gb(1,gf(1.5,gr(3,gr(3,gf(1.5,ge(3))))));
  gb(2,gf(1.5,gr(1,gr(1,gf(1.5,ge(3))))));
  gb(3,gf(1,ge(3)));
enddef;

% #32 Umegae
vardef genjimon.umegae =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gt(gf(3,ge(3)),gf(0.5,
    gr(1,gf(2.5,ge(3)))))))));
  gb(4,gf(2,ge(1)));
enddef;

% #33 Fuji no Uraba
vardef genjimon.fuji_no_uraba =
  gb(1,gf(3,ge(3)));
  gb(2,gf(2,gr(2,gr(2,gf(2,ge(3))))));
  gb(3,gf(2,gr(0,gr(0,gf(2,ge(3))))));
enddef;

% #34 Wakana no Jou
vardef genjimon.wakana_no_jou =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gf(1,
    gr(2,gf(2,ge(3))))))));
  gb(3,gf(2,gr(-1,gr(0,gf(2,ge(3))))));
enddef;

% #35 Wakana no Ge
vardef genjimon.wakana_no_ge =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gf(1,
    gr(0,gx(gl(-1,gf(2,ge(3))),gf(2,ge(3)),gr(0,gf(2,ge(3))))))))));
enddef;

% #36 Kashiwagi
vardef genjimon.kashiwagi =
  gb(1,gf(2.5,gr(1,gf(0.5,gt(gf(3,ge(3)),
    gf(0.5,gr(1,gf(2.5,ge(3)))))))));
  gb(2,gf(2,ge(2)));
  gb(4,gf(2,ge(1)));
enddef;

% #37 Yokobue
vardef genjimon.yokobue =
  gb(1,gf(2.5,gr(1,gf(1.5,gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3))))))));
  gb(2,gf(2,ge(2)));
  gb(3,gf(2,ge(0)));
enddef;

% #38 Suzumushi
vardef genjimon.suzumushi =
  gb(1,gf(2.5,gr(1,gf(1.5,gr(2,gf(2,ge(3)))))));
  gb(2,gf(2,ge(2)));
  gb(3,gf(2,gr(-1,gr(0,gf(2,ge(3))))));
enddef;

% #39 Yuugiri
vardef genjimon.yuugiri =
  gb(1,gf(1.5,gr(1,gf(0.5,gx(gf(2,ge(3)),gr(0,gf(2,ge(3))),
    gr(0,gr(2,gf(2,ge(3)))))))));
  gb(2,gf(1,ge(2)));
enddef;

% #40 Minori
vardef genjimon.minori =
  gb(1,gf(1.5,gr(3,gf(0.5,gr(0,gx(gf(0.5,gl(1,gf(1.5,ge(3)))),
    gf(2,ge(3)),gr(0,gf(2,ge(3)))))))));
  gb(3,gf(1,ge(2)));
enddef;

% #41 Maboroshi
vardef genjimon.maboroshi =
  gb(1,gf(2.5,gr(1,gf(2,gr(1,gf(2.5,ge(3)))))));
  gb(2,gf(2,ge(2)));
  gb(3,gf(2,ge(0)));
  gb(4,gf(2,ge(1)));
enddef;

% #42 Ninounomiya
vardef genjimon.ninounomiya =
  gb(1,gf(2,gr(0,gt(gf(2,ge(3)),gx(gf(2,ge(3)),gr(0,gf(2,ge(3))),
    gr(0,gr(2,gf(2,ge(3)))))))));
enddef;

% #43 Koubai
vardef genjimon.koubai =
  gb(1,gf(3,ge(3)));
  gb(2,gf(2.5,gr(1,gf(1,gr(1,gf(2.5,ge(3)))))));
  gb(3,gf(2,ge(2)));
  gb(4,gf(2,ge(1)));
enddef;

% #44 Takegawa
vardef genjimon.takegawa =
  gb(1,gf(2,gr(2,gf(1,gr(2,gf(2,ge(3)))))));
  gb(2,gf(2,gr(0,gt(gf(2,ge(3)),gr(0,gf(2,ge(3)))))));
enddef;

% #45 Hashihime
vardef genjimon.hashihime =
  gb(1,gf(2.5,gr(1,gf(0.5,gt(gf(3,ge(3)),gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3)))))))));
  gb(2,gf(2,ge(2)));
enddef;

% #46 Shii ga Moto
vardef genjimon.shii_ga_moto =
  gb(1,gf(2,gr(2,gr(2,gf(2,ge(3))))));
  gb(2,gf(2,gr(0,gr(0,gf(2,ge(3))))));
  gb(5,gf(3,ge(3)));
enddef;

% #47 Agemaki
vardef genjimon.agemaki =
  gb(1,gf(2,gr(2,gf(1,gt(gf(3,ge(3)),gr(0,gf(3,ge(3))))))));
  gb(2,gf(2,gr(0,gr(-1,gf(2,ge(3))))));
enddef;

% #48 Sawarabi
vardef genjimon.sawarabi =
  gb(1,gf(3,gr(0,gr(0,gf(3,ge(3))))));
  gb(3,gf(2.5,gr(1,gr(1,gf(2.5,ge(3))))));
  gb(4,gf(2,ge(3)));
enddef;

% #49 Yadorigi
vardef genjimon.yadorigi =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gf(1,gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3)))))))));
  gb(3,gf(2,ge(0)));
enddef;

% #50 Azumaya
vardef genjimon.azumaya =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gf(1.5,gr(1,gf(2.5,ge(3))))))));
  gb(3,gf(2,ge(0)));
  gb(4,gf(2,ge(1)));
enddef;

% #51 Ukifune
vardef genjimon.ukifune =
  gb(1,gf(2,gr(2,gf(1,gf(0.5,gr(1,gf(2.5,ge(3))))))));
  gb(2,gf(2,gr(0,gr(-1,gf(2,ge(3))))));
  gb(4,gf(2,ge(1)));
enddef;

% #52 Kagerou
vardef genjimon.kagerou =
  gb(1,gf(2,gr(2,gt(gx(gl(0,gf(2,ge(3))),
    gf(2,ge(3)),gr(0,gf(2,ge(3)))),gr(2,gf(2,ge(3)))))));
enddef;

% #53 Tenarai
vardef genjimon.tenarai =
  gb(1,gf(3,gr(0,gt(gf(3,ge(3)),gt(gf(3,ge(3)),gt(gf(3,ge(3)),
    gr(0,gf(3,ge(3)))))))));
enddef;

% #54 Yume no Ukihashi
vardef genjimon.yume_no_ukihashi =
  gb(1,gf(3,gr(0,gr(0,gf(3,gl(0,gl(0,gf(3,gr(0,gr(0,gf(3,
    gl(0,gl(0,gf(3,ge(3)))))))))))))));
enddef;
