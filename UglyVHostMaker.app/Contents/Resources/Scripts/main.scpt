FasdUAS 1.101.10   ��   ��    k             l     ��  ��    4 .Ugly V-Host Maker - Version 1.1.0 - 2012-02-06     � 	 	 \ U g l y   V - H o s t   M a k e r   -   V e r s i o n   1 . 1 . 0   -   2 0 1 2 - 0 2 - 0 6   
  
 l     ��  ��    ( "Developed by Matthew Hamel @codepl     �   D D e v e l o p e d   b y   M a t t h e w   H a m e l   @ c o d e p l      l     ��  ��    9 3http://codepl.us (Probably no website up right now)     �   f h t t p : / / c o d e p l . u s   ( P r o b a b l y   n o   w e b s i t e   u p   r i g h t   n o w )      l     ��  ��    ( "NO WARRANTY - Use at your own risk     �   D N O   W A R R A N T Y   -   U s e   a t   y o u r   o w n   r i s k      l     ��������  ��  ��        l     ��  ��    / )Allow the admin email address to persist.     �   R A l l o w   t h e   a d m i n   e m a i l   a d d r e s s   t o   p e r s i s t .     !   j     �� "�� $0 serveradminemail serverAdminEmail " m      # # � $ $   !  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) < 6Allow the virtual host configurations path to persist.    * � + + l A l l o w   t h e   v i r t u a l   h o s t   c o n f i g u r a t i o n s   p a t h   t o   p e r s i s t . (  , - , j    �� .�� $0 vhostsconfigpath vHostsConfigPath . m     / / � 0 0 X / p r i v a t e / e t c / a p a c h e 2 / e x t r a / h t t p d - v h o s t s . c o n f -  1 2 1 l     ��������  ��  ��   2  3 4 3 l     �� 5 6��   5 ; 5Globalize some vars so they can be used in functions.    6 � 7 7 j G l o b a l i z e   s o m e   v a r s   s o   t h e y   c a n   b e   u s e d   i n   f u n c t i o n s . 4  8 9 8 p     : : �� ;�� 0 hostsfilepath hostsFilePath ; �� <�� 0 projectfolder projectFolder < �� =�� 0 	txtdomain 	txtDomain = ������ 0 virtualhost virtualHost��   9  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B  Set hosts file path    C � D D & S e t   h o s t s   f i l e   p a t h A  E F E l     G���� G r      H I H m      J J � K K $ / p r i v a t e / e t c / h o s t s I o      ���� 0 hostsfilepath hostsFilePath��  ��   F  L M L l     ��������  ��  ��   M  N O N l     �� P Q��   P ` ZAsk for server admin email address. If previously entered, that address will be displayed.    Q � R R � A s k   f o r   s e r v e r   a d m i n   e m a i l   a d d r e s s .   I f   p r e v i o u s l y   e n t e r e d ,   t h a t   a d d r e s s   w i l l   b e   d i s p l a y e d . O  S T S l    U���� U I   �� V W
�� .sysodlogaskr        TEXT V m     X X � Y Y | E n t e r   t h e   s e r v e r   a d m i n ' s   e m a i l   a d d r e s s : 
 ( E x :   n a m e @ e x a m p l e . c o m ) W �� Z��
