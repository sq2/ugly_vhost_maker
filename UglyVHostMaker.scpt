FasdUAS 1.101.10   ��   ��    k             l     ��  ��    4 .Ugly V-Host Maker - Version 1.1.0 - 2012-02-06     � 	 	 \ U g l y   V - H o s t   M a k e r   -   V e r s i o n   1 . 1 . 0   -   2 0 1 2 - 0 2 - 0 6   
  
 l     ��  ��    ( "Developed by Matthew Hamel @codepl     �   D D e v e l o p e d   b y   M a t t h e w   H a m e l   @ c o d e p l      l     ��  ��    9 3http://codepl.us (Probably no website up right now)     �   f h t t p : / / c o d e p l . u s   ( P r o b a b l y   n o   w e b s i t e   u p   r i g h t   n o w )      l     ��  ��    ( "NO WARRANTY - Use at your own risk     �   D N O   W A R R A N T Y   -   U s e   a t   y o u r   o w n   r i s k      l     ��������  ��  ��        l     ��  ��    / )Allow the admin email address to persist.     �   R A l l o w   t h e   a d m i n   e m a i l   a d d r e s s   t o   p e r s i s t .     !   j     �� "�� $0 serveradminemail serverAdminEmail " m      # # � $ $   !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) < 6Allow the virtual host configurations path to persist.    * � + + l A l l o w   t h e   v i r t u a l   h o s t   c o n f i g u r a t i o n s   p a t h   t o   p e r s i s t . (  , - , j    �� .�� $0 vhostsconfigpath vHostsConfigPath . m     / / � 0 0 6 / p r i v a t e / e t c / a p a c h e 2 / e x t r a / -  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5 ; 5Globalize some vars so they can be used in functions.    6 � 7 7 j G l o b a l i z e   s o m e   v a r s   s o   t h e y   c a n   b e   u s e d   i n   f u n c t i o n s . 4  8 9 8 p     : : �� ;�� 0 hostsfilepath hostsFilePath ; �� <�� 0 projectfolder projectFolder < ������ 0 	txtdomain 	txtDomain��   9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A  Set hosts file path    B � C C & S e t   h o s t s   f i l e   p a t h @  D E D l     F���� F r      G H G m      I I � J J $ / p r i v a t e / e t c / h o s t s H o      ���� 0 hostsfilepath hostsFilePath��  ��   E  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O ` ZAsk for server admin email address. If previously entered, that address will be displayed.    P � Q Q � A s k   f o r   s e r v e r   a d m i n   e m a i l   a d d r e s s .   I f   p r e v i o u s l y   e n t e r e d ,   t h a t   a d d r e s s   w i l l   b e   d i s p l a y e d . N  R S R l    T���� T I   �� U V
�� .sysodlogaskr        TEXT U m     W W � X X t E n t e r   t h e   s e r v e r   a d m i n ' s   e m a i l   a d d r e s s : 
 ( n a m e @ e x a m p l e . c o m ) V �� Y��
