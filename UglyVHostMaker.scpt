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
�1 boovtrue�2  �:  �9  �;   iji l     �0�/�.�0  �/  �.  j klk l     �-�,�+�-  �,  �+  l mnm l     �*op�*  o  Write virtual host file   p �qq . W r i t e   v i r t u a l   h o s t   f i l en rsr i    tut I      �)v�(�) 0 
writevhost 
writeVHostv wxw o      �'�' 0 
domainname 
domainNamex y�&y 1      �%
�% 
asdr�&  �(  u k     Vzz {|{ Z     }~�$�#} H      D     ��� o     �"�" $0 vhostsconfigpath vHostsConfigPath� m    �� ���  /~ r    ��� b    ��� o    �!�! $0 vhostsconfigpath vHostsConfigPath� m    �� ���  /� o      � �  $0 vhostsconfigpath vHostsConfigPath�$  �#  | ��� I   V���
� .sysoexecTEXT���     TEXT� b    P��� b    N��� b    L��� b    J��� b    H��� b    F��� b    D��� b    B��� b    @��� b    >��� b    <��� b    :��� b    4��� b    2��� b    0��� b    .��� b    ,��� b    *��� b    (��� b    &��� b    $��� m    �� ���  c a t   >  � o    #�� $0 vhostsconfigpath vHostsConfigPath� o   $ %�� 0 
domainname 
domainName� m   & '�� ��� . . c o n f   < <   E O F 
 #   D o m a i n :  � o   ( )�� 0 
domainname 
domainName� m   * +�� ���  
 #   P a t h :  � 1   , -�
� 
asdr� m   . /�� ��� N 
 < V i r t u a l H o s t   * : 8 0 >   
         D o c u m e n t R o o t   "� 1   0 1�
� 
asdr� m   2 3�� ��� $ " 
         S e r v e r A d m i n  � o   4 9�� $0 serveradminemail serverAdminEmail� m   : ;�� ��� " 
         S e r v e r N a m e    � o   < =�� 0 
domainname 
domainName� m   > ?�� ��� * 
         S e r v e r A l i a s   w w w .� o   @ A�� 0 
domainname 
domainName� m   B C�� ���  
         E r r o r L o g   "� 1   D E�
� 
asdr� m   F G�� ��� H l o c a l h o s t _ e r r o r . l o g " 
         C u s t o m L o g   "� 1   H I�
� 
asdr� m   J K�� ��� Z l o c a l h o s t _ a c c e s s . l o g "   c o m m o n 
         < d i r e c t o r y   "� 1   L M�
� 
asdr� m   N O�� ���Z " > 
                 O p t i o n s   I n d e x e s   F o l l o w S y m L i n k s   M u l t i V i e w s 
                 A l l o w O v e r r i d e   A l l 
                 a l l o w   f r o m   a l l 
         < / d i r e c t o r y > 
         D i r e c t o r y I n d e x   i n d e x . h t m l   i n d e x . p h p 
 < / V i r t u a l H o s t >� ���
� 
badm� m   Q R�
� boovtrue�  �  s ��� l     ����  �  �  � ��� l     ����  �  Read a file   � ���  R e a d   a   f i l e� ��� i    ��� I      ���
� 0 readfile readFile� ��	� o      �� 0 unixpath unixPath�	  �
  � k     #�� ��� r     
��� l    ���� I    ���
� .rdwropenshor       file� l    ���� 4     ��
� 
psxf� o    � �  0 unixpath unixPath�  �  �  �  �  � o      ���� 0 thefile theFile� ��� r    ��� l   ������ I   ����
�� .rdwrread****        ****� o    ���� 0 thefile theFile� ����
�� 
rdfr� l   ������ I   �����
�� .rdwrgeofcomp       ****� o    ���� 0 thefile theFile��  ��  ��  � �����
�� 
as  � m    ��
�� 
utf8��  ��  ��  � o      ���� 0 txt  � ��� I    �����
�� .rdwrclosnull���     ****� o    ���� 0 thefile theFile��  � ���� L   ! #�� o   ! "���� 0 txt  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  Write to file   � ���  W r i t e   t o   f i l e� ��� i    ��� I      �� ���� 0 	writefile 	writeFile   o      ���� 0 thefile theFile  o      ���� 0 thedata theData �� o      ���� &0 overwritecontents overwriteContents��  ��  � k     =  Q     	
��	 I   ����
�� .rdwrclosnull���     **** o    ���� 0 thefile theFile��  
 R      ������
�� .ascrerr ****      � ****��  ��  ��    r     I   ��
�� .rdwropenshor       file o    ���� 0 thefile theFile ����
�� 
perm m    ��
�� boovtrue��   o      ���� 0 _openedfile _openedFile  Z   -���� =    o    ���� &0 overwritecontents overwriteContents m    ��
�� boovtrue I  " )��
�� .rdwrseofnull���     **** o   " #���� 0 _openedfile _openedFile ����
�� 
set2 m   $ %����  ��  ��  ��    I  . 7��
�� .rdwrwritnull���     **** o   . /���� 0 thedata theData �� !
�� 
refn  o   0 1���� 0 thefile theFile! ��"��
�� 
wrat" m   2 3��
�� rdwreof ��   #��# I  8 =��$��
�� .rdwrclosnull���     ****$ o   8 9���� 0 thefile theFile��  ��  � %&% l     ��������  ��  ��  & '(' l     ��)*��  )  Restart Apache   * �++  R e s t a r t   A p a c h e( ,-, i    ./. I      �������� 0 restartapache restartApache��  ��  / I    ��01
�� .sysoexecTEXT���     TEXT0 m     22 �33 " a p a c h e c t l   r e s t a r t1 ��4��
�� 
badm4 m    ��
�� boovtrue��  - 565 l     ��������  ��  ��  6 787 l     ��9:��  9 ' !Find and replace text in a string   : �;; B F i n d   a n d   r e p l a c e   t e x t   i n   a   s t r i n g8 <=< i    !>?> I      ��@���� 0 replacetext replaceText@ ABA o      ���� 0 sometext someTextB CDC o      ���� 0 find  D E��E o      ���� 0 replace  ��  ��  ? k     &FF GHG r     IJI n     KLK 1    ��
�� 
txdlL 1     ��
�� 
ascrJ o      ���� 0 prevtids prevTIDsH MNM r    OPO o    ���� 0 find  P n      QRQ 1    
��
�� 
txdlR 1    ��
�� 
ascrN STS r    UVU n    WXW 2   ��
�� 
citmX o    ���� 0 sometext someTextV o      ���� 0 sometext someTextT YZY r    [\[ o    ���� 0 replace  \ n      ]^] 1    ��
�� 
txdl^ 1    ��
�� 
ascrZ _`_ r    aba b    cdc m    ee �ff  d o    ���� 0 sometext someTextb o      ���� 0 sometext someText` ghg r    #iji o    ���� 0 prevtids prevTIDsj n      klk 1     "��
�� 
txdll 1     ��
�� 
ascrh m��m L   $ &nn o   $ %���� 0 sometext someText��  = opo l     ��������  ��  ��  p qrq l     ��st��  s  Get folder name   t �uu  G e t   f o l d e r   n a m er vwv i   " %xyx I      ��z���� 0 getfoldername getFolderNamez {��{ 1      ��
�� 
ppth��  ��  y k     $|| }~} l    �� r     ��� n    ��� 1    ��
�� 
txdl�  f     � o      ���� 0 	olddelims 	oldDelims� "  save the current delimiters   � ��� 8   s a v e   t h e   c u r r e n t   d e l i m i t e r s~ ��� l   ��������  ��  ��  � ��� l   ���� r    ��� m    �� ���  :� n     ��� 1    
��
�� 
txdl�  f    �    the character to split on   � ��� 4   t h e   c h a r a c t e r   t o   s p l i t   o n� ��� r    ��� l   ������ n    ��� 7   ����
�� 
cobj� m    ������� m    ������� n    ��� 2   ��
�� 
citm� 1    ��
�� 
ppth��  ��  � o      ���� 
0 output  � ��� l   ��������  ��  ��  � ��� l   !���� r    !��� o    �� 0 	olddelims 	oldDelims� n     ��� 1     �~
�~ 
txdl�  f    � 2 , just to be safe, restore the old delimiters   � ��� X   j u s t   t o   b e   s a f e ,   r e s t o r e   t h e   o l d   d e l i m i t e r s� ��� l  " "�}�|�{�}  �|  �{  � ��z� L   " $�� o   " #�y�y 
0 output  �z  w ��� l     �x�w�v�x  �w  �v  � ��� l     �u���u  � � �Suggest a .dev address based on project folder name. If the folder name is a domain name, the extention will be dropped and appended. (This could probably be done better if I knew what I was doing.)   � ���� S u g g e s t   a   . d e v   a d d r e s s   b a s e d   o n   p r o j e c t   f o l d e r   n a m e .   I f   t h e   f o l d e r   n a m e   i s   a   d o m a i n   n a m e ,   t h e   e x t e n t i o n   w i l l   b e   d r o p p e d   a n d   a p p e n d e d .   ( T h i s   c o u l d   p r o b a b l y   b e   d o n e   b e t t e r   i f   I   k n e w   w h a t   I   w a s   d o i n g . )� ��� i   & )��� I      �t��s�t 0 settodev setToDev� ��r� 1      �q
�q 
pnam�r  �s  � k    ��� ��� r     ��� n     ��� 1    �p
�p 
leng� 1     �o
�o 
pnam� o      �n�n 0 
namelength 
nameLength� ��� l   �m�l�k�m  �l  �k  � ��� Z   ����j�i� E    	��� 1    �h
�h 
pnam� m    �� ���  .� Z   �����g� G    /��� G    '��� G    ��� G    ��� D    ��� 1    �f
�f 
pnam� m    �� ���  . c o m . c o� D    ��� 1    �e
�e 
pnam� m    �� ���  . n e t . c o� D    ��� 1    �d
�d 
pnam� m    �� ���  . n o m . c o� D   " %��� 1   " #�c
�c 
pnam� m   # $�� ���  . o r g . u k� D   * -��� 1   * +�b
�b 
pnam� m   + ,�� ���  . l t d . u k� k   2 F�� ��� r   2 A��� l  2 ?��a�`� n   2 ?��� 7 3 ?�_��
�_ 
ctxt� m   7 9�^�^ � l  : >��]�\� \   : >��� o   ; <�[�[ 0 
namelength 
nameLength� m   < =�Z�Z �]  �\  � 1   2 3�Y
�Y 
pnam�a  �`  � o      �X�X 0 newname newName� ��� l  B B�W�V�U�W  �V  �U  � ��T� L   B F�� b   B E��� o   B C�S�S 0 newname newName� m   C D   �  . d e v�T  �  G   I T D   I L 1   I J�R
�R 
pnam m   J K �		  . c o . u k D   O R

 1   O P�Q