�� 
dtxt Z o    ���� $0 serveradminemail serverAdminEmail��  ��  ��   T  [ \ [ l    ]���� ] r     ^ _ ^ l    `���� ` n     a b a 1    ��
�� 
ttxt b 1    ��
�� 
rslt��  ��   _ o      ���� $0 serveradminemail serverAdminEmail��  ��   \  c d c l     ��������  ��  ��   d  e f e l     �� g h��   g ` ZAsk for virtual host config directory. If previously entered, that path will be displayed.    h � i i � A s k   f o r   v i r t u a l   h o s t   c o n f i g   d i r e c t o r y .   I f   p r e v i o u s l y   e n t e r e d ,   t h a t   p a t h   w i l l   b e   d i s p l a y e d . f  j k j l   % l���� l I   %�� m n
�� .sysodlogaskr        TEXT m m     o o � p p$ E n t e r   t h e   v i r t u a l   h o s t   c o n f i g u r a t i o n   p a t h : 
 
 I f   t h e   p a t h   e n d s   w i t h   ' . c o n f ' ,   t h e   v i r t u a l   h o s t   w i l l   b e   a p p e n d e d   t o   t h a t   f i l e . 
 ( E x :   / p r i v a t e / e t c / a p a c h e 2 / e x t r a / h t t p d - v h o s t s . c o n f ) 
 
 I f   t h e   p a t h   i s   a   f o l d e r ,   a   n e w   v i r t u a l   h o s t   f i l e   w i l l   b e   c r e a t e d . 
 ( E x :   / p r i v a t e / e t c / a p a c h e 2 / e x t r a / ) n �� q��
�� 
dtxt q o    !���� $0 vhostsconfigpath vHostsConfigPath��  ��  ��   k  r s r l  & / t���� t r   & / u v u l  & ) w���� w n   & ) x y x 1   ' )��
�� 
ttxt y 1   & '��
�� 
rslt��  ��   v o      ���� $0 vhostsconfigpath vHostsConfigPath��  ��   s  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~  Get project folder     � � � $ G e t   p r o j e c t   f o l d e r }  � � � l  0 9 ����� � r   0 9 � � � I  0 7���� �
�� .sysostflalis    ��� null��   � �� ���
�� 
prmp � m   2 3 � � � � � t C h o o s e   p r o j e c t   f o l d e r   c o n t a i n i n g   t h e   w e b s i t e ' s   i n d e x   f i l e :��   � o      ���� 0 projectfolder projectFolder��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  Get domain name    � � � �  G e t   d o m a i n   n a m e �  � � � l  : O ����� � I  : O�� � �
�� .sysodlogaskr        TEXT � m   : ; � � � � � \ E n t e r   n e w   l o c a l   d o m a i n   n a m e : 
 ( E x :   e x a m p l e . d e v ) � �� ���
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
bhit � o   � ����� 0 dlgcontinue dlgContinue � m   � � � � � � �  O K � I   � ��������� 0 	runscript 	runScript��  ��  ��  ��  ��  ��   �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   �  Run this script    � � � �  R u n   t h i s   s c r i p t �  � � � i    	 � � � I      �}�|�{�} 0 	runscript 	runScript�|  �{   � k     ) � �  � � � I     �z�y�x�z  0 writehostsfile writeHostsFile�y  �x   �  � � � I    �w ��v�w 0 setvhost setVHost �  � � � o    �u�u 0 	txtdomain 	txtDomain �  ��t � n     � � � 1   	 �s
�s 
psxp � l   	 ��r�q � o    	�p�p 0 projectfolder projectFolder�r  �q  �t  �v   �  � � � I    �o ��n�o 0 
writevhost 
writeVHost �  � � � o    �m�m 0 	txtdomain 	txtDomain �  ��l � n     � � � 1    �k
�k 
psxp � l    ��j�i � o    �h�h 0 projectfolder projectFolder�j  �i  �l  �n   �  � � � I    �g�f�e�g 0 restartapache restartApache�f  �e   �  ��d � I    )�c ��b
�c .sysodlogaskr        TEXT � b     % � � � b     #   m     ! �  V i r t u a l   h o s t   o   ! "�a�a 0 	txtdomain 	txtDomain � m   # $ �    r e a d y .�b  �d   �  l     �`�_�^�`  �_  �^   	 l     �]
�]  
 7 1Write to hosts file if line doesn't exit already.    � b W r i t e   t o   h o s t s   f i l e   i f   l i n e   d o e s n ' t   e x i t   a l r e a d y .	  i   
  I      �\�[�Z�\  0 writehostsfile writeHostsFile�[  �Z   k     w  r      m     �Y�Y  o      �X�X 0 _result    r    	 b     m     �  1 2 7 . 0 . 0 . 1   o    �W�W 0 	txtdomain 	txtDomain o      �V�V 0 domline domLine  Q   
 # !�U  r    "#" I   �T$�S
�T .sysoexecTEXT���     TEXT$ b    %&% b    '(' b    )*) m    ++ �,,  g r e p   - q   "* o    �R�R 0 domline domLine( m    -- �..  "  & o    �Q�Q 0 hostsfilepath hostsFilePath�S  # o      �P�P 0 _result  ! R      �O�N�M
�O .ascrerr ****      � ****�N  �M  �U   /0/ Z   $ ;12�L�K1 =  $ '343 o   $ %�J�J 0 _result  4 m   % &�I�I 2 I  * 7�H56
�H .sysoexecTEXT���     TEXT5 b   * 1787 b   * /9:9 b   * -;<; m   * +== �>> 
 e c h o  < o   + ,�G�G 0 domline domLine: m   - .?? �@@    > >  8 o   / 0�F�F 0 hostsfilepath hostsFilePath6 �EA�D
�E 
badmA m   2 3�C
�C boovtrue�D  �L  �K  0 BCB l  < <�B�A�@�B  �A  �@  C DED r   < ?FGF m   < =�?�? G o      �>�> 0 _result  E HIH r   @ EJKJ b   @ CLML m   @ ANN �OO  1 2 7 . 0 . 0 . 1   w w w .M o   A B�=�= 0 	txtdomain 	txtDomainK o      �<�< 0 
wwwdomline 
wwwDomLineI PQP Q   F _RS�;R r   I VTUT I  I T�:V�9
�: .sysoexecTEXT���     TEXTV b   I PWXW b   I NYZY b   I L[\[ m   I J]] �^^  g r e p   - q   "\ o   J K�8�8 0 
wwwdomline 
wwwDomLineZ m   L M__ �``  "  X o   N O�7�7 0 hostsfilepath hostsFilePath�9  U o      �6�6 0 _result  S R      �5�4�3
�5 .ascrerr ****      � ****�4  �3  �;  Q a�2a Z   ` wbc�1�0b =  ` cded o   ` a�/�/ 0 _result  e m   a b�.�. c I  f s�-fg
�- .sysoexecTEXT���     TEXTf b   f mhih b   f kjkj b   f ilml m   f gnn �oo  e c h o   'm o   g h�,�, 0 
wwwdomline 
wwwDomLinek m   i jpp �qq 
 '   > >  i o   k l�+�+ 0 hostsfilepath hostsFilePathg �*r�)
