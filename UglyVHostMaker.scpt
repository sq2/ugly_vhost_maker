FasdUAS 1.101.10   ��   ��    k             j     �� �� $0 serveradminemail serverAdminEmail  m        � 	 	     
  
 l     ��������  ��  ��        p       �� �� 0 	hostsfile 	hostsFile  �� �� 0 projectfolder projectFolder  �� �� 0 	txtdomain 	txtDomain  ������ $0 vhostsconfigpath vHostsConfigPath��        l     ��������  ��  ��        l     ��  ��    $ Set server admin email address     �   < S e t   s e r v e r   a d m i n   e m a i l   a d d r e s s      l     ����  I    ��  
�� .sysodlogaskr        TEXT  m        �   t E n t e r   t h e   s e r v e r   a d m i n ' s   e m a i l   a d d r e s s : 
 ( n a m e @ e x a m p l e . c o m )  ��  ��
�� 
dtxt   o    ���� $0 serveradminemail serverAdminEmail��  ��  ��     ! " ! l    #���� # r     $ % $ l    &���� & n     ' ( ' 1    ��
�� 
ttxt ( 1    ��
�� 
rslt��  ��   % o      ���� $0 serveradminemail serverAdminEmail��  ��   "  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - " Set virtual host config path    . � / / 8 S e t   v i r t u a l   h o s t   c o n f i g   p a t h ,  0 1 0 l    2���� 2 r     3 4 3 m     5 5 � 6 6  / S i t e s / _ C o n f i g 4 o      ���� $0 vhostsconfigpath vHostsConfigPath��  ��   1  7 8 7 l     ��������  ��  ��   8  9 : 9 l     �� ; <��   ;  Get hosts file contents    < � = = . G e t   h o s t s   f i l e   c o n t e n t s :  > ? > l   " @���� @ r    " A B A I     �� C���� 0 readfile readFile C  D�� D m     E E � F F  / e t c / h o s t s��  ��   B o      ���� 0 	hostsfile 	hostsFile��  ��   ?  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K  Get project folder    L � M M $ G e t   p r o j e c t   f o l d e r J  N O N l  # , P���� P r   # , Q R Q I  # *���� S
�� .sysostflalis    ��� null��   S �� T��
�� 
prmp T m   % & U U � V V X C h o o s e   p r o j e c t   f o l d e r   c o n t a i n i n g   i n d e x   f i l e :��   R o      ���� 0 projectfolder projectFolder��  ��   O  W X W l     �� Y Z��   Y 3 -display dialog "You entered " & projectFolder    Z � [ [ Z d i s p l a y   d i a l o g   " Y o u   e n t e r e d   "   &   p r o j e c t F o l d e r X  \ ] \ l     ��������  ��  ��   ]  ^ _ ^ l     �� ` a��   `  Get domain name    a � b b  G e t   d o m a i n   n a m e _  c d c l  - B e���� e I  - B�� f g
�� .sysodlogaskr        TEXT f m   - . h h � i i T E n t e r   n e w   l o c a l   d o m a i n   n a m e : 
 ( e x a m p l e . d e v ) g �� j��
�� 
dtxt j I   / >�� k���� 0 settodev setToDev k  l�� l c   0 : m n m I   0 8�� o���� 0 getfoldername getFolderName o  p�� p c   1 4 q r q o   1 2���� 0 projectfolder projectFolder r m   2 3��
�� 
ctxt��  ��   n m   8 9��
�� 
ctxt��  ��  ��  ��  ��   d  s t s l  C J u���� u r   C J v w v l  C F x���� x n   C F y z y 1   D F��
�� 
ttxt z 1   C D��
�� 
rslt��  ��   w o      ���� 0 	txtdomain 	txtDomain��  ��   t  { | { l     ��������  ��  ��   |  } ~ } l  K n ����  r   K n � � � I  K j�� ���
�� .sysodlogaskr        TEXT � b   K f � � � b   K ` � � � b   K \ � � � b   K V � � � b   K R � � � m   K N � � � � � l C r e a t e   a   n e w   v i r t u a l   h o s t   w i t h   t h e s e   v a l u e s ? 
 
 D o m a i n :   � o   N Q���� 0 	txtdomain 	txtDomain � m   R U � � � � �  
 P r o j e c t :   � n   V [ � � � 1   W [��
�� 
psxp � l  V W ����� � o   V W���� 0 projectfolder projectFolder��  ��   � m   \ _ � � � � �  
 S e r v e r   A d m i n :   � o   ` e���� $0 serveradminemail serverAdminEmail��   � o      ���� 0 dlgcontinue dlgContinue��  ��   ~  � � � l  o � ����� � Z   o � � ����� � =  o z � � � n   o v � � � 1   r v��
�� 
bhit � o   o r���� 0 dlgcontinue dlgContinue � m   v y � � � � �  O K � I   } ��������� 0 	runscript 	runScript��  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Run this script    � � � �  R u n   t h i s   s c r i p t �  � � � i     � � � I      �������� 0 	runscript 	runScript��  ��   � k      � �  � � � I     ��������  0 writehostsfile writeHostsFile��  ��   �  � � � I    �� ����� 0 
writevhost 
writeVHost �  � � � o    ���� 0 	txtdomain 	txtDomain �  ��� � n     � � � 1   	 ��
�� 
psxp � l   	 ����� � o    	���� 0 projectfolder projectFolder��  ��  ��  ��   �  ��� � I    �������� 0 restartapache restartApache��  ��  ��   �  � � � l     �������  ��  �   �  � � � l     �~�}�|�~  �}  �|   �  � � � l     �{ � ��{   �  Read a file    � � � �  R e a d   a   f i l e �  � � � i    
 � � � I      �z ��y�z 0 readfile readFile �  ��x � o      �w�w 0 unixpath unixPath�x  �y   � k     # � �  � � � r     
 � � � l     ��v�u � I    �t ��s
�t .rdwropenshor       file � l     ��r�q � 4     �p �
�p 
psxf � o    �o�o 0 unixpath unixPath�r  �q  �s  �v  �u   � o      �n�n 0 thefile theFile �  � � � r     � � � l    ��m�l � I   �k � �
�k .rdwrread****        **** � o    �j�j 0 thefile theFile � �i � �
�i 
rdfr � l    ��h�g � I   �f ��e
�f .rdwrgeofcomp       **** � o    �d�d 0 thefile theFile�e  �h  �g   � �c ��b
�c 
as   � m    �a
�a 
utf8�b  �m  �l   � o      �`�` 0 txt   �  � � � I    �_ ��^
�_ .rdwrclosnull���     **** � o    �]�] 0 thefile theFile�^   �  ��\ � L   ! # � � o   ! "�[�[ 0 txt  �\   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � l     �W � ��W   �  Write hosts file    � � � �   W r i t e   h o s t s   f i l e �  � � � i     � � � I      �V�U�T�V  0 writehostsfile writeHostsFile�U  �T   � k     o � �  � � � r      � � � m     �S�S  � o      �R�R 0 _result   �  � � � r    	 � � � b     � � � m     � � � � �  1 2 7 . 0 . 0 . 1   � o    �Q�Q 0 	txtdomain 	txtDomain � o      �P�P 0 domline domLine �  � � � Q   
 ! � ��O � r     � � � I   �N �M