�Q 
pnam m   P Q �  . m e . u k  k   W k  r   W f l  W d�P�O n   W d 7 X d�N
�N 
ctxt m   \ ^�M�M  l  _ c�L�K \   _ c o   ` a�J�J 0 
namelength 
nameLength m   a b�I�I �L  �K   1   W X�H
�H 
pnam�P  �O   o      �G�G 0 newname newName  l  g g�F�E�D�F  �E  �D   �C L   g k   b   g j!"! o   g h�B�B 0 newname newName" m   h i## �$$  . d e v�C   %&% G   n �'(' G   n �)*) G   n {+,+ D   n q-.- 1   n o�A
�A 
pnam. m   o p// �00 
 . i n f o, D   t y121 1   t u�@
�@ 
pnam2 m   u x33 �44 
 . m o b i* D   ~ �565 1   ~ �?
�? 
pnam6 m    �77 �88 
 . n a m e( D   � �9:9 1   � ��>
�> 
pnam: m   � �;; �<< 
 . a s i a& =>= k   � �?? @A@ r   � �BCB l  � �D�=�<D n   � �EFE 7 � ��;GH
�; 
ctxtG m   � ��:�: H l  � �I�9�8I \   � �JKJ o   � ��7�7 0 
namelength 
nameLengthK m   � ��6�6 �9  �8  F 1   � ��5
�5 
pnam�=  �<  C o      �4�4 0 newname newNameA LML l  � ��3�2�1�3  �2  �1  M N�0N L   � �OO b   � �PQP o   � ��/�/ 0 newname newNameQ m   � �RR �SS  . d e v�0  > TUT G   � �VWV G   � �XYX G   � �Z[Z G   � �\]\ G   � �^_^ D   � �`a` 1   � ��.
�. 
pnama m   � �bb �cc  . c o m_ D   � �ded 1   � ��-
�- 
pname m   � �ff �gg  . n e t] D   � �hih 1   � ��,
�, 
pnami m   � �jj �kk  . o r g[ D   � �lml 1   � ��+
�+ 
pnamm m   � �nn �oo  . b i zY D   � �pqp 1   � ��*
�* 
pnamq m   � �rr �ss  . t e lW D   � �tut 1   � ��)
�) 
pnamu m   � �vv �ww  . x x xU xyx k   � �zz {|{ r   � �}~} l  � ��(�' n   � ���� 7 � ��&��
�& 
ctxt� m   � ��%�% � l  � ���$�#� \   � ���� o   � ��"�" 0 
namelength 
nameLength� m   � ��!�! �$  �#  � 1   � �� 
�  
pnam�(  �'  ~ o      �� 0 newname newName| ��� l  � �����  �  �  � ��� L   � ��� b   � ���� o   � ��� 0 newname newName� m   � ��� ���  . d e v�  y ��� G  a��� G  W��� G  M��� G  C��� G  9��� G  /��� G  %��� G  ��� G  ��� D  ��� 1  �
� 
pnam� m  �� ���  . u s� D  
��� 1  
�
� 
pnam� m  �� ���  . c c� D  ��� 1  �
� 
pnam� m  �� ���  . c o� D  #��� 1  �
� 
pnam� m  "�� ���  . m e� D  (-��� 1  ()�
� 
pnam� m  ),�� ���  . i n� D  27��� 1  23�
� 
pnam� m  36�� ���  . e u� D  <A��� 1  <=�
� 
pnam� m  =@�� ���  . t v� D  FK��� 1  FG�
� 
pnam� m  GJ�� ���  . v n� D  PU��� 1  PQ�
� 
pnam� m  QT�� ���  . t w� D  Z_��� 1  Z[�
� 
pnam� m  [^�� ���  . w s� ��� k  dz�� ��� r  ds��� l dq���� n  dq��� 7eq���
� 
ctxt� m  ik�� � l lp���
� \  lp��� o  mn�	�	 0 
namelength 
nameLength� m  no�� �  �
  � 1  de�
� 
pnam�  �  � o      �� 0 newname newName� ��� l tt����  �  �  � ��� L  tz�� b  ty��� o  tu�� 0 newname newName� m  ux�� ���  . d e v�  � ��� D  }���� 1  }~� 
�  
pnam� m  ~��� ���  . d e v� ���� L  ���� 1  ����
�� 
pnam��  �g  �j  �i  � ��� l ����������  ��  ��  � ���� L  ���� b  ����� 1  ����
�� 
pnam� m  ���� ���  . d e v��  � ��� l     ��������  ��  ��  � ��� l     ������  �  Show debug message   � ��� $ S h o w   d e b u g   m e s s a g e� ���� i   * -��� I      ������� 	0 debug  � ���� o      ���� 0 str  ��  ��  � I    �����
�� .sysodlogaskr        TEXT� o     ���� 0 str  ��  ��       ��� # / 	
��  � ���������������������������� $0 serveradminemail serverAdminEmail�� $0 vhostsconfigpath vHostsConfigPath�� 0 	runscript 	runScript��  0 writehostsfile writeHostsFile�� 0 
writevhost 
writeVHost�� 0 readfile readFile�� 0 	writefile 	writeFile�� 0 restartapache restartApache�� 0 replacetext replaceText�� 0 getfoldername getFolderName�� 0 settodev setToDev�� 	0 debug  
�� .aevtoappnull  �   � ****  �� ��������� 0 	runscript 	runScript��  ��     	������������ � �����  0 writehostsfile writeHostsFile�� 0 	txtdomain 	txtDomain�� 0 projectfolder projectFolder
�� 
psxp�� 0 
writevhost 
writeVHost�� 0 restartapache restartApache
�� .sysodlogaskr        TEXT��  *j+  O*���,l+ O*j+ O��%�%j  ����������  0 writehostsfile writeHostsFile��  ��   �������� 0 _result  �� 0 domline domLine�� 0 
wwwdomline 
wwwDomLine ��!#��������35��DSUdf�� 0 	txtdomain 	txtDomain�� 0 hostsfilepath hostsFilePath
�� .sysoexecTEXT���     TEXT��  ��  
�� 
badm�� xkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y hOkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y h ��u�������� 0 
writevhost 
writeVHost�� ����   ������ 0 
domainname 
domainName
�� 
asdr��   ������ 0 
domainname 
domainName
�� 
asdr �����������������
�� 
badm
�� .sysoexecTEXT���     TEXT�� Wb  � b  �%Ec  Y hO�b  %�%�%�%�%�%�%�%�%b   %�%�%�%�%�%�%�%�%�%�%�%�el  ����������� 0 readfile readFile�� ����   ���� 0 unixpath unixPath��   �������� 0 unixpath unixPath�� 0 thefile theFile�� 0 txt   	������������������
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
�� .rdwrclosnull���     ****�� $*�/j E�O��j ��� E�O�j O� ����������� 0 	writefile 	writeFile�� ����   �������� 0 thefile theFile�� 0 thedata theData�� &0 overwritecontents overwriteContents��   ���������� 0 thefile theFile�� 0 thedata theData�� &0 overwritecontents overwriteContents�� 0 _openedfile _openedFile ������������������������
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
�j  W X  hO��el E�O�e  ��jl Y hO����� O�j   ��/�������� 0 restartapache restartApache��  ��     2����
�� 
badm
�� .sysoexecTEXT���     TEXT�� ��el  ��?�������� 0 replacetext replaceText�� ����   �������� 0 sometext someText�� 0 find  �� 0 replace  ��   ���������� 0 sometext someText�� 0 find  �� 0 replace  �� 0 prevtids prevTIDs ��~�}e
� 
ascr
�~ 
txdl
�} 
citm�� '��,E�O���,FO��-E�O���,FO�%E�O���,FO� �|y�{�z�y�| 0 getfoldername getFolderName�{ �x�x   �w
�w 
ppth�z   �v�u�t
�v 
ppth�u 0 	olddelims 	oldDelims�t 
0 output   �s��r�q�p
�s 
txdl
�r 
citm
�q 
cobj�p���y %)�,E�O�)�,FO��-[�\[Z�\Z�2E�O�)�,FO� �o��n�m !�l�o 0 settodev setToDev�n �k"�k "  �j
�j 
pnam�m    �i�h�g
�i 
pnam�h 0 
namelength 
nameLength�g 0 newname newName! *�f����e����d�c �b#/37;�aRbfjnrv�`��������������
�f 
leng
�e 
bool
�d 
ctxt�c �b �a �` �l���,E�O�����
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
 	�a &�& �[�\[Zk\Z�m2E�O�a '%Y �a ( �EY hY hO�a )%	 �_��^�]#$�\�_ 	0 debug  �^ �[%�[ %  �Z�Z 0 str  �]  # �Y�Y 0 str  $ �X
�X .sysodlogaskr        TEXT�\ �j  
 �W&�V�U'(�T
�W .aevtoappnull  �   � ****& k     �))  D**  R++  Z,,  i--  q..  �//  �00  �11  �22  ��S�S  �V  �U  '  (  I�R W�Q�P�O�N n�M ��L�K ��J�I�H�G � ��F � ��E�D ��C�R 0 hostsfilepath hostsFilePath
�Q 
dtxt
�P .sysodlogaskr        TEXT
�O 
rslt
�N 
ttxt
�M 
prmp
�L .sysostflalis    ��� null�K 0 projectfolder projectFolder
�J 
ctxt�I 0 getfoldername getFolderName�H 0 settodev setToDev�G 0 	txtdomain 	txtDomain
�F 
psxp�E 0 dlgcontinue dlgContinue
�D 
bhit�C 0 	runscript 	runScript�T ��E�O��b   l O��,Ec   O��b  l O��,Ec  O*��l 
E�O��**��&k+ �&k+ l O��,E` Oa _ %a %�a ,%a %b   %a %b  %j E` O_ a ,a   
*j+ Y hascr  ��ޭ