�* 
badmr m   n o�(
�( boovtrue�)  �1  �0  �2   sts l     �'�&�%�'  �&  �%  t uvu l     �$wx�$  w  Set virtual host   x �yy   S e t   v i r t u a l   h o s tv z{z i    |}| I      �#~�"�# 0 setvhost setVHost~ � o      �!�! 0 
domainname 
domainName� �� � 1      �
� 
asdr�   �"  } r     +��� b     )��� b     '��� b     %��� b     #��� b     !��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     	��� b     ��� b     ��� b     ��� m     �� ���  #   D o m a i n :  � o    �� 0 
domainname 
domainName� m    �� ���  
 #   P a t h :  � 1    �
� 
asdr� m    �� ��� H 
 < V i r t u a l H o s t   * : 8 0 >   
 	 D o c u m e n t R o o t   '� 1   	 
�
� 
asdr� m    �� ���  ' 
 	 S e r v e r A d m i n  � o    �� $0 serveradminemail serverAdminEmail� m    �� ���  
 	 S e r v e r N a m e    � o    �� 0 
domainname 
domainName� m    �� ��� , 
         	 S e r v e r A l i a s   w w w .� o    �� 0 
domainname 
domainName� m    �� ���   
         	 E r r o r L o g   '� 1    �
� 
asdr� m     �� ��� J l o c a l h o s t _ e r r o r . l o g ' 
         	 C u s t o m L o g   '� 1   ! "�
� 
asdr� m   # $�� ��� \ l o c a l h o s t _ a c c e s s . l o g '   c o m m o n 
         	 < d i r e c t o r y   '� 1   % &�
� 
asdr� m   ' (�� ���d ' > 
                 	 O p t i o n s   I n d e x e s   F o l l o w S y m L i n k s   M u l t i V i e w s 
                 	 A l l o w O v e r r i d e   A l l 
                 	 a l l o w   f r o m   a l l 
         	 < / d i r e c t o r y > 
         	 D i r e c t o r y I n d e x   i n d e x . h t m l   i n d e x . p h p 
 < / V i r t u a l H o s t >� o      �� 0 virtualhost virtualHost{ ��� l     ����  �  �  � ��� l     ����  �  Write virtual host file   � ��� . W r i t e   v i r t u a l   h o s t   f i l e� ��� i    ��� I      ���� 0 
writevhost 
writeVHost� ��� o      �� 0 
domainname 
domainName� ��� 1      �
� 
asdr�  �  � Z     N����� D     ��� o     �
�
 $0 vhostsconfigpath vHostsConfigPath� m    �� ��� 
 . c o n f� I  
 �	��
�	 .sysoexecTEXT���     TEXT� b   
 ��� b   
 ��� b   
 ��� m   
 �� ���  e c h o   '� o    �� 0 virtualhost virtualHost� m    �� ��� 
 '   > >  � o    �� $0 vhostsconfigpath vHostsConfigPath� ���
� 
badm� m    �
� boovtrue�  �  � k    N�� ��� Z    :����� H    &�� D    %��� o    #�� $0 vhostsconfigpath vHostsConfigPath� m   # $�� ���  /� r   ) 6��� b   ) 0��� o   ) .� �  $0 vhostsconfigpath vHostsConfigPath� m   . /�� ���  /� o      ���� $0 vhostsconfigpath vHostsConfigPath�  �  � ���� I  ; N����
�� .sysoexecTEXT���     TEXT� b   ; H��� b   ; F��� b   ; D��� b   ; B��� m   ; <�� ���  c a t   >  � o   < A���� $0 vhostsconfigpath vHostsConfigPath� o   B C���� 0 
domainname 
domainName� m   D E�� ���  . c o n f   < <   E O F  � o   F G���� 0 virtualhost virtualHost� �����
�� 
badm� m   I J��
�� boovtrue��  ��  � � � l     ��������  ��  ��     l     ����    Read a file    �  R e a d   a   f i l e  i    	 I      ��
���� 0 readfile readFile
 �� o      ���� 0 unixpath unixPath��  ��  	 k     #  r     
 l    ���� I    ����
�� .rdwropenshor       file l    ���� 4     ��
�� 
psxf o    ���� 0 unixpath unixPath��  ��  ��  ��  ��   o      ���� 0 thefile theFile  r     l   ���� I   ��
�� .rdwrread****        **** o    ���� 0 thefile theFile ��
�� 
rdfr l   ���� I   ����
�� .rdwrgeofcomp       **** o    ���� 0 thefile theFile��  ��  ��   �� ��
�� 
as    m    ��
�� 
utf8��  ��  ��   o      ���� 0 txt   !"! I    ��#��
�� .rdwrclosnull���     ****# o    ���� 0 thefile theFile��  " $��$ L   ! #%% o   ! "���� 0 txt  ��   &'& l     ��������  ��  ��  ' ()( l     ��*+��  *  Write to file   + �,,  W r i t e   t o   f i l e) -.- i    /0/ I      ��1���� 0 	writefile 	writeFile1 232 o      ���� 0 thefile theFile3 454 o      ���� 0 thedata theData5 6��6 o      ���� &0 overwritecontents overwriteContents��  ��  0 k     =77 898 Q     :;��: I   ��<��
�� .rdwrclosnull���     ****< o    ���� 0 thefile theFile��  ; R      ������
�� .ascrerr ****      � ****��  ��  ��  9 =>= r    ?@? I   ��AB
�� .rdwropenshor       fileA o    ���� 0 thefile theFileB ��C��
�� 
permC m    ��
�� boovtrue��  @ o      ���� 0 _openedfile _openedFile> DED Z   -FG����F =   HIH o    ���� &0 overwritecontents overwriteContentsI m    ��
�� boovtrueG I  " )��JK
�� .rdwrseofnull���     ****J o   " #���� 0 _openedfile _openedFileK ��L��
�� 
set2L m   $ %����  ��  ��  ��  E MNM I  . 7��OP
�� .rdwrwritnull���     ****O o   . /���� 0 thedata theDataP ��QR
�� 
refnQ o   0 1���� 0 thefile theFileR ��S��
�� 
wratS m   2 3��
�� rdwreof ��  N T��T I  8 =��U��
�� .rdwrclosnull���     ****U o   8 9���� 0 thefile theFile��  ��  . VWV l     ��������  ��  ��  W XYX l     ��Z[��  Z  Restart Apache   [ �\\  R e s t a r t   A p a c h eY ]^] i    !_`_ I      �������� 0 restartapache restartApache��  ��  ` I    ��ab
�� .sysoexecTEXT���     TEXTa m     cc �dd " a p a c h e c t l   r e s t a r tb ��e��
�� 
badme m    ��
�� boovtrue��  ^ fgf l     ��������  ��  ��  g hih l     ��jk��  j ' !Find and replace text in a string   k �ll B F i n d   a n d   r e p l a c e   t e x t   i n   a   s t r i n gi mnm i   " %opo I      ��q���� 0 replacetext replaceTextq rsr o      ���� 0 sometext someTexts tut o      ���� 0 find  u v��v o      ���� 0 replace  ��  ��  p k     &ww xyx r     z{z n     |}| 1    ��
�� 
txdl} 1     ��
�� 
ascr{ o      ���� 0 prevtids prevTIDsy ~~ r    ��� o    ���� 0 find  � n      ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 sometext someText� o      ���� 0 sometext someText� ��� r    ��� o    ���� 0 replace  � n      ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� b    ��� m    �� ���  � o    ���� 0 sometext someText� o      ���� 0 sometext someText� ��� r    #��� o    ���� 0 prevtids prevTIDs� n      ��� 1     "��
�� 
txdl� 1     ��
�� 
ascr� ���� L   $ &�� o   $ %���� 0 sometext someText��  n ��� l     ��~�}�  �~  �}  � ��� l     �|���|  �  Get folder name   � ���  G e t   f o l d e r   n a m e� ��� i   & )��� I      �{��z�{ 0 getfoldername getFolderName� ��y� 1      �x
�x 
ppth�y  �z  � k     $�� ��� l    ���� r     ��� n    ��� 1    �w
�w 
txdl�  f     � o      �v�v 0 	olddelims 	oldDelims� "  save the current delimiters   � ��� 8   s a v e   t h e   c u r r e n t   d e l i m i t e r s� ��� l   �u�t�s�u  �t  �s  � ��� l   ���� r    ��� m    �� ���  :� n     ��� 1    
�r
�r 
txdl�  f    �    the character to split on   � ��� 4   t h e   c h a r a c t e r   t o   s p l i t   o n� ��� r    ��� l   ��q�p� n    ��� 7   �o��
�o 
cobj� m    �n�n��� m    �m�m��� n    ��� 2   �l
�l 
citm� 1    �k
�k 
ppth�q  �p  � o      �j�j 
0 output  � ��� l   �i�h�g�i  �h  �g  � ��� l   !���� r    !��� o    �f�f 0 	olddelims 	oldDelims� n     ��� 1     �e
�e 
txdl�  f    � 2 , just to be safe, restore the old delimiters   � ��� X   j u s t   t o   b e   s a f e ,   r e s t o r e   t h e   o l d   d e l i m i t e r s� ��� l  " "�d�c�b�d  �c  �b  � ��a� L   " $�� o   " #�`�` 
0 output  �a  � ��� l     �_�^�]�_  �^  �]  � ��� l     �\���\  � � �Suggest a .dev address based on project folder name. If the folder name is a domain name, the extention will be dropped and appended. (This could probably be done better if I knew what I was doing.)   � ���� S u g g e s t   a   . d e v   a d d r e s s   b a s e d   o n   p r o j e c t   f o l d e r   n a m e .   I f   t h e   f o l d e r   n a m e   i s   a   d o m a i n   n a m e ,   t h e   e x t e n t i o n   w i l l   b e   d r o p p e d   a n d   a p p e n d e d .   ( T h i s   c o u l d   p r o b a b l y   b e   d o n e   b e t t e r   i f   I   k n e w   w h a t   I   w a s   d o i n g . )� ��� i   * -��� I      �[��Z�[ 0 settodev setToDev� ��Y� 1      �X
�X 
pnam�Y  �Z  � k    ��� ��� r     ��� n     ��� 1    �W
�W 
leng� 1     �V
�V 
pnam� o      �U�U 0 
namelength 
nameLength� ��� l   �T�S�R�T  �S  �R  � ��� Z   ����Q�P� E    	��� 1    �O
�O 
pnam� m    �� ���  .� Z   �� �N� G    / G    ' G     G    	 D    

 1    �M
�M 
pnam m     �  . c o m . c o	 D     1    �L
�L 
pnam m     �  . n e t . c o D     1    �K
�K 
pnam m     �  . n o m . c o D   " % 1   " #�J
�J 
pnam m   # $ �  . o r g . u k D   * - 1   * +�I
�I 
pnam m   + , �  . l t d . u k  k   2 F   r   2 A!"! l  2 ?#�H�G# n   2 ?$%$ 7 3 ?�F&'
�F 
ctxt& m   7 9�E�E ' l  : >(�D�C( \   : >)*) o   ; <�B�B 0 
namelength 
nameLength* m   < =�A�A �D  �C  % 1   2 3�@
�@ 
pnam�H  �G  " o      �?�? 0 newname newName  +,+ l  B B�>�=�<�>  �=  �<  , -�;- L   B F.. b   B E/0/ o   B C�:�: 0 newname newName0 m   C D11 �22  . d e v�;   343 G   I T565 D   I L787 1   I J�9
�9 
pnam8 m   J K99 �::  . c o . u k6 D   O R;<; 1   O P�8
�8 
pnam< m   P Q== �>>  . m e . u k4 ?@? k   W kAA BCB r   W fDED l  W dF�7�6F n   W dGHG 7 X d�5IJ
�5 
ctxtI m   \ ^�4�4 J l  _ cK�3�2K \   _ cLML o   ` a�1�1 0 
namelength 
nameLengthM m   a b�0�0 �3  �2  H 1   W X�/
�/ 
pnam�7  �6  E o      �.�. 0 newname newNameC NON l  g g�-�,�+�-  �,  �+  O P�*P L   g kQQ b   g jRSR o   g h�)�) 0 newname newNameS m   h iTT �UU  . d e v�*  @ VWV G   n �XYX G   n �Z[Z G   n {\]\ D   n q^_^ 1   n o�(
�( 
pnam_ m   o p`` �aa 
 . i n f o] D   t ybcb 1   t u�'
�' 
pnamc m   u xdd �ee 
 . m o b i[ D   ~ �fgf 1   ~ �&
�& 
pnamg m    �hh �ii 
 . n a m eY D   � �jkj 1   � ��%
�% 
pnamk m   � �ll �mm 
 . a s i aW non k   � �pp qrq r   � �sts l  � �u�$�#u n   � �vwv 7 � ��"xy
�" 
ctxtx m   � ��!�! y l  � �z� �z \   � �{|{ o   � ��� 0 
namelength 
nameLength| m   � ��� �   �  w 1   � ��
� 
pnam�$  �#  t o      �� 0 newname newNamer }~} l  � �����  �  �  ~ � L   � ��� b   � ���� o   � ��� 0 newname newName� m   � ��� ���  . d e v�  o ��� G   � ���� G   � ���� G   � ���� G   � ���� G   � ���� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . c o m� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . n e t� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . o r g� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . b i z� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . t e l� D   � ���� 1   � ��
� 
pnam� m   � ��� ���  . x x x� ��� k   � ��� ��� r   � ���� l  � ����� n   � ���� 7 � ����
� 
ctxt� m   � ��� � l  � ����
� \   � ���� o   � ��	�	 0 
namelength 
nameLength� m   � ��� �  �
  � 1   � ��
� 
pnam�  �  � o      �� 0 newname newName� ��� l  � �����  �  �  � ��� L   � ��� b   � ���� o   � ��� 0 newname newName� m   � ��� ���  . d e v�  � ��� G  a��� G  W��� G  M��� G  C��� G  9��� G  /��� G  %��� G  ��� G  ��� D  ��� 1  � 
�  
pnam� m  �� ���  . u s� D  
��� 1  
��
�� 
pnam� m  �� ���  . c c� D  ��� 1  ��
�� 
pnam� m  �� ���  . c o� D  #��� 1  ��
�� 
pnam� m  "�� ���  . m e� D  (-��� 1  ()��
�� 
pnam� m  ),�� ���  . i n� D  27��� 1  23��
�� 
pnam� m  36�� ���  . e u� D  <A��� 1  <=��
�� 
pnam� m  =@�� ���  . t v� D  FK��� 1  FG��
�� 
pnam� m  GJ�� ���  . v n� D  PU��� 1  PQ��
�� 
pnam� m  QT�� ���  . t w� D  Z_��� 1  Z[��
�� 
pnam� m  [^�� ���  . w s� ��� k  dz�� � � r  ds l dq���� n  dq 7eq��
�� 
ctxt m  ik����  l lp���� \  lp	
	 o  mn���� 0 
namelength 
nameLength
 m  no���� ��  ��   1  de��
�� 
pnam��  ��   o      ���� 0 newname newName   l tt��������  ��  ��   �� L  tz b  ty o  tu���� 0 newname newName m  ux �  . d e v��  �  D  }� 1  }~��
�� 
pnam m  ~� �  . d e v �� L  �� 1  ����
�� 
pnam��  �N  �Q  �P  �  l ����������  ��  ��   �� L  �� b  ��  1  ����
�� 
pnam  m  ��!! �""  . d e v��  � #$# l     ��������  ��  ��  $ %&% l     ��'(��  '  Show debug message   ( �)) $ S h o w   d e b u g   m e s s a g e& *��* i   . 1+,+ I      ��-���� 	0 debug  - .��. o      ���� 0 str  ��  ��  , I    ��/��
�� .sysodlogaskr        TEXT/ o     ���� 0 str  ��  ��       ��0 # /123456789:;< J����������������������������  0 ���������������������������������������������������������� $0 serveradminemail serverAdminEmail�� $0 vhostsconfigpath vHostsConfigPath�� 0 	runscript 	runScript��  0 writehostsfile writeHostsFile�� 0 setvhost setVHost�� 0 
writevhost 
writeVHost�� 0 readfile readFile�� 0 	writefile 	writeFile�� 0 restartapache restartApache�� 0 replacetext replaceText�� 0 getfoldername getFolderName�� 0 settodev setToDev�� 	0 debug  
�� .aevtoappnull  �   � ****�� 0 hostsfilepath hostsFilePath��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  1 �� �����=>���� 0 	runscript 	runScript��  ��  =  > 
������������������  0 writehostsfile writeHostsFile�� 0 	txtdomain 	txtDomain�� 0 projectfolder projectFolder
�� 
psxp�� 0 setvhost setVHost�� 0 
writevhost 
writeVHost�� 0 restartapache restartApache
�� .sysodlogaskr        TEXT�� **j+  O*���,l+ O*���,l+ O*j+ O��%�%j 	2 ������?@����  0 writehostsfile writeHostsFile��  ��  ? �������� 0 _result  �� 0 domline domLine�� 0 
wwwdomline 
wwwDomLine@ ��+-��������=?��N]_np�� 0 	txtdomain 	txtDomain�� 0 hostsfilepath hostsFilePath
�� .sysoexecTEXT���     TEXT��  ��  
�� 
badm�� xkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y hOkE�O��%E�O �%�%�%j E�W X  hO�k  �%�%�%�el Y h3 ��}����AB���� 0 setvhost setVHost�� ��C�� C  ������ 0 
domainname 
domainName
�� 
asdr��  A ������ 0 
domainname 
domainName
�� 
asdrB �������������� 0 virtualhost virtualHost�� ,�%�%�%�%�%�%b   %�%�%�%�%�%�%�%�%�%�%�%E�4 �������DE���� 0 
writevhost 
writeVHost�� ��F�� F  ������ 0 
domainname 
domainName
�� 
asdr��  D ��~� 0 
domainname 
domainName
�~ 
asdrE 
���}��|�{�����} 0 virtualhost virtualHost
�| 
badm
�{ .sysoexecTEXT���     TEXT�� Ob  � ��%�%b  %�el Y 2b  � b  �%Ec  Y hO�b  %�%�%�%�el 5 �z	�y�xGH�w�z 0 readfile readFile�y �vI�v I  �u�u 0 unixpath unixPath�x  G �t�s�r�t 0 unixpath unixPath�s 0 thefile theFile�r 0 txt  H 	�q�p�o�n�m�l�k�j�i
�q 
psxf
�p .rdwropenshor       file
�o 
rdfr
�n .rdwrgeofcomp       ****
�m 
as  
�l 
utf8�k 
�j .rdwrread****        ****
�i .rdwrclosnull���     ****�w $*�/j E�O��j ��� E�O�j O�6 �h0�g�fJK�e�h 0 	writefile 	writeFile�g �dL�d L  �c�b�a�c 0 thefile theFile�b 0 thedata theData�a &0 overwritecontents overwriteContents�f  J �`�_�^�]�` 0 thefile theFile�_ 0 thedata theData�^ &0 overwritecontents overwriteContents�] 0 _openedfile _openedFileK �\�[�Z�Y�X�W�V�U�T�S�R�Q
�\ .rdwrclosnull���     ****�[  �Z  
�Y 
perm
�X .rdwropenshor       file
�W 
set2
�V .rdwrseofnull���     ****
�U 
refn
�T 
wrat
�S rdwreof �R 
�Q .rdwrwritnull���     ****�e > 
�j  W X  hO��el E�O�e  ��jl Y hO����� O�j  7 �P`�O�NMN�M�P 0 restartapache restartApache�O  �N  M  N c�L�K
�L 
badm
�K .sysoexecTEXT���     TEXT�M ��el 8 �Jp�I�HOP�G�J 0 replacetext replaceText�I �FQ�F Q  �E�D�C�E 0 sometext someText�D 0 find  �C 0 replace  �H  O �B�A�@�?�B 0 sometext someText�A 0 find  �@ 0 replace  �? 0 prevtids prevTIDsP �>�=�<�
�> 
ascr
�= 
txdl
�< 
citm�G '��,E�O���,FO��-E�O���,FO�%E�O���,FO�9 �;��:�9RS�8�; 0 getfoldername getFolderName�: �7T�7 T  �6
�6 
ppth�9  R �5�4�3
�5 
ppth�4 0 	olddelims 	oldDelims�3 
0 output  S �2��1�0�/
�2 
txdl
�1 
citm
�0 
cobj�/���8 %)�,E�O�)�,FO��-[�\[Z�\Z�2E�O�)�,FO�: �.��-�,UV�+�. 0 settodev setToDev�- �*W�* W  �)
�) 
pnam�,  U �(�'�&
�( 
pnam�' 0 
namelength 
nameLength�& 0 newname newNameV *�%��$�#�"19=�!T`dhl� �������������������!
�% 
leng
�$ 
bool
�# 
ctxt�" �! �  � �+���,E�O�����
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
 	�a &�& �[�\[Zk\Z�m2E�O�a '%Y �a ( �EY hY hO�a )%; �,��XY�� 	0 debug  � �Z� Z  �� 0 str  �  X �� 0 str  Y �
� .sysodlogaskr        TEXT� �j  < �[��\]�
� .aevtoappnull  �   � ****[ k     �^^  E__  S``  [aa  jbb  rcc  �dd  �ee  �ff  �gg  ���  �  �  \  ]  J� X���� o� ���
 ��	��� � �� � ��� ��� 0 hostsfilepath hostsFilePath
� 
dtxt
� .sysodlogaskr        TEXT
� 
rslt
� 
ttxt
� 
prmp
� .sysostflalis    ��� null�
 0 projectfolder projectFolder
�	 
ctxt� 0 getfoldername getFolderName� 0 settodev setToDev� 0 	txtdomain 	txtDomain
� 
psxp� 0 dlgcontinue dlgContinue
� 
bhit� 0 	runscript 	runScript� ��E�O��b   l O��,Ec   O��b  l O��,Ec  O*��l 
E�O��**��&k+ �&k+ l O��,E` Oa _ %a %�a ,%a %b   %a %b  %j E` O_ a ,a   
*j+ Y h��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