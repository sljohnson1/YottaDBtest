V4QSUB ;IW-KO-YS-TS,VV4,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"Tests of $QSUBSCRIPT function"
 ;
V4QSUB1 W !!,"54---V4QSUB1" D ^V4QSUB1
V4QSUB2 W !!,"55---V4QSUB2" D ^V4QSUB2
V4QSUB3 W !!,"56---V4QSUB3" D ^V4QSUB3
V4QSUB4 W !!,"57---V4QSUB4" D ^V4QSUB4
V4QSUB5 W !!,"58---V4QSUB5" D ^V4QSUB5
V4QSUB6 W !!,"59---V4QSUB6" D ^V4QSUB6
V4QSUB7 W !!,"60---V4QSUB7" D ^V4QSUB7
V4QSUB8 W !!,"61---V4QSUB8" D ^V4QSUB8
V4QSUB9 W !!,"62---V4QSUB9" D ^V4QSUB9
V4QSUB10 W !!,"63---V4QSUB10" D ^V4QSUB10
V4QSUB11 W !!,"64---V4QSUB11" D ^V4QSUB11
V4QSUB12 W !!,"65---V4QSUB12" D ^V4QSUB12
V4QSUB13 W !!,"66---V4QSUB13" D ^V4QSUB13
V4QSUB14 W !!,"67---V4QSUB14" D ^V4QSUB14
V4QSUB15 W !!,"68---V4QSUB15" D ^V4QSUB15
END Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
