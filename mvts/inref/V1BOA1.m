V1BOA1 ;IW-YS-TS,V1BOA,MVTS V9.10;15/6/96;BINARY OPERATOR ARITHMETIC: +  -1-
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1978-1996
 W !!,"36---V1BOA1: Binary operator  arithmetic: +  -1-"
 W !!,"Algebraic sum",!
22 W !,"I-22  expratom=0"
221 S ^ABSN="10434",^ITEM="I-22.1  0+0",^NEXT="222^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0+0,^VCORR=0 D ^VEXAMINE
222 S ^ABSN="10435",^ITEM="I-22.2  000000+0000",^NEXT="223^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=000000+0000,^VCORR=0 D ^VEXAMINE
223 S ^ABSN="10436",^ITEM="I-22.3  100+0",^NEXT="224^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=100+0,^VCORR=100 D ^VEXAMINE
224 S ^ABSN="10437",^ITEM="I-22.4  0+2.0",^NEXT="225^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0+2.0,^VCORR=2 D ^VEXAMINE
225 S ^ABSN="10438",^ITEM="I-22.5  00+-98.0010",^NEXT="226^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=00+-98.0010,^VCORR=-98.001 D ^VEXAMINE
226 S ^ABSN="10439",^ITEM="I-22.6  -0.0980010+0",^NEXT="23^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-0.0980010+0,^VCORR=-.098001 D ^VEXAMINE
 ;
23 W !,"I-23  Left expratom>0, right expratom>0"
231 S ^ABSN="10440",^ITEM="I-23.1  2+3",^NEXT="232^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=2+3,^VCORR=5 D ^VEXAMINE
232 S ^ABSN="10441",^ITEM="I-23.2  0.5+0.5",^NEXT="233^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0.5+0.5,^VCORR=1 D ^VEXAMINE
233 S ^ABSN="10442",^ITEM="I-23.3  0.3+0.300",^NEXT="234^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0.3+0.300,^VCORR=.6 D ^VEXAMINE
234 S ^ABSN="10443",^ITEM="I-23.4  0.01000+4",^NEXT="235^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0.01000+4,^VCORR=4.01 D ^VEXAMINE
235 S ^ABSN="10444",^ITEM="I-23.5  50.03000+4",^NEXT="24^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=50.03000+4,^VCORR=54.03 D ^VEXAMINE
 ;
24 W !,"I-24  Left expratom>0, right expratom<0"
241 S ^ABSN="10445",^ITEM="I-24.1  5+-2",^NEXT="242^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=5+-2,^VCORR=3 D ^VEXAMINE
242 S ^ABSN="10446",^ITEM="I-24.2  0.3+-0.3",^NEXT="243^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0.3+-0.3,^VCORR=0 D ^VEXAMINE
243 S ^ABSN="10447",^ITEM="I-24.3  10.1+-25",^NEXT="244^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=10.1+-25,^VCORR=-14.9 D ^VEXAMINE
244 S ^ABSN="10448",^ITEM="I-24.4  0.99+-0.34",^NEXT="25^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=0.99+-0.34,^VCORR=.65 D ^VEXAMINE
 ;
25 W !,"I-25  Left expratom<0, right expratom>0"
251 S ^ABSN="10449",^ITEM="I-25.1  -1+5",^NEXT="252^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-1+5,^VCORR=4 D ^VEXAMINE
252 S ^ABSN="10450",^ITEM="I-25.2  -597.2+25",^NEXT="253^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-597.2+25,^VCORR=-572.2 D ^VEXAMINE
253 S ^ABSN="10451",^ITEM="I-25.3  -0987.34+987.340",^NEXT="254^V1BOA1,V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-0987.34+987.340,^VCORR=0 D ^VEXAMINE
254 S ^ABSN="10452",^ITEM="I-25.4  -.345+.344",^NEXT="V1BOA2^V1BOA,V1BOR^VV1" D ^V1PRESET
 S ^VCOMP=-.345+.344,^VCORR=-.001 D ^VEXAMINE
 ;
END W !!,"End of 36---V1BOA1",!
 K  Q
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