�N .sysoexecTEXT���     TEXT  b     b     m     �  g r e p   - q   " o    �L�L 0 domline domLine m     �  "   " / e t c / h o s t s "�M   � o      �K�K 0 _result   � R      �J�I�H
�J .ascrerr ****      � ****�I  �H  �O   � 	
	 Z   " 7�G�F =  " % o   " #�E�E 0 _result   m   # $�D�D  I  ( 3�C
�C .sysoexecTEXT���     TEXT b   ( - b   ( + m   ( ) � 
 e c h o   o   ) *�B�B 0 domline domLine m   + , �    > >   / e t c / h o s t s �A�@
�A 
badm m   . /�?
�? boovtrue�@  �G  �F  
  l  8 8�>�=�<�>  �=  �<    r   8 ; m   8 9�;�;  o      �:�: 0 _result    !  r   < A"#" b   < ?$%$ m   < =&& �''  1 2 7 . 0 . 0 . 1   w w w .% o   = >�9�9 0 	txtdomain 	txtDomain# o      �8�8 0 
wwwdomline 
wwwDomLine! ()( Q   B Y*+�7* r   E P,-, I  E N�6.�5
�6 .sysoexecTEXT���     TEXT. b   E J/0/ b   E H121 m   E F33 �44  g r e p   - q   "2 o   F G�4�4 0 
wwwdomline 
wwwDomLine0 m   H I55 �66  "   " / e t c / h o s t s "�5  - o      �3�3 0 _result  + R      �2�1�0
�2 .ascrerr ****      � ****�1  �0  �7  ) 7�/7 Z   Z o89�.�-8 =  Z ]:;: o   Z [�,�, 0 _result  ; m   [ \�+�+ 9 I  ` k�*<=
�* .sysoexecTEXT���     TEXT< b   ` e>?> b   ` c@A@ m   ` aBB �CC 
 e c h o  A o   a b�)�) 0 
