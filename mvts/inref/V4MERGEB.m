V4MERGEB ;IW-KO-YS-TS,V4MERGE,MVTS V9.10;15/6/96;PART-94
 ;COPYRIGHT MUMPS SYSTEMS LABORATORY 1994-1996
 ;
 W !!,"85---V4MERGEB:  MERGE Command  -B-"
 ;
1 S ^ABSN="40585",^ITEM="IV-585  $d(gvn)=10 and $d(lvn)=0"
 S ^NEXT="2^V4MERGEB,V4MERGEC^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1)="V1 ",^V(1,1,1,1)="V1111 ",A(2)="A2 "
 M ^V(1,1)=A(1)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("A"),^VCOMP=X_"/"_Y
 S ^VCORR="1:V1 1111:V1111 /2:A2 " D ^VEXAMINE K ^V
 ;
2 S ^ABSN="40586",^ITEM="IV-586  $d(gvn)=10 and $d(lvn)=1"
 S ^NEXT="3^V4MERGEB,V4MERGEC^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V="V ",^V(1,1,1,1)="V1111 ",A(2,1)="A21 ",A(2,1,1)="A211 "
 M ^V(1,1)=A(2,1,1)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("A"),^VCOMP=X_"/"_Y
 S ^VCORR=":V 11:A211 1111:V1111 /21:A21 211:A211 " D ^VEXAMINE K ^V
 ;
3 S ^ABSN="40587",^ITEM="IV-587  $d(gvn)=10 and $d(lvn)=10"
 S ^NEXT="4^V4MERGEB,V4MERGEC^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,1,1,1)="V1111 "
 S A(2,2)="A22 ",A(2,1)="A21 ",A(3)="A3 ",A("B",1)="AB1 "
 M ^V=A
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("A"),^VCOMP=X_"/"_Y
 S ^VCORR="1111:V1111 21:A21 22:A22 3:A3 B1:AB1 /21:A21 22:A22 3:A3 B1:AB1 " D ^VEXAMINE K ^V
 ;
4 S ^ABSN="40588",^ITEM="IV-588  $d(gvn)=10 and $d(lvn)=11"
 S ^NEXT="V4MERGEC^V4MERGE,V4READ^VV4" D ^V4PRESET K  K ^V
 S ^V(1,1)="V11 ",^V(1,1,1)="V111 "
 S A(1,2)="A12 ",A(1,2,1)="A121 ",A(1,2,1,1)="A1211 "
 M ^V(1)=A(1,2)
 S X=$$^V4MERE("^V"),Y=$$^V4MERE("A"),^VCOMP=X_"/"_Y
 S ^VCORR="1:A12 11:A121 111:A1211 /12:A12 121:A121 1211:A1211 " D ^VEXAMINE K ^V
 ;
END W !!,"End of 85 --- V4MERGEB",!
 K  Q
 ;
SUM S SUM=0 F I=1:1 S L=$T(+I) Q:L=""  F K=1:1:$L(L) S SUM=SUM+$A(L,K)
 Q