�� 
dtxt Y o    ���� $0 serveradminemail serverAdminEmail��  ��  ��   S  Z [ Z l    \���� \ r     ] ^ ] l    _���� _ n     ` a ` 1    ��
�� 
ttxt a 1    ��
�� 
rslt��  ��   ^ o      ���� $0 serveradminemail serverAdminEmail��  ��   [  b c b l     ��������  ��  ��   c  d e d l     �� f g��   f ` ZAsk for virtual host config directory. If previously entered, that path will be displayed.    g � h h � A s k   f o r   v i r t u a l   h o s t   c o n f i g   d i r e c t o r y .   I f   p r e v i o u s l y   e n t e r e d ,   t h a t   p a t h   w i l l   b e   d i s p l a y e d . e  i j i l   % k���� k I   %�� l m
�� .sysodlogaskr        TEXT l m     n n � o o � E n t e r   t h e   v i r t u a l   h o s t   c o n f i g u r a t i o n   d i r e c t o r y   p a t h : 
 ( / p r i v a t e / e t c / a p a c h e 2 / e x t r a / ) m �� p��
�� 
dtxt p o    !���� $0 vhostsconfigpath vHostsConfigPath��  ��  ��   j  q r q l  & / s���� s r   & / t u t l  & ) v���� v n   & ) w x w 1   ' )��
�� 
ttxt x 1   & '��
�� 
rslt��  ��   u o      ���� $0 vhostsconfigpath vHostsConfigPath��  ��   r  y z y l     ��������  ��  ��   z  { | { l     �� } ~��   }  Get project folder    ~ �   $ G e t   p r o j e c t   f o l d e r |  � � � l  0 9 ����� � r   0 9 � � � I  0 7���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   2 3 � � � � � t C h o o s e   p r o j e c t   f o l d e r   c o n t a i n i n g   t h e   w e b s i t e ' s   i n d e x   f i l e :��   � o      ���� 0 projectfolder projectFolder��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Get domain name    � � � �  G e t   d o m a i n   n a m e �  � � � l  : O ����� � I  : O�� � �
�� .sysodlogaskr        TEXT � m   : ; � � � � � T E n t e r   n e w   l o c a l   d o m a i n   n a m e : 
 ( e x a m p l e . d e v ) � �� ���
�� 
dtxt � I   < K�� ����� 0 settodev setToDev �  ��� � c   = G � � � I   = E�� ����� 0 getfoldername getFolderName �  ��� � c   > A � � � o   > ?���� 0 projectfolder projectFolder � m   ? @��
�� 
ctxt��  ��   � m   E F��
�� 
ctxt��  ��  ��  ��  ��   �  � � � l  P W ����� � r   P W � � � l  P S ����� � n   P S � � � 1   Q S��
�� 
ttxt � 1   P Q��
�� 
rslt��  ��   � o      ���� 0 	txtdomain 	txtDomain��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Verify configuration    � � � � ( V e r i f y   c o n f i g u r a t i o n �  � � � l  X � ����� � r   X � � � � I  X ��� ���
�� .sysodlogaskr        TEXT � b   X } � � � b   X w � � � b   X s � � � b   X m � � � b   X i � � � b   X c � � � b   X _ � � � m   X [ � � � � � l C r e a t e   a   n e w   v i r t u a l   h o s t   w i t h   t h e s e   v a l u e s ? 
 
 D o m a i n :   � o   [ ^���� 0 	txtdomain 	txtDomain � m   _ b � � � � �  
 P r o j e c t :   � n   c h � � � 1   d h��
�� 
psxp � l  c d ����� � o   c d���� 0 projectfolder projectFolder��  ��   � m   i l � � � � �  
 S e r v e r   A d m i n :   � o   m r���� $0 serveradminemail serverAdminEmail � m   s v � � � � � ( 
 V i r t u a l   H o s t   P a t h :   � o   w |���� $0 vhostsconfigpath vHostsConfigPath��   � o      ���� 0 dlgcontinue dlgContinue��  ��   �  � � � l  � � ����� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
bhit � o   � ����� 0 dlgcontinue dlgContinue � m   � � � � � � �  O K � I   � ��������� 0 	runscript 	runScript��  ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     � � ��   �  Run this script    � � � �  R u n   t h i s   s c r i p t �  � � � i    	 � � � I      �~�}�|�~ 0 	runscript 	runScript�}  �|   � k      � �  � � � I     �{�z�y�{  0 writehostsfile writeHostsFile�z  �y   �  � � � I    �x ��w�x 0 
writevhost 
writeVHost �  � � � o    �v�v 0 	txtdomain 	txtDomain �  ��u � n     � � � 1   	 �t
�t 
psxp � l   	 ��s�r � o    	�q�q 0 projectfolder projectFolder�s  �r  �u  �w   �  � � � I    �p�o�n�p 0 restartapache restartApache�o  �n   �  ��m � I   �l ��k
�l .sysodlogaskr        TEXT � b     � � � b     � � � m     � � � � �  V i r t u a l   h o s t   � o    �j�j 0 	txtdomain 	txtDomain � m     � � � � �    r e a d y .�k  �m   �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f �f    7 1Write to hosts file if line doesn't exit already.    � b W r i t e   t o   h o s t s   f i l e   i f   l i n e   d o e s n ' t   e x i t   a l r e a d y . �  i   
  I      �e�d�c�e  0 writehostsfile writeHostsFile�d  �c   k     w 	 r     

 m     �b�b  o      �a�a 0 _result  	  r    	 b     m     �  1 2 7 . 0 . 0 . 1   o    �`�` 0 	txtdomain 	txtDomain o      �_�_ 0 domline domLine  Q   
 #�^ r     I   �]�\
�] .sysoexecTEXT���     TEXT b     b     b      m    !! �""  g r e p   - q   "  o    �[�[ 0 domline domLine m    ## �$$  "   o    �Z�Z 0 hostsfilepath hostsFilePath�\   o      �Y�Y 0 _result   R      �X�W�V
�X .ascrerr ****      � ****�W  �V  �^   %&% Z   $ ;'(�U�T' =  $ ')*) o   $ %�S�S 0 _result  * m   % &�R�R ( I  * 7�Q+,
�Q .sysoexecTEXT���     TEXT+ b   * 1-.- b   * //0/ b   * -121 m   * +33 �44 
 e c h o  2 o   + ,�P�P 0 domline domLine0 m   - .55 �66    > >  . o   / 0�O�O 0 hostsfilepath hostsFilePath, �N7�M
�N 
badm7 m   2 3�L
�L boovtrue�M  �U  �T  & 898 l  < <�K�J�I�K  �J  �I  9 :;: r   < ?<=< m   < =�H�H = o      �G�G 0 _result  ; >?> r   @ E@A@ b   @ CBCB m   @ ADD �EE  1 2 7 . 0 . 0 . 1   w w w .C o   A B�F�F 0 	txtdomain 	txtDomainA o      �E�E 0 
wwwdomline 
wwwDomLine? FGF Q   F _HI�DH r   I VJKJ I  I T�CL�B
�C .sysoexecTEXT���     TEXTL b   I PMNM b   I NOPO b   I LQRQ m   I JSS �TT  g r e p   - q   "R o   J K�A�A 0 
wwwdomline 
wwwDomLineP m   L MUU �VV  "  N o   N O�@�@ 0 hostsfilepath hostsFilePath�B  K o      �?�? 0 _result  I R      �>�=�<
�> .ascrerr ****      � ****�=  �<  �D  G W�;W Z   ` wXY�:�9X =  ` cZ[Z o   ` a�8�8 0 _result  [ m   a b�7�7 Y I  f s�6\]
�6 .sysoexecTEXT���     TEXT\ b   f m^_^ b   f k`a` b   f ibcb m   f gdd �ee  e c h o   'c o   g h�5�5 0 
wwwdomline 
wwwDomLinea m   i jff �gg 
 '   > >  _ o   k l�4�4 0 hostsfilepath hostsFilePath] �3h�2
�3 
badmh m   n o�1
�1 boovtrue�2  �:  �9  �;   iji l     �0�/�.�0  �/  �.  j klk l     �-mn�-  m  Write virtual host file   n �oo . W r i t e   v i r t u a l   h o s t   f i l el pqp i    rsr I      �,t�+�, 0 
writevhost 
writeVHostt uvu o      �*�* 0 
domainname 
domainNamev w�)w 1      �(
�( 
asdr�)  �+  s k     Vxx yzy Z     {|�'�&{ H     }} D     ~~ o     �%�% $0 vhostsconfigpath vHostsConfigPath m    �� ���  /| r    ��� b    ��� o    �$�$ $0 vhostsconfigpath vHostsConfigPath� m    �� ���  /� o      �#�# $0 vhostsconfigpath vHostsConfigPath�'  �&  z ��"� I   V�!��
�! .sysoexecTEXT���     TEXT� b    P��� b    N��� b    L��� b    J��� b    H��� b    F��� b    D��� b    B��� b    @��� b    >��� b    <��� b    :��� b    4��� b    2��� b    0��� b    .��� b    ,��� b    *��� b    (��� b    &��� b    $��� m    �� ���  c a t   >  � o    #� �  $0 vhostsconfigpath vHostsConfigPath� o   $ %�� 0 
domainname 
domainName� m   & '�� ��� . . c o n f   < <   E O F 
 #   D o m a i n :  � o   ( )�� 0 
domainname 
domainName� m   * +�� ���  
 #   P a t h :  � 1   , -�
� 
asdr� m   . /�� ��� N 
 < V i r t u a l H o s t   * : 8 0 >   
         D o c u m e n t R o o t   "� 1   0 1�
� 
asdr� m   2 3�� ��� $ " 
         S e r v e r A d m i n  � o   4 9�� $0 serveradminemail serverAdminEmail� m   : ;�� ��� " 
         S e r v e r N a m e    � o   < =�� 0 
domainname 
domainName� m   > ?�� ��� * 
         S e r v e r A l i a s   w w w .� o   @ A�� 0 
domainname 
domainName� m   B C�� ���  
         E r r o r L o g   "� 1   D E�
� 
asdr� m   F G�� ��� H l o c a l h o s t _ e r r o r . l o g " 
         C u s t o m L o g   "� 1   H I�
� 
asdr� m   J K�� ��� Z l o c a l h o s t _ a c c e s s . l o g "   c o m m o n 
         < d i r e c t o r y   "� 1   L M�
� 
asdr� m   N O�� ���Z " > 
                 O p t i o n s   I n d e x e s   F o l l o w S y m L i n k s   M u l t i V i e w s 
                 A l l o w O v e r r i d e   A l l 
                 a l l o w   f r o m   a l l 
         < / d i r e c t o r y > 
         D i r e c t o r y I n d e x   i n d e x . h t m l   i n d e x . p h p 
 < / V i r t u a l H o s t >� ���
� 
badm� m   Q R�
� boovtrue�  �"  q ��� l     ����  �  �  � ��� l     ����  �  Read a file   � ���  R e a d   a   f i l e� ��� i    ��� I      ���� 0 readfile readFile� ��� o      �� 0 unixpath unixPath�  �  � k     #�� ��� r     
��� l    ��
�	� I    ���
� .rdwropenshor       file� l    ���� 4     ��
� 
psxf� o    �� 0 unixpath unixPath�  �  �  �
  �	  � o      �� 0 thefile theFile� ��� r    ��� l   ��� � I   ����
�� .rdwrread****        ****� o    ���� 0 thefile theFile� ����
�� 
rdfr� l   ������ I   �����
�� .rdwrgeofcomp       ****� o    ���� 0 thefile theFile��  ��  ��  � �����
�� 
as  � m    ��
�� 
utf8��  �  �   � o      ���� 0 txt  � ��� I    �����
�� .rdwrclosnull���     ****� o    ���� 0 thefile theFile��  � ���� L   ! #�� o   ! "���� 0 txt  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  Write to file   � ���  W r i t e   t o   f i l e� ��� i    ��� I      ������� 0 	writefile 	writeFile� � � o      ���� 0 thefile theFile   o      ���� 0 thedata theData �� o      ���� &0 overwritecontents overwriteContents��  ��  � k     =  Q     �� I   ��	��
�� .rdwrclosnull���     ****	 o    ���� 0 thefile theFile��   R      ������
�� .ascrerr ****      � ****��  ��  ��   

 r     I   ��
�� .rdwropenshor       file o    ���� 0 thefile theFile ����
�� 
perm m    ��
�� boovtrue��   o      ���� 0 _openedfile _openedFile  Z   -���� =    o    ���� &0 overwritecontents overwriteContents m    ��
�� boovtrue I  " )��
�� .rdwrseofnull���     **** o   " #���� 0 _openedfile _openedFile ����
�� 
set2 m   $ %����  ��  ��  ��    I  . 7��
�� .rdwrwritnull���     **** o   . /���� 0 thedata theData ��
�� 
refn o   0 1���� 0 thefile theFile �� ��
�� 
wrat  m   2 3��
�� rdwreof ��   !��! I  8 =��"��
�� .rdwrclosnull���     ****" o   8 9���� 0 thefile theFile��  ��  � #$# l     ��������  ��  ��  $ %&% l     ��'(��  '  Restart Apache   ( �))  R e s t a r t   A p a c h e& *+* i    ,-, I      �������� 0 restartapache restartApache��  ��  - I    ��./
�� .sysoexecTEXT���     TEXT. m     00 �11 " a p a c h e c t l   r e s t a r t/ ��2��
�� 
badm2 m    ��
�� boovtrue��  + 343 l     ��������  ��  ��  4 565 l     ��78��  7 ' !Find and replace text in a string   8 �99 B F i n d   a n d   r e p l a c e   t e x t   i n   a   s t r i n g6 :;: i    !<=< I      ��>���� 0 replacetext replaceText> ?@? o      ���� 0 sometext someText@ ABA o      ���� 0 find  B C��C o      ���� 0 replace  ��  ��  = k     &DD EFE r     GHG n     IJI 1    ��
�� 
txdlJ 1     ��
�� 
ascrH o      ���� 0 prevtids prevTIDsF KLK r    MNM o    ���� 0 find  N n      OPO 1    
��
�� 
txdlP 1    ��
�� 
ascrL QRQ r    STS n    UVU 2   ��
�� 
citmV o    ���� 0 sometext someTextT o      ���� 0 sometext someTextR WXW r    YZY o    ���� 0 replace  Z n      [\[ 1    ��
�� 
txdl\ 1    ��
�� 
ascrX ]^] r    _`_ b    aba m    cc �dd  b o    ���� 0 sometext someText` o      ���� 0 sometext someText^ efe r    #ghg o    ���� 0 prevtids prevTIDsh n      iji 1     "��
�� 
txdlj 1     ��
�� 
ascrf k��k L   $ &ll o   $ %���� 0 sometext someText��  ; mnm l     ��������  ��  ��  n opo l     ��qr��  q  Get folder name   r �ss  G e t   f o l d e r   n a m ep tut i   " %vwv I      ��x���� 0 getfoldername getFolderNamex y��y 1      ��
�� 
ppth��  ��  w k     $zz {|{ l    }~} r     ��� n    ��� 1    ��
�� 
txdl�  f     � o      ���� 0 	olddelims 	oldDelims~ "  save the current delimiters    ��� 8   s a v e   t h e   c u r r e n t   d e l i m i t e r s| ��� l   ��������  ��  ��  � ��� l   ���� r    ��� m    �� ���  :� n     ��� 1    
��
�� 
txdl�  f    �    the character to split on   � ��� 4   t h e   c h a r a c t e r   t o   s p l i t   o n� ��� r    ��� l   ������ n    ��� 7   ����
�� 
cobj� m    ������� m    ������� n    ��� 2   ��
�� 
citm� 1    ��
�� 
ppth��  ��  � o      ���� 
0 output  � ��� l   ��������  ��  ��  � ��� l   !���� r    !��� o    ���� 0 	olddelims 	oldDelims� n     ��� 1     ��
�� 
txdl�  f    � 2 , just to be safe, restore the old delimiters   � ��� X   j u s t   t o   b e   s a f e ,   r e s t o r e   t h e   o l d   d e l i m i t e r s� ��� l  " "����~��  �  �~  � ��}� L   " $�� o   " #�|�| 
0 output  �}  u ��� l     �{�z�y�{  �z  �y  � ��� l     �x���x  � � �Suggest a .dev address based on project folder name. If the folder name is a domain name, the extention will be dropped and appended. (This could probably be done better if I knew what I was doing.)   � ���� S u g g e s t   a   . d e v   a d d r e s s   b a s e d   o n   p r o j e c t   f o l d e r   n a m e .   I f   t h e   f o l d e r   n a m e   i s   a   d o m a i n   n a m e ,   t h e   e x t e n t i o n   w i l l   b e   d r o p p e d   a n d   a p p e n d e d .   ( T h i s   c o u l d   p r o b a b l y   b e   d o n e   b e t t e r   i f   I   k n e w   w h a t   I   w a s   d o i n g . )� ��� i   & )��� I      �w��v�w 0 settodev setToDev� ��u� 1      �t
�t 
pnam�u  �v  � k    ��� ��� r     ��� n     ��� 1    �s
�s 
leng� 1     �r
�r 
pnam� o      �q�q 0 
namelength 
nameLength� ��� l   �p�o�n�p  �o  �n  � ��� Z   ����m�l� E    	��� 1    �k
�k 
pnam� m    �� ���  .� Z   �����j� G    /��� G    '��� G    ��� G    ��� D    ��� 1    �i
�i 
pnam� m    �� ���  . c o m . c o� D    ��� 1    �h
�h 
pnam� m    �� ���  . n e t . c o� D    ��� 1    �g
�g 
pnam� m    �� ���  . n o m . c o� D   " %��� 1   " #�f
�f 
pnam� m   # $�� ���  . o r g . u k� D   * -��� 1   * +�e
�e 
pnam� m   + ,�� ���  . l t d . u k� k   2 F�� ��� r   2 A��� l  2 ?��d�c� n   2 ?��� 7 3 ?�b��
�b 
ctxt� m   7 9�a�a � l  : >��`�_� \   : >��� o   ; <�^�^ 0 
namelength 
nameLength� m   < =�]�] �`  �_  � 1   2 3�\
�\ 
pnam�d  �c  � o      �[�[ 0 newname newName� ��� l  B B�Z�Y�X�Z  �Y  �X  � ��W� L   B F�� b   B E��� o   B C�V�V 0 newname newName� m   C D�� ���  . d e v�W  �    G   I T D   I L 1   I J�U
�U 
pnam m   J K �  . c o . u k D   O R	 1   O P�T
�T 
pnam	 m   P Q

 �  . m e . u k  k   W k  r   W f l  W d�S�R n   W d 7 X d�Q
�Q 
ctxt m   \ ^�P�P  l  _ c�O�N \   _ c o   ` a�M�M 0 
namelength 
nameLength m   a b�L�L �O  �N   1   W X�K
�K 
pnam�S  �R   o      �J�J 0 newname newName  l  g g�I�H�G�I  �H  �G   �F L   g k b   g j  o   g h�E�E 0 newname newName  m   h i!! �""  . d e v�F   #$# G   n �%&% G   n �'(' G   n {)*) D   n q+,+ 1   n o�D
�D 
pnam, m   o p-- �.. 
 . i n f o* D   t y/0/ 1   t u�C
�C 
pnam0 m   u x11 �22 
 . m o b i( D   ~ �343 1   ~ �B
�B 
pnam4 m    �55 �66 
 . n a m e& D   � �787 1   � ��A
�A 
pnam8 m   � �99 �:: 
 . a s i a$ ;<; k   � �== >?> r   � �@A@ l  � �B�@�?B n   � �CDC 7 � ��>EF
�> 
ctxtE m   � ��=�= F l  � �G�<�;G \   � �HIH o   � ��:�: 0 
namelength 
nameLengthI m   � ��9�9 �<  �;  D 1   � ��8
�8 
pnam�@  �?  A o      �7�7 0 newname newName? JKJ l  � ��6�5�4�6  �5  �4  K L�3L L   � �MM b   � �NON o   � ��2�2 0 newname newNameO m   � �PP �QQ  . d e v�3  < RSR G   � �TUT G   � �VWV G   � �XYX G   � �Z[Z G   � �\]\ D   � �^_^ 1   � ��1
�1 
pnam_ m   � �`` �aa  . c o m] D   � �bcb 1   � ��0
�0 
pnamc m   � �dd �ee  . n e t[ D   � �fgf 1   � ��/
�/ 
pnamg m   � �hh �ii  . o r gY D   � �jkj 1   � ��.
�. 
pnamk m   � �ll �mm  . b i zW D   � �non 1   � ��-
�- 
pnamo m   � �pp �qq  . t e lU D   � �rsr 1   � ��,
�, 
pnams m   � �tt �uu  . x x xS vwv k   � �xx yzy r   � �{|{ l  � �}�+�*} n   � �~~ 7 � ��)��
�) 
ctxt� m   � ��(�( � l  � ���'�&� \   � ���� o   � ��%�% 0 
namelength 
nameLength� m   � ��$�$ �'  �&   1   � ��#
�# 
pnam�+  �*  | o      �"�" 0 newname newNamez ��� l  � ��!� ��!  �   �  � ��� L   � ��� b   � ���� o   � ��� 0 newname newName� m   � ��� ���  . d e v�  w ��� G  a��� G  W��� G  M��� G  C��� G  9��� G  /��� G  %��� G  ��� G  ��� D  ��� 1  �
� 
pnam� m  �� ���  . u s� D  
��� 1  
�
� 
pnam� m  �� ���  . c c� D  ��� 1  �
� 
pnam� m  �� ���  . c o� D  #��� 1  �
� 
pnam� m  "�� ���  . m e� D  (-��� 1  ()�
� 
pnam� m  ),�� ���  . i n� D  27��� 1  23�
� 
pnam� m  36�� ���  . e u� D  <A��� 1  <=�
� 
pnam� m  =@�� ���  . t v� D  FK��� 1  FG�
� 
pnam� m  GJ�� ���  . v n� D  PU��� 1  PQ�
� 
pnam� m  QT�� ���  . t w� D  Z_��� 1  Z[�
� 
pnam� m  [^�� ���  . w s� ��� k  dz�� ��� r  ds��� l dq���� n  dq��� 7eq���
� 
ctxt� m  ik�� � l lp���� \  lp��� o  mn�� 0 
namelength 
nameLength� m  no�� �  �  � 1  de�

�
 
pnam�  �  � o      �	�	 0 newname newName� ��� l tt����  �  �  � ��� L  tz�� b  ty��� o  tu�� 0 newname newName� m  ux�� ���  . d e v�  � ��� D  }���� 1  }~�
� 
pnam� m  ~��� ���  . d e v� ��� L  ���� 1  ���
� 
pnam�  �j  �m  �l  � ��� l ��� �����   ��  ��  � ���� L  ���� b  ����� 1  ����
�� 
pnam� m  ���� ���  . d e v��  � ��� l     ��������  ��  ��  � ��� l     ������  �  Show debug message   � ��� $ S h o w   d e b u g   m e s s a g e� ���� i   * -��� I      ������� 	0 debug  � ���� o      ���� 0 str  ��  ��  � I    �����
�� .sysodlogaskr        TEXT� o     ���� 0 str  ��  ��       ��� # /�� ��  � ���������������������������� $0 serveradminemail serverAdminEmail�� $0 vhostsconfigpath vHostsConfigPath�� 0 	runscript 	runScript��  0 writehostsfile writeHostsFile�� 0 
writevhost 
writeVHost�� 0 readfile readFile�� 0 	writefile 	writeFile�� 0 restartapache restartApache�� 0 replacetext replaceText�� 0 getfoldername getFolderName�� 0 settodev setToDev�� 	0 debug  
�� .aevtoappnull  �   � ****� �� �����	
���� 0 	runscript 	runScript��  ��  	  
 	������������ � �����  0 writehostsfile writeHostsFile�� 0 	txtdomain 	txtDomain�� 0 projectfolder projectFolder
�� 
psxp�� 0 
writevhost 
writeVHost�� 0 restartapache restartApache
�� .sysodlogaskr        TEXT��  *j+  O*���,l+ O*j+ O��%�%j � ����������  0 writehostsfile writeHostsFile��  ��   �������� 0 _result  �� 0 domline domLine�� 0 
wwwdomline 
wwwDomLine ��!#��������35��DSUdf�� 0 	txtdomain 	txtDomain�� 0 hostsfilepath hostsFilePath
�� .sysoexecTEXT���     TEXT��  ��  
�� 
badm�� xkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y hOkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y h  ��s�������� 0 
writevhost 
writeVHost�� ����   ������ 0 
domainname 
domainName
�� 
asdr��   ������ 0 
domainname 
domainName
�� 
asdr �����������������
�� 
badm
�� .sysoexecTEXT���     TEXT�� Wb  � b  �%Ec  Y hO�b  %�%�%�%�%�%�%�%�%b   %�%�%�%�%�%�%�%�%�%�%�%�el  ����������� 0 readfile readFile�� ����   ���� 0 unixpath unixPath��   �������� 0 unixpath unixPath�� 0 thefile theFile�� 0 txt   	������������������
�� 
psxf
�� .rdwropenshor       file
�� 
rdfr
�� .rdwrgeofcomp       ****
�� 
as  
�� 
utf8�� 
�� .rdwrread****        ****
�� .rdwrclosnull���     ****�� $*�/j E�O��j ��� E�O�j O� ����������� 0 	writefile 	writeFile�� ����   �������� 0 thefile theFile�� 0 thedata theData�� &0 overwritecontents overwriteContents��   ���������� 0 thefile theFile�� 0 thedata theData�� &0 overwritecontents overwriteContents�� 0 _openedfile _openedFile ������������������������
�� .rdwrclosnull���     ****��  ��  
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****�� > 
�j  W X  hO��el E�O�e  ��jl Y hO����� O�j   ��-�������� 0 restartapache restartApache��  ��     0����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el  ��=�������� 0 replacetext replaceText�� ����   �������� 0 sometext someText�� 0 find  �� 0 replace  ��   ���������� 0 sometext someText�� 0 find  �� 0 replace  �� 0 prevtids prevTIDs ������c
�� 
ascr
�� 
txdl
�� 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO� �w�~�}�|� 0 getfoldername getFolderName�~ �{�{   �z
�z 
ppth�}   �y�x�w
�y 
ppth�x 0 	olddelims 	oldDelims�w 
0 output   �v��u�t�s
�v 
txdl
�u 
citm
�t 
cobj�s���| %)�,E�O�)�,FO��-[�\[Z�\Z�2E�O�)�,FO� �r��q�p�o�r 0 settodev setToDev�q �n �n    �m
�m 
pnam�p   �l�k�j
�l 
pnam�k 0 
namelength 
nameLength�j 0 newname newName *�i����h����g�f�
�e!-159�dP`dhlpt�c��������������
�i 
leng
�h 
bool
�g 
ctxt�f �e �d �c �o���,E�O�����
 ���&
 ���&
 ���&
 ���& �[�\[Zk\Z��2E�O��%YE��
 ���& �[�\[Zk\Z��2E�O��%Y ��
 	�a �&
 	�a �&
 	�a �& �[�\[Zk\Z�a 2E�O�a %Y �a 
 	�a �&
 	�a �&
 	�a �&
 	�a �&
 	�a �& �[�\[Zk\Z�a 2E�O�a %Y ��a 
 	�a �&
 	�a �&
 	�a  �&
 	�a !�&
 	�a "�&
 	�a #�&
 	�a $�&
 	�a %�&
 	�a &�& �[�\[Zk\Z�m2E�O�a '%Y �a ( �EY hY hO�a )% �b��a�`!"�_�b 	0 debug  �a �^#�^ #  �]�] 0 str  �`  ! �\�\ 0 str  " �[
�[ .sysodlogaskr        TEXT�_ �j   �Z$�Y�X%&�W
�Z .aevtoappnull  �   � ****$ k     �''  D((  R))  Z**  i++  q,,  �--  �..  �//  �00  ��V�V  �Y  �X  %  &  I�U W�T�S�R�Q n�P ��O�N ��M�L�K�J � ��I � ��H�G ��F�U 0 hostsfilepath hostsFilePath
�T 
dtxt
�S .sysodlogaskr        TEXT
�R 
rslt
�Q 
ttxt
�P 
prmp
�O .sysostflalis    ��� null�N 0 projectfolder projectFolder
�M 
ctxt�L 0 getfoldername getFolderName�K 0 settodev setToDev�J 0 	txtdomain 	txtDomain
�I 
psxp�H 0 dlgcontinue dlgContinue
�G 
bhit�F 0 	runscript 	runScript�W ��E�O��b   l O��,Ec   O��b  l O��,Ec  O*��l 
E�O��**��&k+ �&k+ l O��,E` Oa _ %a %�a ,%a %b   %a %b  %j E` O_ a ,a   
*j+ Y hascr  ��ޭ