wwwdomline 
wwwDomLine? m   c dDD �EE    > >   / e t c / h o s t s= �(F�'
�( 
badmF m   f g�&
�& boovtrue�'  �.  �-  �/   � GHG l     �%�$�#�%  �$  �#  H IJI l     �"KL�"  K  Write to file   L �MM  W r i t e   t o   f i l eJ NON i    PQP I      �!R� �! 0 	writefile 	writeFileR STS o      �� 0 thefile theFileT UVU o      �� 0 thedata theDataV W�W o      �� &0 overwritecontents overwriteContents�  �   Q k     =XX YZY Q     [\�[ I   �]�
� .rdwrclosnull���     ****] o    �� 0 thefile theFile�  \ R      ���
� .ascrerr ****      � ****�  �  �  Z ^_^ r    `a` I   �bc
� .rdwropenshor       fileb o    �� 0 thefile theFilec �d�
� 
permd m    �
� boovtrue�  a o      �� 0 _openedfile _openedFile_ efe Z   -gh��g =   iji o    �� &0 overwritecontents overwriteContentsj m    �
� boovtrueh I  " )�
kl
�
 .rdwrseofnull���     ****k o   " #�	�	 0 _openedfile _openedFilel �m�
� 
set2m m   $ %��  �  �  �  f non I  . 7�pq
� .rdwrwritnull���     ****p o   . /�� 0 thedata theDataq �rs
� 
refnr o   0 1�� 0 thefile theFiles �t� 
� 
wratt m   2 3��
�� rdwreof �   o u��u I  8 =��v��
�� .rdwrclosnull���     ****v o   8 9���� 0 thefile theFile��  ��  O wxw l     ��������  ��  ��  x yzy l     ��{|��  {  Write virtual host file   | �}} . W r i t e   v i r t u a l   h o s t   f i l ez ~~ i    ��� I      ������� 0 
writevhost 
writeVHost� ��� o      ���� 0 
domainname 
domainName� ���� 1      ��
�� 
asdr��  ��  � I    5�����
�� .sysoexecTEXT���     TEXT� b     1��� b     /��� b     -��� b     +��� b     )��� b     '��� b     %��� b     #��� b     !��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     	��� b     ��� b     ��� b     ��� m     �� ���  c a t   >  � o    ���� $0 vhostsconfigpath vHostsConfigPath� m    �� ���  /� o    ���� 0 
domainname 
domainName� m    �� ��� . . c o n f   < <   E O F 
 #   D o m a i n :  � o   	 
���� 0 
domainname 
domainName� m    �� ���  
 #   P a t h :  � 1    ��
�� 
asdr� m    �� ��� N 
 < V i r t u a l H o s t   * : 8 0 >   
         D o c u m e n t R o o t   "� 1    ��
�� 
asdr� m    �� ��� $ " 
         S e r v e r A d m i n  � o    ���� $0 serveradminemail serverAdminEmail� m    �� ��� " 
         S e r v e r N a m e    � o    ���� 0 
domainname 
domainName� m     �� ��� * 
         S e r v e r A l i a s   w w w .� o   ! "���� 0 
domainname 
domainName� m   # $�� ���  
         E r r o r L o g   "� 1   % &��
�� 
asdr� m   ' (�� ��� H l o c a l h o s t _ e r r o r . l o g " 
         C u s t o m L o g   "� 1   ) *��
�� 
asdr� m   + ,�� ��� Z l o c a l h o s t _ a c c e s s . l o g "   c o m m o n 
         < d i r e c t o r y   "� 1   - .��
�� 
asdr� m   / 0�� ���Z " > 
                 O p t i o n s   I n d e x e s   F o l l o w S y m L i n k s   M u l t i V i e w s 
                 A l l o w O v e r r i d e   A l l 
                 a l l o w   f r o m   a l l 
         < / d i r e c t o r y > 
         D i r e c t o r y I n d e x   i n d e x . h t m l   i n d e x . p h p 
 < / V i r t u a l H o s t >��   ��� l     ��������  ��  ��  � ��� l     ������  �  Restart Apache   � ���  R e s t a r t   A p a c h e� ��� i    ��� I      �������� 0 restartapache restartApache��  ��  � I    ����
�� .sysoexecTEXT���     TEXT� m     �� ��� " a p a c h e c t l   r e s t a r t� �����
�� 
badm� m    ��
�� boovtrue��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' !Find and replace text in a string   � ��� B F i n d   a n d   r e p l a c e   t e x t   i n   a   s t r i n g� ��� i    ��� I      ������� 0 replacetext replaceText� ��� o      ���� 0 sometext someText� ��� o      ���� 0 find  � ���� o      ���� 0 replace  ��  ��  � k     &�� ��� r     ��� n     ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 prevtids prevTIDs� ��� r    ��� o    ���� 0 find  � n      ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 sometext someText� o      ���� 0 sometext someText� � � r     o    ���� 0 replace   n       1    ��
�� 
txdl 1    ��
�� 
ascr   r     b    	
	 m     �  
 o    ���� 0 sometext someText o      ���� 0 sometext someText  r    # o    ���� 0 prevtids prevTIDs n       1     "��
�� 
txdl 1     ��
�� 
ascr �� L   $ & o   $ %���� 0 sometext someText��  �  l     ��������  ��  ��    l     ����    Get folder name    �  G e t   f o l d e r   n a m e  i    " I      �� ���� 0 getfoldername getFolderName  !��! 1      ��
�� 
ppth��  ��   k     $"" #$# l    %&'% r     ()( n    *+* 1    ��
�� 
txdl+  f     ) o      ���� 0 	olddelims 	oldDelims& "  save the current delimiters   ' �,, 8   s a v e   t h e   c u r r e n t   d e l i m i t e r s$ -.- l   ��������  ��  ��  . /0/ l   1231 r    454 m    66 �77  :5 n     898 1    
��
�� 
txdl9  f    2    the character to split on   3 �:: 4   t h e   c h a r a c t e r   t o   s p l i t   o n0 ;<; r    =>= l   ?����? n    @A@ 7   ��BC
�� 
cobjB m    ������C m    ������A n    DED 2   ��
�� 
citmE 1    ��
�� 
ppth��  ��  > o      ���� 
0 output  < FGF l   ��������  ��  ��  G HIH l   !JKLJ r    !MNM o    ���� 0 	olddelims 	oldDelimsN n     OPO 1     ��
�� 
txdlP  f    K 2 , just to be safe, restore the old delimiters   L �QQ X   j u s t   t o   b e   s a f e ,   r e s t o r e   t h e   o l d   d e l i m i t e r sI RSR l  " "��������  ��  ��  S T��T L   " $UU o   " #���� 
0 output  ��   VWV l     ��������  ��  ��  W XYX l     ��Z[��  Z  Change to .dev   [ �\\  C h a n g e   t o   . d e vY ]��] i   # &^_^ I      ��`���� 0 settodev setToDev` a��a 1      ��
�� 
pnam��  ��  _ k     �bb cdc r     efe n     ghg 1    ��
�� 
lengh 1     ��
�� 
pnamf o      ���� 0 
namelength 
nameLengthd iji l   ��������  ��  ��  j klk Z    �mn����m E    	opo 1    ��
�� 
pnamp m    qq �rr  .n Z    �stu��s G    'vwv G    xyx G    z{z D    |}| 1    ��
�� 
pnam} m    ~~ �  . c o m{ D    ��� 1    ��
�� 
pnam� m    �� ���  . n e ty D    ��� 1    ��
�� 
pnam� m    �� ���  . o r gw D   " %��� 1   " #��
�� 
pnam� m   # $�� ���  . b i zt k   * >�� ��� r   * 9��� l  * 7������ n   * 7��� 7 + 7����
�� 
ctxt� m   / 1���� � l  2 6������ \   2 6��� o   3 4�� 0 
namelength 
nameLength� m   4 5�~�~ ��  ��  � 1   * +�}
�} 
pnam��  ��  � o      �|�| 0 newname newName� ��� l  : :�{�z�y�{  �z  �y  � ��x� L   : >�� b   : =��� o   : ;�w�w 0 newname newName� m   ; <�� ���  . d e v�x  u ��� G   A L��� D   A D��� 1   A B�v
�v 
pnam� m   B C�� ���  . u s� D   G J��� 1   G H�u
�u 
pnam� m   H I�� ���  . c c� ��� k   O c�� ��� r   O ^��� l  O \��t�s� n   O \��� 7 P \�r��
�r 
ctxt� m   T V�q�q � l  W [��p�o� \   W [��� o   X Y�n�n 0 
namelength 
nameLength� m   Y Z�m�m �p  �o  � 1   O P�l
�l 
pnam�t  �s  � o      �k�k 0 newname newName� ��� l  _ _�j�i�h�j  �i  �h  � ��g� L   _ c�� b   _ b��� o   _ `�f�f 0 newname newName� m   ` a�� ���  . d e v�g  � ��� D   f i��� 1   f g�e
�e 
pnam� m   g h�� ��� 
 . i n f o� ��� k   l ��� ��� r   l {��� l  l y��d�c� n   l y��� 7 m y�b��
�b 
ctxt� m   q s�a�a � l  t x��`�_� \   t x��� o   u v�^�^ 0 
namelength 
nameLength� m   v w�]�] �`  �_  � 1   l m�\
�\ 
pnam�d  �c  � o      �[�[ 0 newname newName� ��� l  | |�Z�Y�X�Z  �Y  �X  � ��W� L   | ��� b   | ��� o   | }�V�V 0 newname newName� m   } ~�� ���  . d e v�W  � ��� D   � ���� 1   � ��U
�U 
pnam� m   � ��� ���  . d e v� ��T� L   � ��� 1   � ��S
�S 
pnam�T  ��  ��  ��  l ��� l  � ��R�Q�P�R  �Q  �P  � ��O� L   � ��� b   � ���� 1   � ��N
�N 
pnam� m   � ��� ���  . d e v�O  ��       �M� �����������M  � �L�K�J�I�H�G�F�E�D�C�B�L $0 serveradminemail serverAdminEmail�K 0 	runscript 	runScript�J 0 readfile readFile�I  0 writehostsfile writeHostsFile�H 0 	writefile 	writeFile�G 0 
writevhost 
writeVHost�F 0 restartapache restartApache�E 0 replacetext replaceText�D 0 getfoldername getFolderName�C 0 settodev setToDev
�B .aevtoappnull  �   � ****� �A ��@�?���>�A 0 	runscript 	runScript�@  �?  �  � �=�<�;�:�9�8�=  0 writehostsfile writeHostsFile�< 0 	txtdomain 	txtDomain�; 0 projectfolder projectFolder
�: 
psxp�9 0 
writevhost 
writeVHost�8 0 restartapache restartApache�> *j+  O*���,l+ O*j+ � �7 ��6�5���4�7 0 readfile readFile�6 �3 �3    �2�2 0 unixpath unixPath�5  � �1�0�/�1 0 unixpath unixPath�0 0 thefile theFile�/ 0 txt  � 	�.�-�,�+�*�)�(�'�&
�. 
psxf
�- .rdwropenshor       file
�, 
rdfr
�+ .rdwrgeofcomp       ****
�* 
as  
�) 
utf8�( 
�' .rdwrread****        ****
�& .rdwrclosnull���     ****�4 $*�/j E�O��j ��� E�O�j O�� �% ��$�#�"�%  0 writehostsfile writeHostsFile�$  �#   �!� ��! 0 _result  �  0 domline domLine� 0 
wwwdomline 
wwwDomLine  ������&35BD� 0 	txtdomain 	txtDomain
� .sysoexecTEXT���     TEXT�  �  
� 
badm�" pkE�O��%E�O �%�%j E�W X  hO�k  �%�%�el Y hOkE�O��%E�O �%�%j E�W X  hO�k  ��%�%�el Y h� �Q���� 0 	writefile 	writeFile� ��   ���� 0 thefile theFile� 0 thedata theData� &0 overwritecontents overwriteContents�   ����� 0 thefile theFile� 0 thedata theData� &0 overwritecontents overwriteContents� 0 _openedfile _openedFile ����
�	�������
� .rdwrclosnull���     ****�  �  
�
 
perm
�	 .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� 
wrat
� rdwreof � 
� .rdwrwritnull���     ****� > 
�j  W X  hO��el E�O�e  ��jl Y hO����� O�j  � ��� ����� 0 
writevhost 
writeVHost�  ����   ������ 0 
domainname 
domainName
�� 
asdr��   ������ 0 
domainname 
domainName
�� 
asdr ������������������ $0 vhostsconfigpath vHostsConfigPath
�� .sysoexecTEXT���     TEXT�� 6��%�%�%�%�%�%�%�%�%�%b   %�%�%�%�%�%�%�%�%�%�%�%j � �������	
���� 0 restartapache restartApache��  ��  	  
 �����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el � ����������� 0 replacetext replaceText�� ����   �������� 0 sometext someText�� 0 find  �� 0 replace  ��   ���������� 0 sometext someText�� 0 find  �� 0 replace  �� 0 prevtids prevTIDs ������
�� 
ascr
�� 
txdl
�� 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO�� ���������� 0 getfoldername getFolderName�� ����   ��
�� 
ppth��   ������
�� 
ppth�� 0 	olddelims 	oldDelims�� 
0 output   ��6������
�� 
txdl
�� 
citm
�� 
cobj������ %)�,E�O�)�,FO��-[�\[Z�\Z�2E�O�)�,FO�� ��_�������� 0 settodev setToDev�� ����   ��
�� 
pnam��   ������
�� 
pnam�� 0 
namelength 
nameLength�� 0 newname newName ��q~�������������������
�� 
leng
�� 
bool
�� 
ctxt�� �� �� ���,E�O�� ���
 ���&
 ���&
 ���& �[�\[Zk\Z��2E�O��%Y S��
 ���& �[�\[Zk\Z�m2E�O��%Y .�� �[�\[Zk\Z��2E�O��%Y �a  �EY hY hO�a %� ��������
�� .aevtoappnull  �   � **** k     �    !  0  >  N  c  s  }  �����  ��  ��      �������� 5�� E������ U���� h�������� � ��� ����� ���
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� $0 vhostsconfigpath vHostsConfigPath�� 0 readfile readFile�� 0 	hostsfile 	hostsFile
�� 
prmp
�� .sysostflalis    ��� null�� 0 projectfolder projectFolder
�� 
ctxt�� 0 getfoldername getFolderName�� 0 settodev setToDev�� 0 	txtdomain 	txtDomain
�� 
psxp�� 0 dlgcontinue dlgContinue
�� 
bhit�� 0 	runscript 	runScript�� ���b   l O��,Ec   O�E�O*�k+ E�O*��l E�O��**��&k+ �&k+ l O��,E` Oa _ %a %�a ,%a %b   %j E` O_ a ,a   
*j+ Y hascr  ��ޭ