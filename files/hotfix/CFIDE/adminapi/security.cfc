����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcGETENABLESANDBOXSECURITY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 

         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q java S  coldfusion.server.ServiceFactory U getSecurityService W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkAdminRoles c 
enterprise e Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary g false i 
		
		 k java/lang/String m SANDBOXSECURITYENABLED o _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; q r
  s 
	 u getEnableSandboxSecurity w metaData Ljava/lang/Object; y z	  { &coldfusion/runtime/AttributeCollection } name  access � public � output � hint � +Checks whether sandbox security is enabled. � 
Parameters � ([Ljava/lang/Object;)V  �
 ~ � 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcGETENABLESANDBOXSECURITY; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       y z     � �  �   !     j�    �        � �    � �  �   !     x�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-1� @-BD� J� P-R� <
-2� @--2� @-TV� JX� Z� ^� P-R� <-3� @--� bd� ZYfS� ^W-R� <-4� @--� bd� ZYhSYjS� ^W-l� <-
� nYpS� t�-v� <�    �   z    � � �     � � �    � � z    � � �    � � �    � � �    � � z    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   r  0 B1 L1 N1 K1 K1 B1 ^2 p2 r2 o2 g2 g2 ^2 �3 �3 �3 �3 �3 �4 �4 �4 �4 �4 �4 �6 �6 �6  �   �   f     H� ~Y
� ZY�SYxSY�SY�SY�SYjSY�SY�SY�SY	� ZS� �� |�    �       H � �    � �  �         �    �        � �    � �  �   #     � n�    �        � �    � �  �   "     � |�    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc cfsecurity2ecfc129082770  coldfusion/runtime/CFComponent  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   FS Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   LICENSE   	   FACTORY   	    REQUEST " " 	  $ THIS & & 	  ( com.macromedia.SourceModTime  9 � pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/PageContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 com.adobe.coldfusion.* ; bindImportPath (Ljava/lang/String;)V = >
  ? 
	 A _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V C D
  E LOCALE G REQUEST.LOCALE I _setCurrentLineNo (I)V K L
  M java O java.util.Locale Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U 
getDefault Y java/lang/Object [ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ] ^
  _ getLanguage a checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V c d
  e  coldfusion.server.ServiceFactory g set (Ljava/lang/Object;)V i j coldfusion/runtime/Variable l
 m k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
  q getLicenseService s java.io.File u _Map #(Ljava/lang/Object;)Ljava/util/Map; w x coldfusion/runtime/Cast z
 { y java/lang/String } SEPARATORCHAR  _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � 	VARIABLES � 
LOCALEFILE � java/lang/StringBuffer � ./CFIDE/adminapi/customtags/resources/adminapi_ �  >
 � � 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 { � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .xml � toString ()Ljava/lang/String; � �
 \ � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � USERNAMEPASSWORDDELIM � | � E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 
	
	 � (class$coldfusion$tagext$lang$ImportedTag Ljava/lang/Class; "coldfusion.tagext.lang.ImportedTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � "coldfusion/tagext/lang/ImportedTag � l10n � /CFIDE/adminapi/customtags � admin � setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V � �
 � � &coldfusion/runtime/AttributeCollection � id � sandbox_not_found � var � file � ([Ljava/lang/Object;)V  �
 � � setAttributecollection (Ljava/util/Map;)V � �  coldfusion/tagext/lang/ModuleTag �
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � sandbox not found. � write � > java/io/Writer �
 � � doAfterBody � �
 � � _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; � �
  � doEndTag � � #javax/servlet/jsp/tagext/TagSupport �
 � � doCatch (Ljava/lang/Throwable;)V � �
 � � 	doFinally 
 � sandbox_already_exists sandbox already exists. cannot_delete_system_sandboxes *Not authorized to delete system sandboxes.
 wrong_port_type Awrong port type, valid options are: single, higher, lower, range. security_invalidfunction ?This function can not be added to the restricted function list. security_invalidTag 5This tag can not be added to the restricted tag list. error_invalidDirectory =Invalid Directory, please check your directory and try again. db_not_found Database not found. badIP  Invalid IP address." 	invalidip$ Invalid IP Address:& 		
	( wrongSeedLength* (Seed must be beween 8 and 500 characters, 	

	. 

	0 	



	2 	
	
	
	4 _factor2 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;67
 8 

	
	: 	
	
	< 
		
	

	> _factor3@7
 A 	
	
	
			
	C 	
		
	E !

	

	
	
	
	
	
	

	
	G 

			
	
	
	I 

		
	
	K 
	
		


	
	 M _factor4O7
 P 
	
	
	



	
	R 
	
		
		
	
	 T 
		
		
	
	
	V 
	
		
		
	
	X 
	
	
	

	Z _factor5\7
 ] 
	

	
	_ 
	
	
	
	
	a _factor6c7
 d 	


	f 


	
	
	h 
	
	
		
	
	j 
	





	 l 
 
 	n 	

 	p _factor7r7
 s 
	
	


u deleteDisabledDatasource Lcoldfusion/runtime/UDFMethod; 5cfsecurity2ecfc129082770$funcDELETEDISABLEDDATASOURCEy
z 	wx	 | DELETEDISABLEDDATASOURCE~ registerUDF 3(Ljava/lang/String;Lcoldfusion/runtime/UDFMethod;)V��
 � setSecuritySandbox /cfsecurity2ecfc129082770$funcSETSECURITYSANDBOX�
� 	�x	 � SETSECURITYSANDBOX� 
deleteUser 'cfsecurity2ecfc129082770$funcDELETEUSER�
� 	�x	 � 
DELETEUSER� setDisabledCFTag -cfsecurity2ecfc129082770$funcSETDISABLEDCFTAG�
� 	�x	 � SETDISABLEDCFTAG� getUseAdminPassword 0cfsecurity2ecfc129082770$funcGETUSEADMINPASSWORD�
� 	�x	 � GETUSEADMINPASSWORD� getEnableSandboxSecurity 5cfsecurity2ecfc129082770$funcGETENABLESANDBOXSECURITY�
� 	�x	 � GETENABLESANDBOXSECURITY� setAdminPassword -cfsecurity2ecfc129082770$funcSETADMINPASSWORD�
� 	�x	 � SETADMINPASSWORD� setRDSPassword +cfsecurity2ecfc129082770$funcSETRDSPASSWORD�
� 	�x	 � SETRDSPASSWORD� isRAMAllFiles *cfsecurity2ecfc129082770$funcISRAMALLFILES�
� 	�x	 � ISRAMALLFILES� getAllAdminRoles -cfsecurity2ecfc129082770$funcGETALLADMINROLES�
� 	�x	 � GETALLADMINROLES� getAllExposedServices 2cfsecurity2ecfc129082770$funcGETALLEXPOSEDSERVICES�
� 	�x	 � GETALLEXPOSEDSERVICES� deleteDisabledCFTag 0cfsecurity2ecfc129082770$funcDELETEDISABLEDCFTAG�
� 	�x	 � DELETEDISABLEDCFTAG� setDisabledDatasource 2cfsecurity2ecfc129082770$funcSETDISABLEDDATASOURCE�
� 	�x	 � SETDISABLEDDATASOURCE� deleteDisabledCFFunction 5cfsecurity2ecfc129082770$funcDELETEDISABLEDCFFUNCTION�
� 	�x	 � DELETEDISABLEDCFFUNCTION� disableRDSServlet .cfsecurity2ecfc129082770$funcDISABLERDSSERVLET�
� 	�x	 � DISABLERDSSERVLET� getUseSingleRDSPassword 4cfsecurity2ecfc129082770$funcGETUSESINGLERDSPASSWORD�
� 	�x	 � GETUSESINGLERDSPASSWORD� setUseRDSPassword .cfsecurity2ecfc129082770$funcSETUSERDSPASSWORD�
� 	�x	   SETUSERDSPASSWORD setDisabledCFFunction 2cfsecurity2ecfc129082770$funcSETDISABLEDCFFUNCTION
 	x	  SETDISABLEDCFFUNCTION
 
formatPort 'cfsecurity2ecfc129082770$funcFORMATPORT
 	x	  
FORMATPORT setSecuredFolder -cfsecurity2ecfc129082770$funcSETSECUREDFOLDER
 	x	  SETSECUREDFOLDER getDisabledDatasources 3cfsecurity2ecfc129082770$funcGETDISABLEDDATASOURCES
 	x	   GETDISABLEDDATASOURCES" validateDirectory .cfsecurity2ecfc129082770$funcVALIDATEDIRECTORY%
& 	$x	 ( VALIDATEDIRECTORY* setUseSingleRDSPassword 4cfsecurity2ecfc129082770$funcSETUSESINGLERDSPASSWORD-
. 	,x	 0 SETUSESINGLERDSPASSWORD2 getDisabledCFTags .cfsecurity2ecfc129082770$funcGETDISABLEDCFTAGS5
6 	4x	 8 GETDISABLEDCFTAGS: getEnableRDS )cfsecurity2ecfc129082770$funcGETENABLERDS=
> 	<x	 @ GETENABLERDSB getDefaultSecuritySandbox 6cfsecurity2ecfc129082770$funcGETDEFAULTSECURITYSANDBOXE
F 	Dx	 H GETDEFAULTSECURITYSANDBOXJ deleteSecuredFolder 0cfsecurity2ecfc129082770$funcDELETESECUREDFOLDERM
N 	Lx	 P DELETESECUREDFOLDERR createDefaultSandboxes 3cfsecurity2ecfc129082770$funcCREATEDEFAULTSANDBOXESU
V 	Tx	 X CREATEDEFAULTSANDBOXESZ deleteAllowedIPAddresses 5cfsecurity2ecfc129082770$funcDELETEALLOWEDIPADDRESSES]
^ 	\x	 ` DELETEALLOWEDIPADDRESSESb setSeed $cfsecurity2ecfc129082770$funcSETSEEDe
f 	dx	 h SETSEEDj getDisabledCFFunctions 3cfsecurity2ecfc129082770$funcGETDISABLEDCFFUNCTIONSm
n 	lx	 p GETDISABLEDCFFUNCTIONSr getUser $cfsecurity2ecfc129082770$funcGETUSERu
v 	tx	 x GETUSERz enableRDSServlet -cfsecurity2ecfc129082770$funcENABLERDSSERVLET}
~ 	|x	 � ENABLERDSSERVLET� setUser $cfsecurity2ecfc129082770$funcSETUSER�
� 	�x	 � SETUSER� getSecuredIPPorts .cfsecurity2ecfc129082770$funcGETSECUREDIPPORTS�
� 	�x	 � GETSECUREDIPPORTS� getTagPermissionPosition 5cfsecurity2ecfc129082770$funcGETTAGPERMISSIONPOSITION�
� 	�x	 � GETTAGPERMISSIONPOSITION� setSecuredIPPort -cfsecurity2ecfc129082770$funcSETSECUREDIPPORT�
� 	�x	 � SETSECUREDIPPORT� getFunctionPermissionPosition :cfsecurity2ecfc129082770$funcGETFUNCTIONPERMISSIONPOSITION�
� 	�x	 � GETFUNCTIONPERMISSIONPOSITION� setAllowedIPAddresses 2cfsecurity2ecfc129082770$funcSETALLOWEDIPADDRESSES�
� 	�x	 � SETALLOWEDIPADDRESSES� getSecurableCFFunctions 4cfsecurity2ecfc129082770$funcGETSECURABLECFFUNCTIONS�
� 	�x	 � GETSECURABLECFFUNCTIONS� deleteSecuritySandbox 2cfsecurity2ecfc129082770$funcDELETESECURITYSANDBOX�
� 	�x	 � DELETESECURITYSANDBOX� isLoginUserIdRequired 2cfsecurity2ecfc129082770$funcISLOGINUSERIDREQUIRED�
� 	�x	 � ISLOGINUSERIDREQUIRED� setDefaultFilePermission 5cfsecurity2ecfc129082770$funcSETDEFAULTFILEPERMISSION�
� 	�x	 � SETDEFAULTFILEPERMISSION� getSecuritySandboxes 1cfsecurity2ecfc129082770$funcGETSECURITYSANDBOXES�
� 	�x	 � GETSECURITYSANDBOXES� getUseRDSPassword .cfsecurity2ecfc129082770$funcGETUSERDSPASSWORD�
� 	�x	 � GETUSERDSPASSWORD� getSecurableCFTags /cfsecurity2ecfc129082770$funcGETSECURABLECFTAGS�
� 	�x	 � GETSECURABLECFTAGS� getSecuredFolders .cfsecurity2ecfc129082770$funcGETSECUREDFOLDERS�
� 	�x	 � GETSECUREDFOLDERS� setUseAdminPassword 0cfsecurity2ecfc129082770$funcSETUSEADMINPASSWORD�
� 	�x	 � SETUSEADMINPASSWORD� setEnableSandboxSecurity 5cfsecurity2ecfc129082770$funcSETENABLESANDBOXSECURITY�
� 	�x	   SETENABLESANDBOXSECURITY setLoginUserIdRequired 3cfsecurity2ecfc129082770$funcSETLOGINUSERIDREQUIRED
 	x	  SETLOGINUSERIDREQUIRED
 deleteSecuredIPPort 0cfsecurity2ecfc129082770$funcDELETESECUREDIPPORT
 	x	  DELETESECUREDIPPORT setEnableRDS )cfsecurity2ecfc129082770$funcSETENABLERDS
 	x	  SETENABLERDS getAllowedIPList -cfsecurity2ecfc129082770$funcGETALLOWEDIPLIST
 	x	   GETALLOWEDIPLIST" metaData Ljava/lang/Object;$%	 & _implicitMethods Ljava/util/Map;()	 * displayname, security. extends0 base2 hint4 -Manages passwords, RDS, and sandbox security.6 Name8 	Functions:	z&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	&	&	&	&	&&	.&	6&	>&	F&	N&	V&	^&	f&	n&	v&	~&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	�&	&	&	&	& this Lcfsecurity2ecfc129082770; __factorParent out Ljavax/servlet/jsp/JspWriter; value LocalVariableTable Code <clinit> LineNumberTable 
getExtends varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; _getImplicitMethods ()Ljava/util/Map; _setImplicitMethods implicitMethods module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 I t6 Ljava/lang/Throwable; t7 t8 t9 t10 t11 module2 mode2 t14 t15 t16 t17 t18 t19 module3 mode3 t22 t23 t24 t25 t26 t27 module4 mode4 t30 t31 t32 t33 t34 t35 module5 mode5 t38 t39 t40 t41 t42 t43 module6 mode6 t46 t47 t48 t49 t50 t51 module7 mode7 t54 t55 t56 t57 t58 t59 module8 mode8 t62 t63 t64 t65 t66 t67 module9 mode9 t70 t71 t72 t73 t74 t75 module10 mode10 t78 t79 t80 t81 t82 t83 module11 mode11 t86 t87 t88 t89 t90 t91 java/lang/Throwable� getMetadata registerUDFs 1     =                 "     &     � �   wx   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   x   x   x   x   $x   ,x   4x   <x   Dx   Lx   Tx   \x   dx   lx   tx   |x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   �x   x   x   x   x   $%   
()    \7 x   n     2*,S� F*,U� F*,W� F*,Y� F*,[� F*,=� F*�   w   *    2qr     2s 8    2tu    2v%  r7 x   �     W*,=� F*,�� F*,g� F*,i� F*,k� F*,m� F*,o� F*,q� F*,/� F*,�� F*,B� F*�   w   *    Wqr     Ws 8    Wtu    Wv%  y  x  � 	   ��� �� ��zY�{�}��Y������Y������Y������Y������Y������Y������Y������Y������Y�ǳɻ�Y�ϳѻ�Y�׳ٻ�Y�߳��Y����Y����Y������Y����Y��	�Y���Y���Y��!�&Y�'�)�.Y�/�1�6Y�7�9�>Y�?�A�FY�G�I�NY�O�Q�VY�W�Y�^Y�_�a�fY�g�i�nY�o�q�vY�w�y�~Y�����Y������Y������Y������Y������Y������Y������Y������Y������Y�ǳɻ�Y�ϳѻ�Y�׳ٻ�Y�߳��Y����Y����Y������Y����Y��	�Y���Y���Y��!� �Y
� \Y-SY/SY1SY3SY5SY7SY9SY/SY;SY	5� \Y�<SY�=SY�>SY�?SY�@SY�ASY�BSY�CSY�DSY	�ESY
�FSY�GSY�HSY�ISY�JSY�KSY�LSY�MSY�NSY�OSY�PSY�QSY�RSY�SSY�TSY�USY�VSY�WSY�XSY�YSY�ZSY�[SY �\SY!�]SY"�^SY#�_SY$�`SY%�aSY&�bSY'�cSY(�dSY)�eSY*�fSY+�gSY,�hSY-�iSY.�jSY/�kSY0�lSY1�mSY2�nSY3�oSY4�pSS� ճ'�   w      �qr  z   � 5f�ljrjxH~ �0� <� ~���"�)���c��� �� h� ^�f���5�4��� r	 ����%�, F3-:%A �HFOV�]&dkr�y�� -�o�I� U���� #�9� 2�o� ��v { � x   "     3�   w       qr   O7 x   n     2*,D� F*,F� F*,H� F*,J� F*,L� F*,N� F*�   w   *    2qr     2s 8    2tu    2v%     x   #     *� 
�   w       qr      x   u     C*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )�   w        Cqr     C|}    C~  c7 x   k     /*,�� F*,`� F*,�� F*,�� F*,1� F*,b� F*�   w   *    /qr     /s 8    /tu    /v%  �� x   �     e*� 0� 6L*� :N*<� @*-+�9� �*-+�B� �*-+�Q� �*-+�^� �*-+�e� �*-+�t� �*+v� F�   w   *    eqr     etu    ev%    e 7 8 z        @7 x   �     N*,�� F*,;� F*,=� F*,=� F*,�� F*,3� F*,�� F*,?� F*,=� F*,�� F*�   w   *    Nqr     Ns 8    Ntu    Nv%  �� x   "     �+�   w       qr   � � x   -     +�+�   w       qr     �)  67 x  �  \  *,B� F*,B� F**� %HJ*� N**� N**� N*PR� XZ� \� `b� \� `� f*,B� F*� !*	� N*Ph� X� n*� *
� N***� !� rt� \� `� n*� **� N*Pv� X� |� ~Y�S� �� n*�� ~Y�S� �Y�� �*#� ~YHS� �� �� ��� �� �� �**� )� ~Y�S�� �*,�� F*� �+� �� �:*� N���� �� �Y� \Y�SY�SY�SY�SY�SY*�� ~Y�S� �S� ն �� �� �Y6� 5*,� �M,� �� ���� � :� �:*,� �M�� �� :� #�� � #:		� � � :
� 
�:��*,B� F*� �+� �� �:*� N���� �� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �� �� �Y6� 6*,� �M,� �� ���� � :� �:*,� �M�� �� :� #�� � #:� � � :� �:��*,B� F*� �+� �� �:*� N���� �� �Y� \Y�SY	SY�SY	SY�SY*�� ~Y�S� �S� ն �� �� �Y6� 6*,� �M,� �� ���� � :� �:*,� �M�� �� :� #�� � #:� � � :� �:��*,B� F*� �+� �� �:*� N���� �� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �� �� �Y6� 6*,� �M,� �� ���� � :� �:*,� �M�� �� : � # �� � #:!!� � � :"� "�:#��#*,B� F*� �+� �� �:$*� N$���� �$� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �$� �$� �Y6%� 6*$%,� �M,� �$� ���� � :&� &�:'*%,� �M�'$� �� :(� #(�� � #:)$)� � � :*� *�:+$��+*,B� F*� �+� �� �:,*� N,���� �,� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �,� �,� �Y6-� 6*,-,� �M,� �,� ���� � :.� .�:/*-,� �M�/,� �� :0� #0�� � #:1,1� � � :2� 2�:3,��3*,B� F*� �+� �� �:4*� N4���� �4� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �4� �4� �Y65� 6*45,� �M,� �4� ���� � :6� 6�:7*5,� �M�74� �� :8� #8�� � #:949� � � ::� :�:;4��;*,B� F*� �+� �� �:<*� N<���� �<� �Y� \Y�SYSY�SYSY�SY*�� ~Y�S� �S� ն �<� �<� �Y6=� 6*<=,� �M,� �<� ���� � :>� >�:?*=,� �M�?<� �� :@� #@�� � #:A<A� � � :B� B�:C<��C*,B� F*� �	+� �� �:D*� ND���� �D� �Y� \Y�SY!SY�SY!SY�SY*�� ~Y�S� �S� ն �D� �D� �Y6E� 6*DE,� �M,#� �D� ���� � :F� F�:G*E,� �M�GD� �� :H� #H�� � #:IDI� � � :J� J�:KD��K*,B� F*� �
+� �� �:L*� NL���� �L� �Y� \Y�SY%SY�SY%SY�SY*�� ~Y�S� �S� ն �L� �L� �Y6M� 6*LM,� �M,'� �L� ���� � :N� N�:O*M,� �M�OL� �� :P� #P�� � #:QLQ� � � :R� R�:SL��S*,)� F*� �+� �� �:T*� NT���� �T� �Y� \Y�SY+SY�SY+SY�SY*�� ~Y�S� �S� ն �T� �T� �Y6U� 6*TU,� �M,-� �T� ���� � :V� V�:W*U,� �M�WT� �� :X� #X�� � #:YTY� � � :Z� Z�:[T��[*,/� F*,�� F*,1� F*,�� F*,�� F*,�� F*,�� F*,�� F*,�� F*,�� F*,�� F*,3� F*,5� F*,1� F*� Xd������Y�������Y���������������D`c�chc�9�������9���������������%AD�DID�dp�jmp�d�jm�p|���"%�%*%��EQ�KNQ��E`�KN`�Q]`�`e`�����&2�,/2��&A�,/A�2>A�AFA�������������#�#� #�#(#�������������������������
���������������������������������o�������d�������d���������������	Q	m	p�	p	u	p�	F	�	��	�	�	��	F	�	��	�	�	��	�	�	��	�	�	��
4
P
S�
S
X
S�
)
s
�
y
|
�
)
s
��
y
|
��

�
��
�
�
�� w  � \  qr    s 8   tu   v%   ��   ��   ��   �%   �%   �� 	  �� 
  �%   ��   ��   ��   �%   �%   ��   ��   �%   ��   ��   ��   �%   �%   ��   ��   �%   ��   ��   ��   �%   �%    �� !  �� "  �% #  �� $  �� %  �� &  �% '  �% (  �� )  �� *  �% +  �� ,  �� -  �� .  �% /  �% 0  �� 1  �� 2  �% 3  �� 4  �� 5  �� 6  �% 7  �% 8  �� 9  �� :  �% ;  �� <  �� =  �� >  �% ?  �% @  �� A  �� B  �% C  �� D  �� E  �� F  �% G  �% H  �� I  �� J  �% K  �� L  �� M  �� N  �% O  �% P  �� Q  �� R  �% S  �� T  �� U  �� V  �% W  �% X  �� Y  �� Z  �% [z  f Y   ,  .  +  $        Z 	 \ 	 Y 	 Y 	 O 	 o 
 n 
 n 
 d 
 �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  O ) 3 = =  �     � � � � � � � � � � � � � � � x � � � � Y n y � � ; P [ f f  2 = H H � 	 	 	* 	* � 	� 
 
 
 	�  �� x   "     �'�   w       qr   �  x  1    *�}��*�����*�����*�����*�����*�����*�����*�����*ò���*˲ɶ�*ӲѶ�*۲ٶ�*���*���*���*�����*���*�	��*���*���*#�!��*+�)��*3�1��*;�9��*C�A��*K�I��*S�Q��*[�Y��*c�a��*k�i��*s�q��*{�y��*�����*�����*�����*�����*�����*�����*�����*�����*ò���*˲ɶ�*ӲѶ�*۲ٶ�*���*���*���*�����*���*�	��*���*���*#�!���   w      qr         *    +����  -s 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 3cfsecurity2ecfc129082770$funcGETDISABLEDDATASOURCES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ALLDSNS ' DB ) WEBAPP + PERMISSIONS - SECURITY / ACCESSMANAGER 1 pageContext #Lcoldfusion/runtime/NeoPageContext; 3 4	  5 getOut ()Ljavax/servlet/jsp/JspWriter; 7 8 javax/servlet/jsp/PageContext :
 ; 9 parent Ljavax/servlet/jsp/tagext/Tag; = >	  ? 	DIRECTORY A getVariable  (I)Lcoldfusion/runtime/Variable; C D %coldfusion/runtime/ArgumentCollection F
 G E _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; I J
  K 
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
  Q / S set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W _setCurrentLineNo (I)V [ \
  ] ArrayNew (I)Ljava/util/List; _ ` coldfusion/runtime/CFPage b
 c a   e 1 g 	component i CFIDE.adminapi.accessmanager k CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; m n
 c o java q  coldfusion.server.ServiceFactory s getSecurityService u java/lang/Object w _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; y z
  { _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; } ~
   checkAdminRoles � Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary � false � CFIDE.adminapi.datasource � getDatasources � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 c � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � ~
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 c � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � #coldfusion.sql.DataSourcePermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � TARGET � * � 	StructNew !()Lcoldfusion/util/FastHashtable; � �
 c � StructDelete �
 c _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object; �
 �	 ArrayLen (Ljava/lang/Object;)I
 c (I)Ljava/lang/Object; �
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �
  StructKeyList #(Ljava/util/Map;)Ljava/lang/String;
 c ListToArray $(Ljava/lang/String;)Ljava/util/List;
 c _List $(Ljava/lang/Object;)Ljava/util/List;
 � 
textnocase! asc# 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z%&
 c' 
	) getDisabledDatasources+ metaData Ljava/lang/Object;-.	 / array1 &coldfusion/runtime/AttributeCollection3 name5 access7 public9 output; 
returntype= hint? IReturns an array of data sources that have been disabled for the sandbox.A 
ParametersC HINTE MSpecifies the sandbox directory for which disabled data sources are returned.G NAMEI 	directoryK REQUIREDM trueO ([Ljava/lang/Object;)V Q
4R 	getOutput ()Ljava/lang/String; this 5Lcfsecurity2ecfc129082770$funcGETDISABLEDDATASOURCES; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw40 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   -.   	 TU Y   !     ��   X       VW   ZU Y   "     2�   X       VW   [U Y   "     ,�   X       VW   \] Y  7    Y-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:-� 6� <:-� @:*B� H� L:-N� RT� Z-8� ^-� d� Zf� Zf� Z
h� Z-=� ^-jl� p� Z->� ^-->� ^-rt� pv� x� |� Z-@� ^--� ��� xY�SY�S� |W-B� ^-j�� p� Z-C� ^-C� ^--� ��� x� |� �� Z-E� ^--� �Y�S� �-� �� �� �-� �YBS� �� �� ��� G-� �� �� �:-G� ^¶ ���-Ͷ и �¸ Զ �� �� ߙ �-L� ^--� �Y�S� �� xY-� �SY-� �S� � �� Z
h� Z� �---
� �� � �� �Y�S� �� ��~�� �Y� �� .W---
� �� � �� �Y�S� ��� ��~�� �� �� -U� ^� � Z� �� ]---
� �� � �� �Y�S� �� ��� 7-Z� ^--� �� �---
� �� � �� �Y�S� � ��W
-
� ��c�
� Z-
� �-O� ^-� �����t|����-]� ^-]� ^--� �� ���� Z-^� ^-� �� "$�(W-� ��-*� R�   X   �   YVW    Y^_   Y`.   Yab   Ycd   Yef   Yg.   Y = >   Y h   Y h 	  Y "h 
  Y 'h   Y )h   Y +h   Y -h   Y /h   Y 1h   Y Ah   Yij k   � 4 z7 |7 |7 �8 �8 �8 �8 �9 �9 �9 �: �: �: �; �; �; �= �= �= �= �= �> �> �> �> �> �> �@ �@ �@ �@ �@BBBBB'C&C&C&C&CCDESEDEDE_E_ECECECE�G�GyGyFCE�L�L�L�L�L�L�L�L�O�O�OR�RR�R�R5R1RMR1R1R�RjUjUaUpVaSzXvX�X�Z�Z�Z�Z�Z�Z�Z�YvXvX�R�P�O�O�O�O�O�O�O�O�O�O�O�O]]]]]]
]4^4^=^@^4^4^G_G_G_ z6 l  Y   �     ��� �� ��4Y� xY6SY,SY8SY:SY<SY�SY>SY2SY@SY	BSY
DSY� xY�4Y� xYFSYHSYJSYLSYNSYPS�SSS�S�0�   X       �VW   mn Y         �   X       VW   op Y   (     
� �YBS�   X       
VW   qr Y   "     �0�   X       VW      Y   #     *� 
�   X       VW        ����  -J 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcGETSECUREDIPPORTS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) SOCKETARRAY + SECURITY - ACCESSMANAGER / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/PageContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; G H
  I 
		 K _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V M N
  O / Q set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U _setCurrentLineNo (I)V Y Z
  [ ArrayNew (I)Ljava/util/List; ] ^ coldfusion/runtime/CFPage `
 a _ 1 c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j
 a k java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
  w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { checkAdminRoles } Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary  false � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � z
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 a � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 a � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � java.net.SocketPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � TARGET � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 a � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 a � (I)Ljava/lang/Object; � �
 �  '(Ljava/lang/Object;Ljava/lang/Object;)D �
  
	 getSecuredIPPorts metaData Ljava/lang/Object;	
	  &coldfusion/runtime/AttributeCollection name access public output hint 2Returns an array of secured ports for the sandbox. 
Parameters HINT ESpecifies the sandbox directory for which secured ports are returned. NAME! 	directory# REQUIRED% true' ([Ljava/lang/Object;)V )
* 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcGETSECUREDIPPORTS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw47 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   	
    ,- 1   !     ��   0       ./   2- 1   "     �   0       ./   34 1  �    c-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:-� 4� ::-� >:*@� F� J:-L� PR� X-� \-� b� X-	� \-� b� X
d� X-� \-fh� l� X-� \--� \-np� lr� t� x� X-� \--� |~� tY�SY�S� xW-� \--� �Y�S� �-� �� �� �-� �Y@S� �� �� ��� G-� �� �� �:-� \�� ���-�� ĸ ��� ȶ �� �� ә �-� \--� �Y�S� �� tY-� �SY-� �S� ָ ڶ X
d� X� m---
� �� ݸ �� �Y�S� �� ��� 4-� \--� �� �---
� �� ݸ �� �Y�S� � �W
-
� �� �c� �� X-
� �-� \-� �� ����t|���r-� ��-� P�   0   �   c./    c56   c7
   c89   c:;   c<=   c>
   c ; <   c ?   c ? 	  c "? 
  c '?   c )?   c +?   c -?   c /?   c ??   c@A B  V U  r t t y � � � �	 �	 �	 �	 �
 �
 �
 � � � � � � � � � � � � � � � �  ]]::�������~����������������"*777*�Q"Q"Q" r C  1   �     ��� �� ��Y
� tYSYSYSYSYSY�SYSYSYSY	� tY�Y� tYSY SY"SY$SY&SY(S�+SS�+��   0       �./   DE 1         �   0       ./   FG 1   (     
� �Y@S�   0       
./   HI 1   "     ��   0       ./      1   #     *� 
�   0       ./        ����  -` 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 3cfsecurity2ecfc129082770$funcGETDISABLEDCFFUNCTIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % AENABLEDFUNCTIONS ' WEBAPP ) 	ADISABLED + PERMISSIONS - ARRAYPOS / TARGET 1 SECURITY 3 ACCESSMANAGER 5 pageContext #Lcoldfusion/runtime/NeoPageContext; 7 8	  9 getOut ()Ljavax/servlet/jsp/JspWriter; ; < javax/servlet/jsp/PageContext >
 ? = parent Ljavax/servlet/jsp/tagext/Tag; A B	  C 	DIRECTORY E getVariable  (I)Lcoldfusion/runtime/Variable; G H %coldfusion/runtime/ArgumentCollection J
 K I _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; M N
  O 
		 Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V S T
  U / W set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ _setCurrentLineNo (I)V _ `
  a ArrayNew (I)Ljava/util/List; c d coldfusion/runtime/CFPage f
 g e 1 i   k 

         m 	component o CFIDE.adminapi.accessmanager q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; s t
 g u java w  coldfusion.server.ServiceFactory y getSecurityService { java/lang/Object } _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;  �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary � false � 
		
		 � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 g � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 g � GETFUNCTIONPERMISSIONPOSITION � � �
  � getFunctionPermissionPosition � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � * � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � Left '(Ljava/lang/String;I)Ljava/lang/String; � �
 g � *- 	_contains '(Ljava/lang/String;Ljava/lang/String;)Z
  RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 g	 ListToArray $(Ljava/lang/String;)Ljava/util/List;
 g _List $(Ljava/lang/Object;)Ljava/util/List;
 � 
textnocase asc 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
 g 
	 getDisabledCFFunctions metaData Ljava/lang/Object; 	 ! &coldfusion/runtime/AttributeCollection# name% access' public) output+ hint- FReturns an array of functions that have been disabled for the sandbox./ 
Parameters1 HINT3 JSpecifies the sandbox directory for which disabled functions are returned.5 NAME7 	directory9 REQUIRED; true= ([Ljava/lang/Object;)V ?
$@ 	getOutput ()Ljava/lang/String; this 5Lcfsecurity2ecfc129082770$funcGETDISABLEDCFFUNCTIONS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw35 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �        BC G   !     ��   F       DE   HC G   "     �   F       DE   IJ G  � 	   -� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:-� :� @:-� D:*F� L� P:-R� VX� ^-R� V-0� b-� h� ^-R� V-1� b-� h� ^-R� V
j� ^-R� Vj� ^-R� V-4� b-� h� ^-R� Vl� ^-n� V-6� b-pr� v� ^-R� V-7� b--7� b-xz� v|� ~� �� ^-R� V-8� b--� ��� ~Y�SY�S� �W-�� V-;� b--� �Y�S� �-� �� �� �-� �YFS� �� �� ��� G-� �� �� �:-=� b¶ ���-Ͷ и �¸ Զ �� �� ߙ �-A� b--� �Y�S� �� ~Y-� �SY-� �S� � � ^-D� b-� ��-� ~Y-� �SY-� �S� � ^---� �� � �� �Y2S� �� ^-� ��� ��� � D-J� b-� �� �� �� '-N� b-N� b-� �� ��
�� ^-P� b-� ���W-� ��-� V�   F   �   DE    KL   M    NO   PQ   RS   T     A B    U    U 	   "U 
   'U    )U    +U    -U    /U    1U    3U    5U    EU   VW X  � s - �/ �/ �/ �/ �0 �0 �0 �0 �0 �1 �1 �1 �1 �1 �2 �2 �2 �2 �3 �3 �3 �3 �4 �4 �4 �4 �45555666666-7?7A7>76767-7b8p8u8a8a8a8�;�;�;�;�;�;�;�;�;�=�=�=�<�;A$A-AAAAAAFDUD^DFDFD=DqFmFmFkF�G�G�J�J�J�J�J�J�J�N�N�N�N�N�N�N�N�N�J�J�J�G�P�P�P�P�P�P�Q�Q�Q�: Y  G   �     ��� �� ��$Y
� ~Y&SYSY(SY*SY,SY�SY.SY0SY2SY	� ~Y�$Y� ~Y4SY6SY8SY:SY<SY>S�ASS�A�"�   F       �DE   Z[ G         �   F       DE   \] G   (     
� �YFS�   F       
DE   ^_ G   "     �"�   F       DE      G   #     *� 
�   F       DE        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcSETSECUREDIPPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) SUCCESS + ARRAYPOS - SECURITY / ACCESSMANAGER 1 ST 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M IP O PORT Q get (I)Ljava/lang/Object; S T
 I U PORTTYPE W single Y put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; [ \
 I ] 
		 _ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V a b
  c / e set (Ljava/lang/Object;)V g h coldfusion/runtime/Variable j
 k i true m _setCurrentLineNo (I)V o p
  q ArrayNew (I)Ljava/util/List; s t coldfusion/runtime/CFPage v
 w u 0 y 	StructNew !()Lcoldfusion/util/FastHashtable; { |
 w } 1  	component � CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 w � java �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � single,higher,lower,range � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 w � _boolean (D)Z � �
 � � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � WRONG_PORT_TYPE � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � Len (Ljava/lang/Object;)I � �
 w � BADIP � CONTEXTS � _resolve � �
  � � �
  � _arrayGetAt � \
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 w � SANDBOX_NOT_FOUND � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
   	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;
 w C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  CLASS	 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  java.net.SocketPermission _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  TARGET * _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int �
 � ArrayDeleteAt (Ljava/util/List;I)Z 
 w! _double (Ljava/lang/Object;)D#$
 �% _Object (D)Ljava/lang/Object;'(
 �) ArrayLen+ �
 w,' T
 �. '(Ljava/lang/Object;Ljava/lang/Object;)D0
 1 java/lang/StringBuffer3  
45 :7 append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;9:
4; 
FORMATPORT= � �
 ? 
formatPortA 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;CD
 E toString ()Ljava/lang/String;GH
 �I _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)VKL
 M ACTIONO connect,resolveQ ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZST
 wU _LhsResolveW �
 X _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VZ[
 \ 
	^ setSecuredIPPort` metaData Ljava/lang/Object;bc	 d falsef &coldfusion/runtime/AttributeCollectionh namej accessl publicn outputp hintr DRestrict the IP addresses and ports that ColdFusion tags can access.t 
Parametersv HINTx NSpecifies the sandbox directory for which the IP address and port are secured.z NAME| 	directory~ REQUIRED� ([Ljava/lang/Object;)V �
i� %Specifies the IP address to restrict.� Specifies the port to restrict.� �Specifies the port type:<ul><li>single - Single port</li><li>higher - The specified port and higher</li><li>lower - The specified port and lower</li><li>range - Specified range of ports</li></ul>� portType� DEFAULT� 	getOutput this /Lcfsecurity2ecfc129082770$funcSETSECUREDIPPORT; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw48 !Lcoldfusion/tagext/lang/ThrowTag; throw49 throw50 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   bc    �H �   "     g�   �       ��   �H �   "     a�   �       ��   �� �  	C    ]-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:*P� J� N:*R� J� N:� V� XZ� ^W� J:-`� df� ln� l-.� r-� x� lz� l-1� r� ~� l
�� l-4� r-��� �� l-5� r--5� r-��� ��� �� �� l-6� r--� ��� �Y�S� �W-8� r�-� �YXS� �� �� ��� ��� G-� �� �� �:-:� rƶ ���-Ѷ ո �Ƹ ٶ �� �� � �-=� r-� �YPS� �� 臸 ��� G-� �� �� �:-?� rƶ ���-� ո �Ƹ ٶ �� �� � �-B� r--� �Y�S� �-� � �� �-� �YDS� �� �� ��� G-� �� �� �:-D� rƶ ���-�� ո �Ƹ ٶ �� �� � �-H� r--� �Y�S� �� �Y-� �SY-� �S��� l
�� l� �---
� �� �� �Y
S���� I---
� �� �� �YS���� !-R� r--� �-
� ��"W
-
� �&c�*� l-
� �-L� r-� �-�/�2�t|���[
�� l� �---
� �� �� �Y
S���� �---
� �� �� �YS��4Y-� � ��68�<-]� r->�@B-� �Y-� �SY-� �S�F� ��<�J�2�~�� !-_� r--� �-
� ��"W
-
� �&c�*� l-
� �-Y� r-� �-�/�2�t|���-� �Y
S�N-� �YS�4Y-� � ��68�<-f� r->�@B-� �Y-� �SY-� �S�F� ��<�J�N-� �YPSR�N-h� r--� �-� �VW-� �Y�S�Y� �Y-� �SY-� �S-� �]-_� d�   �   �   ]��    ]��   ]�c   ]��   ]��   ]��   ]�c   ] ? @   ] �   ] � 	  ] "� 
  ] '�   ] )�   ] +�   ] -�   ] /�   ] 1�   ] 3�   ] C�   ] O�   ] Q�   ] W�   ]��   ]��   ]�� �  � � & �* �, �, �, �- �- �- �. �. �. �. �/ �/ �/ �1 �1 �1 �2 �2 �2 �444445 5"5555;6I6:6:6W8Y8Y8W8W8W8�:w:w9W8�=�=�=�=�= ?�?�>�=)B8B)B)BDBDB(B(B(B�D�D^D^C(B�H�H�H�H�H�H�H�H�L�L�L�N�NNPP)P<R<RERER;R;R;QPO�N�MTLTL]LTLTLRLeLrLrLrLeL�L�Y�Y�Y�[�[�[�]�]�]�]�]�]	]]�]�]�]�]9_9_B_B_8_8_8^�]�\�[�ZQYQYZYQYQYOYbYoYoYoYbY�Y�e�e�e�f�f�f�f�f�f�f�f�f�f�fgg�ghhhhhh$k9kBkIkIk$k �+ �  �  K    -�� �� ��iY
� �YkSYaSYmSYoSYqSYgSYsSYuSYwSY	� �Y�iY� �YySY{SY}SYSY�SYnS��SY�iY� �YySY�SY}SYPSY�SYnS��SY�iY� �YySY�SY}SYRSY�SYnS��SY�iY� �YySY�SY}SY�SY�SYZSY�SYgS��SS���e�   �      -��   �� �         �   �       ��   �� �   7     � �YDSYPSYRSYXS�   �       ��   �� �   "     �e�   �       ��      �   #     *� 
�   �       ��        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 'cfsecurity2ecfc129082770$funcFORMATPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    NEWPORT " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 PORT 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; = >
  ? PORTTYPE A 
		 C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; I J
  K set (Ljava/lang/Object;)V M N coldfusion/runtime/Variable P
 Q O range S _compare '(Ljava/lang/Object;Ljava/lang/String;)D U V
  W _setCurrentLineNo (I)V Y Z
  [ [0-9].[0-9]. ] _String &(Ljava/lang/Object;)Ljava/lang/String; _ ` coldfusion/runtime/Cast b
 c a REFind :(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer; e f coldfusion/runtime/CFPage h
 i g _boolean (Ljava/lang/Object;)Z k l
 c m - o   q all s Replace \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; u v
 i w Val (Ljava/lang/String;)D y z
 i { _Object (D)Ljava/lang/Object; } ~
 c  higher � (D)Ljava/lang/String; _ �
 c � concat &(Ljava/lang/String;)Ljava/lang/String; � � java/lang/String �
 � � lower � 
	 � 
formatPort � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � java/lang/Object � name � access � private � hint � +Format a port based on the specified range. � 
Parameters � HINT � Specifies the port number. � NAME � port � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � USpecifies the range designation:<ul><li>single</li><li>higher</li><li>lower</li></ul> � portType � getName ()Ljava/lang/String; this )Lcfsecurity2ecfc129082770$funcFORMATPORT; LocalVariableTable Code runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ��    �        � �    � �  �  Q    -� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:*6� <� @:*B� <� @:-D� H
-� L� R-� LT� X�� [-�� \^-� L� d� j� n� 
-� L� R� .
-ƶ \-ƶ \-� L� dprt� x� |� �� R� �-� L�� X�� 6
-ʶ \-ʶ \-� L� dprt� x� |� �p� �� R� a-� L�� X�� 6
p-̶ \-̶ \-� L� dprt� x� |� �� �� R� 
-ζ \-� L� d� |� �� R-
� L�-�� H�    �   �    � �     � �    � �    � �    � �    � �    � �    1 2     �     � 	   " � 
   5 �    A �  �  6 M � Z� \� \� e� k� |� ~� ~� �� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� |� |� �� �� �� �� �� �� �� �� �� �� ��� �� �� �� ����"�2�2�;�=�?�2�2�2�2�"�"� � �\�\�\�\�S�S�S��� �� �� e�n�n�n� Z�  �   �   �     �� �Y� �Y�SY�SY�SY�SY�SY�SY�SY� �Y� �Y� �Y�SY�SY�SY�SY�SY�S� �SY� �Y� �Y�SY�SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   -     � �Y6SYBS�    �        � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 'cfsecurity2ecfc129082770$funcDELETEUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 USERNAME 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; ? @
  A 
        
         C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G _setCurrentLineNo (I)V I J
  K 	component M CFIDE.adminapi.accessmanager O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y 		                    
		 ] java _  coldfusion.server.ServiceFactory a getSecurityService c java/lang/Object e _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; g h
  i 
		 k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q 

		 s deleteAuthorizedUser u java/lang/String w _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; y z
  { 
	 } 
deleteUser  metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � Removes the user. � 
Parameters � HINT � -Specifies the username of the user to delete. � NAME � username � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this )Lcfsecurity2ecfc129082770$funcDELETEUSER; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8� >� B:-D� H-m� L-NP� V� \-^� H
-n� L--n� L-`b� Vd� f� j� \-l� H-o� L--� pr� f� jW-t� H-r� L--
� pv� fY-� xY8S� |S� jW-~� H�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   ^  j Rm \m ^m [m [m Rm nn �n �n n wn wn nn �o �o �o �o �r �r �r �r �q  �   �   �     �� �Y� fY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� fY� �Y� fY�SY�SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� xY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcVALIDATEDIRECTORY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    NEWDIR " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 	DIRECTORY 5 getVariable  (I)Lcoldfusion/runtime/Variable; 7 8 %coldfusion/runtime/ArgumentCollection :
 ; 9 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; = >
  ? 
		 A _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V C D
  E _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; G H
  I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 

		 Q _setCurrentLineNo (I)V S T
  U _String &(Ljava/lang/Object;)Ljava/lang/String; W X coldfusion/runtime/Cast Z
 [ Y Trim &(Ljava/lang/String;)Ljava/lang/String; ] ^ coldfusion/runtime/CFPage `
 a _ Right '(Ljava/lang/String;I)Ljava/lang/String; c d
 a e /* g _compare '(Ljava/lang/Object;Ljava/lang/String;)D i j
  k concat m ^ java/lang/String o
 p n Left r d
 a s / u 	
	 w validateDirectory y metaData Ljava/lang/Object; { |	  } false  &coldfusion/runtime/AttributeCollection � java/lang/Object � name � access � private � output � hint � 8Ensure that the directory starts with / and ends with /* � 
Parameters � HINT � &Specifies the directory to be secured. � NAME � 	directory � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcVALIDATEDIRECTORY; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       { |     � �  �   !     ��    �        � �    � �  �   !     z�    �        � �    � �  �       �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:*6� <� @:-B� F
-� J� P-R� F-� V-� V-� J� \� b� fh� l�� 
-� J� \h� q� P-� V-
� J� \� tv� l�� 
v-
� J� \� q� P-
� J�-x� F�    �   z    � � �     � � �    � � |    � � �    � � �    � � �    � � |    � 1 2    �  �    �  � 	   � " � 
   � 5 �  �   � % � J� L� L� J� k� k� k� k� w� k� {� �� �� �� �� �� �� �� k� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� k�  �   �   �     u� �Y
� �Y�SYzSY�SY�SY�SY�SY�SY�SY�SY	� �Y� �Y� �Y�SY�SY�SY�SY�SY�S� �SS� �� ~�    �       u � �    � �  �         �    �        � �    � �  �   (     
� pY6S�    �       
 � �    � �  �   "     � ~�    �        � �       �   #     *� 
�    �        � �        ����  -* 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 1cfsecurity2ecfc129082770$funcGETSECURITYSANDBOXES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBAPP " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % PERMISSIONS ' SECURITY ) ACCESSMANAGER + ST - pageContext #Lcoldfusion/runtime/NeoPageContext; / 0	  1 getOut ()Ljavax/servlet/jsp/JspWriter; 3 4 javax/servlet/jsp/PageContext 6
 7 5 parent Ljavax/servlet/jsp/tagext/Tag; 9 :	  ; getVariable  (I)Lcoldfusion/runtime/Variable; = > %coldfusion/runtime/ArgumentCollection @
 A ? 
		 C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G / I set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M _setCurrentLineNo (I)V Q R
  S 	StructNew !()Lcoldfusion/util/FastHashtable; U V coldfusion/runtime/CFPage X
 Y W ArrayNew (I)Ljava/util/List; [ \
 Y ] 	component _ CFIDE.adminapi.accessmanager a CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; c d
 Y e java g  coldfusion.server.ServiceFactory i getSecurityService k java/lang/Object m _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; o p
  q _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; s t
  u checkAdminRoles w Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary y false { java/lang/String } CONTEXTS  _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � t
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 Y � arguments.directory � 	IsDefined (Ljava/lang/String;)Z � �
 Y � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � /* � StructDelete %(Ljava/util/Map;Ljava/lang/String;Z)Z � �
 Y � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 Y � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 	DIRECTORY � _resolveAndAutoscalarize � �
  � _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 
	 � getSecuritySandboxes � metaData Ljava/lang/Object; � �	  � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � 6Returns all security sandboxes or a specified sandbox. � 
Parameters � HINT � !Sandbox directory to be returned. NAME 	directory REQUIRED ([Ljava/lang/Object;)V 	
 �
 	getOutput ()Ljava/lang/String; this 3Lcfsecurity2ecfc129082770$funcGETSECURITYSANDBOXES; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw25 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �        !     |�                 !     �                -    #-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:-� 2� 8:-� <:� B:-D� H
J� P-M� T� Z� P-N� T-� ^� P-P� T-`b� f� P-Q� T--Q� T-hj� fl� n� r� P-R� T--� vx� nYzSY|S� rW-T� T-� ~Y�S� �-
� �� �� �� P-V� T-�� ��� ,-X� T--� �� ��� �W-� ��� �-]� T--� ~Y�S� �-
� �� �� �-� �� �� �� 4--� ~Y�S� �� nY-
� �SY-� �S� �� P� G-� �� �� �:-a� T�� ���-˶ θ ��� Ҷ �� �� ݙ �-� nY-� ~Y�S� �S-c� T-� �� �� �-� ��-� H�      �   #    #   # �   #   #   #   # �   # 9 :   #    #  	  # " 
  # '   # )   # +   # -   # �   # ! "  F Q I bL dL dL iM rM rM xN �N �N �N �P �P �P �P �P �Q �Q �Q �Q �Q �Q �R �R �R �R �R �T �T �T �T �T �T �TVVVV%X%X.X0X$X$X5Y5Y5Y$WG]V]G]G]b]b]F]t_�_�_s_s_q_q^�a�a�a�`�`F]�ccccc�ceeeF[F[V bK #     �     ��� �� �� �Y
� nY�SY�SY�SY�SY�SY|SY�SY�SY�SY	� nY� �Y� nY SYSYSYSYSY|S�SS�� �          �   $%          �             &'    (     
� ~Y�S�          
   ()    "     � �                   #     *� 
�                  ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcSETDISABLEDCFFUNCTION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    	TARGETPOS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % I ' WEBAPP ) PERMISSIONS + ARRAYPOS - 
TARGETTEMP / TARGET 1 SECURITY 3 ACCESSMANAGER 5 pageContext #Lcoldfusion/runtime/NeoPageContext; 7 8	  9 getOut ()Ljavax/servlet/jsp/JspWriter; ; < javax/servlet/jsp/PageContext >
 ? = parent Ljavax/servlet/jsp/tagext/Tag; A B	  C 	DIRECTORY E getVariable  (I)Lcoldfusion/runtime/Variable; G H %coldfusion/runtime/ArgumentCollection J
 K I _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; M N
  O FUNCTIONNAME Q 

				
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
  W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] 
		 a 1 c _setCurrentLineNo (I)V e f
  g ArrayNew (I)Ljava/util/List; i j coldfusion/runtime/CFPage l
 m k   o 0 q 

         s 	component u CFIDE.adminapi.accessmanager w CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; y z
 m { java }  coldfusion.server.ServiceFactory  getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � 
		
		 � GETSECURABLECFFUNCTIONS � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � getSecurableCFFunctions � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 m � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 m � _boolean (D)Z � �
 � � 
			 � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDFUNCTION � _autoscalarize � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 m � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � CONTEXTS � _resolve � �
  � � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � 
 m throw setCalledName 
 � SANDBOX_NOT_FOUND 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; �

  	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;
 m GETFUNCTIONPERMISSIONPOSITION getFunctionPermissionPosition C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  *-! LCase# �
 m$ concat& �
 �' Left '(Ljava/lang/String;I)Ljava/lang/String;)*
 m+ RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;-.
 m/ _Object (I)Ljava/lang/Object;12
 �3 (Ljava/lang/Object;D)D5
 6 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;89
 m: :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V �<
 = _LhsResolve? �
 @ _arraySetAtB<
 C 
	E setDisabledCFFunctionG metaData Ljava/lang/Object;IJ	 K voidM falseO &coldfusion/runtime/AttributeCollectionQ nameS accessU publicW outputY 
returntype[ hint] .Disables the use of a function in the sandbox._ 
Parametersa HINTc MSpecifies the sandbox directory for which the specified function is disabled.e NAMEg 	directoryi REQUIREDk truem ([Ljava/lang/Object;)V o
Rp "Specifies the function to disable.r functionNamet 	getOutput ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcSETDISABLEDCFFUNCTION; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw36 !Lcoldfusion/tagext/lang/ThrowTag; throw37 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   IJ   	 vw {   "     P�   z       xy   |w {   "     N�   z       xy   }w {   "     H�   z       xy   ~ {  & 	   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:-� :� @:-� D:*F� L� P:*R� L� P:-T� XZ� `-b� Xd� `-b� X-l� h-� n� `-b� Xd� `-b� Xp� `-b� X
r� `-b� Xp� `-t� X-q� h-vx� |� `-b� X-r� h--r� h-~�� |�� �� �� `-b� X-s� h--� ��� �Y�S� �W-�� X-u� h-u� h-u� h-�� ��-� �� �� �� �-� �YRS� �� �� ��� ��� O-�� X-� �� �� �:-v� h��-Ӷ ָ �� ڶ �� �� � �-b� X-�� X-� �YFS-y� h-� �YFS� �� �� � �-�� X-|� h--� �Y�S� �-� �� �� �-� �YFS� �� ���� J-� �� �� �:-~� h���-	� ָ �� ڶ �� �� � �-�� h--� �Y�S� �� �Y-� �SY-� �S��� `-�� h-� �-� �Y-� �SY-� �S� �� `---� ��� �� �Y2S�� `-� �� �� 9"� `-� �� �-�� h-� �� ��%�(� `� �-�� h-� �� ��,"� �� �-�� h-� �� ��0� `
-�� h-� �� �-�� h-� �� ��%� ��4� `-
� ��7�� .-�� h-� �� �-�� h-� �� ��%�;� `---� ��� �� �Y2S-� ��>-� �Y�S�A� �Y-� �SY-� �S-� ��D-F� X�   z   �   �xy    ���   ��J   ���   ���   ���   ��J   � A B   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � 5�   � E�   � Q�   ���   ��� �  � � f �j �j �j �j �k �k �k �k �l �l �l �l �l �m �m �m �m �n �n �n �n �o �o �o �o �p p p �pqqqqqq)r;r=r:r2r2r)r^sls]s]s]s�u�u�u�u�u�u�u�u�u�u�v�v�v�u+y+y+y+yyyS|b|S|S|n|n|R|R|R|�~�~�~�}R|�����������������!�*����=�9�9�7�X�^�k�k�i�s�s���������s�s�q�i������������������������������������������������'�'�'�'�������������X�=�R�R�9�[�p�y�����[�R{ �  {   �     ��� ų ǻRY� �YTSYHSYVSYXSYZSYPSY\SYNSY^SY	`SY
bSY� �Y�RY� �YdSYfSYhSYjSYlSYnS�qSY�RY� �YdSYsSYhSYuSYlSYnS�qSS�q�L�   z       �xy   �� {         �   z       xy   �� {   -     � �YFSYRS�   z       xy   �� {   "     �L�   z       xy      {   #     *� 
�   z       xy        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcSETDISABLEDCFTAG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    	TARGETPOS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) ARRAYPOS + 
TARGETTEMP - TARGET / SECURITY 1 ACCESSMANAGER 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M TAG O 
		
		
		 Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V S T
  U / W set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ _setCurrentLineNo (I)V a b
  c ArrayNew (I)Ljava/util/List; e f coldfusion/runtime/CFPage h
 i g 1 k   m 0 o 

         q 	component s CFIDE.adminapi.accessmanager u CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; w x
 i y java {  coldfusion.server.ServiceFactory } getSecurityService  java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 
		        
		 � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � 
		
		 � GETSECURABLECFTAGS � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � getSecurableCFTags � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 i � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 i � _boolean (D)Z � �
 � � 
			 � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDTAG � _autoscalarize � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 

	
	
		 � CONTEXTS � _resolve � �
  � � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 i � throw � setCalledName � 
 �  SANDBOX_NOT_FOUND 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; �
  	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;
 i	 GETTAGPERMISSIONPOSITION getTagPermissionPosition C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  *- LCase &(Ljava/lang/String;)Ljava/lang/String;
 i concat!
 �" Left '(Ljava/lang/String;I)Ljava/lang/String;$%
 i& RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;()
 i* _Object (I)Ljava/lang/Object;,-
 �. (Ljava/lang/Object;D)D0
 1 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;34
 i5 _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V78
 9 _LhsResolve; �
 < _arraySetAt>8
 ? 
	A setDisabledCFTagC metaData Ljava/lang/Object;EF	 G voidI falseK &coldfusion/runtime/AttributeCollectionM nameO accessQ publicS outputU 
returntypeW hintY %Disables use of a tag in the sandbox.[ 
Parameters] HINT_ HSpecifies the sandbox directory for which the specified tag is disabled.a NAMEc 	directorye REQUIREDg truei ([Ljava/lang/Object;)V k
Nl Specifies the tag to disable.n tagp 	getOutput ()Ljava/lang/String; this /Lcfsecurity2ecfc129082770$funcSETDISABLEDCFTAG; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw31 !Lcoldfusion/tagext/lang/ThrowTag; throw32 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   EF   	 rs w   "     L�   v       tu   xs w   "     J�   v       tu   ys w   "     D�   v       tu   z{ w  � 	   \-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:*P� J� N:-R� VX� ^-`� V-M� d-� j� ^-`� Vl� ^-`� Vn� ^-`� V
p� ^-`� Vn� ^-r� V-R� d-tv� z� ^-`� V-S� d--S� d-|~� z�� �� �� ^-�� V-U� d--� ��� �Y�S� �W-�� V-W� d-W� d-W� d-�� ��-� �� �� �� �-� �YPS� �� �� ��� ��� O-�� V-� �� �� �:-X� d��-Ӷ ָ �� ڶ �� �� � �-`� V-� V-]� d--� �Y�S� �-� � �� �-� �YDS� �� �� ��� H-� �� �� �:-_� d����-� ָ ��� ڶ �� �� � �-c� d--� �Y�S� �� �Y-� �SY-� �S��
� ^-g� d-� �-� �Y-� �SY-� �S� �� ^---� �� �� �Y0S�� ^-� ���� 9� ^-� � �-n� d-� � �� �#� ^� �-p� d-� � ��'��� �-r� d-� � ��+� ^
-s� d-� � �-s� d-� � �� � ��/� ^-
� ��2�� B-x� d-� � �-x� d-� � �� �6� ^-� � ��#� ^---� �� �� �Y0S-� �:-� �Y�S�=� �Y-� �SY-� �S-� �@-B� V�   v   �   \tu    \|}   \~F   \�   \��   \��   \�F   \ ? @   \ �   \ � 	  \ "� 
  \ '�   \ )�   \ +�   \ -�   \ /�   \ 1�   \ 3�   \ C�   \ O�   \��   \�� �  � � H �L �L �L �L �M �M �M �M �M �N �N �N �N �O �O �O �O �P �P �P �P �Q �Q �Q �Q �R RR �R �R �RS$S&S#SSSSGUUUFUFUFUyWyWyWyWyW�W�WyWyWyW�X�X�XyW	]]	]	]$]$]]]]a_a_>_>^]�c�c�c�c�c�c�c�c�g�g�g�g�g�g�h�h�h�hkkmmm'n'n7n7n7n7n'n'n%nlSpSp\pSp`ptrtr}r~rtrtrkr�s�s�s�s�s�s�s�s�s�u�u�x�x�x�x�x�x�x�x�x�y�y�y�y�y�y�v�ukpSpSpk~~~~#�8�A�H�H�#�\ �  w   �     ��� ų ǻNY� �YPSYDSYRSYTSYVSYLSYXSYJSYZSY	\SY
^SY� �Y�NY� �Y`SYbSYdSYfSYhSYjS�mSY�NY� �Y`SYoSYdSYqSYhSYjS�mSS�m�H�   v       �tu   �� w         �   v       tu   �� w   -     � �YDSYPS�   v       tu   �� w   "     �H�   v       tu      w   #     *� 
�   v       tu        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc *cfsecurity2ecfc129082770$funcISRAMALLFILES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    pageContext #Lcoldfusion/runtime/NeoPageContext; " #	  $ getOut ()Ljavax/servlet/jsp/JspWriter; & ' javax/servlet/jsp/PageContext )
 * ( parent Ljavax/servlet/jsp/tagext/Tag; , -	  . PATH 0 getVariable  (I)Lcoldfusion/runtime/Variable; 2 3 %coldfusion/runtime/ArgumentCollection 5
 6 4 _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; 8 9
  : 
			 < _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V > ?
  @ _setCurrentLineNo (I)V B C
  D _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; F G
  H _String &(Ljava/lang/Object;)Ljava/lang/String; J K coldfusion/runtime/Cast M
 N L Trim &(Ljava/lang/String;)Ljava/lang/String; P Q coldfusion/runtime/CFPage S
 T R set (Ljava/lang/Object;)V V W coldfusion/runtime/Variable Y
 Z X ram:///- \ _compare '(Ljava/lang/Object;Ljava/lang/String;)D ^ _
  ` _Object (Z)Ljava/lang/Object; b c
 N d _boolean (Ljava/lang/Object;)Z f g
 N h ram://- j true l false n 	
	 p java/lang/String r isRAMAllFiles t metaData Ljava/lang/Object; v w	  x boolean z &coldfusion/runtime/AttributeCollection | java/lang/Object ~ name � access � private � output � 
returntype � hint � -Checks if the argument is ram:///- or ram://- � 
Parameters � HINT � "specifies the path to the ram file � NAME � path � REQUIRED � ([Ljava/lang/Object;)V  �
 } � 	getOutput ()Ljava/lang/String; this ,Lcfsecurity2ecfc129082770$funcISRAMALLFILES; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       v w   	  � �  �   !     o�    �        � �    � �  �   !     {�    �        � �    � �  �   !     u�    �        � �    � �  �  �     �-� +� � :+� !,� :	-� %� +:-� /:*1� 7� ;:
-=� A
-Ķ E-
� I� O� U� [-
� I]� a�~�� eY� i� W-
� Ik� a�~�� e� i� 	m�� o�-q� A�    �   p    � � �     � � �    � � w    � � �    � � �    � � �    � � w    � , -    �  �    �  � 	   � 0 � 
 �   j  � K� K� K� K� B� Z� `� Z� Z� v� |� v� v� Z� �� �� �� �� �� �� �� �� �� Z� B�  �   �   �     �� }Y� Y�SYuSY�SY�SY�SYoSY�SY{SY�SY	�SY
�SY� Y� }Y� Y�SY�SY�SY�SY�SYmS� �SS� �� y�    �       � � �    � �  �         �    �        � �    � �  �   (     
� sY1S�    �       
 � �    � �  �   "     � y�    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc $cfsecurity2ecfc129082770$funcGETUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    USER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % U ' SECURITY ) ACCESSMANAGER + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/PageContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 USERNAME ; string = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; E F
  G 

		  I _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V K L
  M _setCurrentLineNo (I)V O P
  Q 	StructNew !()Lcoldfusion/util/FastHashtable; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 	component _ CFIDE.adminapi.accessmanager a CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; c d
 W e java g  coldfusion.server.ServiceFactory i getSecurityService k java/lang/Object m _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; o p
  q _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; s t
  u checkRootAdminUser w arguments.username y 	IsDefined (Ljava/lang/String;)Z { |
 W } getAuthorizedUser  String � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � JavaCast 8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; � �
 W � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � PASSWORD � DESCRIPTION � 	SANDBOXES � SERVICES � EXPOSEDSERVICES � 
user.roles � ROLES � _autoscalarize � t
  � getAuthorizedUsers � 
	  � getUser � metaData Ljava/lang/Object; � �	  � struct � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � :Get all users or get single user by specifying a username. � 
Parameters � HINT � -Specifies the username of the user to return. � TYPE � NAME � username � REQUIRED � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this &Lcfsecurity2ecfc129082770$funcGETUSER; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �    -� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:-� 0� 6:-� ::*<>� D� H:-J� N-)� R� X� ^
-*� R� X� ^-+� R-`b� f� ^-,� R--,� R-hj� fl� n� r� ^-.� R--� vx� n� rW-0� R-z� ~�
-2� R--� v�� nY-2� R-�-� �Y<S� �� �S� r� ^-� �Y<S-
� �Y<S� �� �-� �Y�S-
� �Y�S� �� �-� �Y�S-
� �Y�S� �� �-� �Y�S-
� �Y�S� �� �-� �Y�S-
� �Y�S� �� �-8� R-�� ~� !-� �Y�S-
� �Y�S� �� �-� ��� -A� R--� v�� n� r�-�� N�    �   �    � �     � �    � �    � �    � �    � �    � �    7 8     �     � 	   " � 
   ' �    ) �    + �    ; �  �   A % c) l) l) r* {* {* �+ �+ �+ �+ �+ �, �, �, �, �, �, �. �. �. �0 �0 �22222 �2 �2 �2)3)33G4G4;4e5e5Y5�6�6w6�7�7�7�8�8�:�:�:�9�8�=�=�= �1�A�A�A�A�@�@ �0 c(  �   �   �     �� �Y� nY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� nY� �Y� nY�SY�SY�SY>SY�SY�SY�SY�S� �SS� г ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� �Y<S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcDELETEDISABLEDDATASOURCE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % 	DSNEXISTS ' WEBAPP ) PERMISSIONS + ADDWILDCARD - APOS / SECURITY 1 ACCESSMANAGER 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M 
DATASOURCE O 
		 Q _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V S T
  U / W set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ _setCurrentLineNo (I)V _ `
  a ArrayNew (I)Ljava/util/List; c d coldfusion/runtime/CFPage f
 g e   i 1 k true m false o 	component q CFIDE.adminapi.accessmanager s CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; u v
 g w java y  coldfusion.server.ServiceFactory { getSecurityService } java/lang/Object  _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 g � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 g � <<All Datasources>> � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � ArrayLen (Ljava/lang/Object;)I � �
 g � _Object (I)Ljava/lang/Object; � �
 � � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � #coldfusion.sql.DataSourcePermission � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � _int �
 � ArrayDeleteAt (Ljava/util/List;I)Z
 g _double (Ljava/lang/Object;)D	
 �
 (D)Ljava/lang/Object; �
 � (Ljava/lang/Object;D)D �
  
PERMISSION 	StructNew !()Lcoldfusion/util/FastHashtable;
 g _set '(Ljava/lang/String;Ljava/lang/Object;)V
  _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
  TARGET  *" ACTION$ ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z&'
 g( '(Ljava/lang/Object;Ljava/lang/Object;)D �*
 + _boolean (Ljava/lang/Object;)Z-.
 �/ GETDISABLEDDATASOURCES1 � �
 3 getDisabledDatasources5 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;78
 9 (D)Z-;
 �< _LhsResolve> �
 ? _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VAB
 C 
	E deleteDisabledDatasourceG metaData Ljava/lang/Object;IJ	 K voidM &coldfusion/runtime/AttributeCollectionO nameQ accessS publicU outputW 
returntypeY hint[ LRemoves a data source from the list of disabled data sources in the sandbox.] 
Parameters_ HINTa ESpecifies the sandbox directory for which the data source is enabled.c NAMEe 	directoryg REQUIREDi ([Ljava/lang/Object;)V k
Pl 0Specifies the name of the data source to enable.n 
datasourcep 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcDELETEDISABLEDDATASOURCE; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw43 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   IJ   	 rs w   !     p�   v       tu   xs w   "     N�   v       tu   ys w   "     H�   v       tu   z{ w  
    �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:*P� J� N:-R� VX� ^-�� b-� h� ^j� ^
l� ^n� ^p� ^-�� b-rt� x� ^-�� b--�� b-z|� x~� �� �� ^-�� b--� ��� �Y�S� �W-�� b--� �Y�S� �-� �� �� �-� �YDS� �� �� ��� G-� �� �� �:-�� b�� ���-˶ θ ��� Ҷ �� �� ݙ �-�� b--� �Y�S� �� �Y-� �SY-� �S� � � ^-� �YPS� �� ��� �
-¶ b-� �� � � ^� Z---
� �� �� �� �Y�S� ��� ��� !-Ƕ b--� �� -
� ���W
-
� ��g�� ^-
� ������--˶ b��-� �Y�S��-� �Y!S#�-� �Y%Sj�-϶ b--� �� -� ζ)W�|
l� ^� {---
� �� �� �� �Y�S� ��� ��� B---
� �� �� �� �Y!S� �-� �YPS� ��,�~�� 
n� ^
-
� ��c�� ^-
� �-Զ b-� �� � �,�t|���d-� ��0�� u--� b��-� �Y�S��-� �Y!S-� �YPS� ��-� �Y%Sj�-� b--� �� -� ζ)W-�� b-�� b-2�46-� �Y-� �YDS� �S�:� =�� 
n� ^
l� ^� k---
� �� �� �� �Y�S� ��� ��� 2---
� �� �� �� �Y!S� �#� ��� 
p� ^
-
� ��c�� ^-
� �-� b-� �� � �,�t|���t-� ��0� i--� b��-� �Y�S��-� �Y!S#�-� �Y%Sj�-� b--� �� -� ζ)W-� �Y�S�@� �Y-� �SY-� �S-� ��D-F� V�   v   �   �tu    �|}   �~J   ��   ���   ���   ��J   � ? @   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � C�   � O�   ��� �  � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������$�3�$�$�?�?�#�#�#�|�|�Y�Y�#��������������������������������	�%�7�7�@�@�6�6�6�	�	�O�O�X�O�O�M�`�f���z�z�o�����������������������������������������������%��B�B�@�@�������I�I�R�I�I�G�Z�g�g�g�Z�������������������������������������������������� ������A�A�?�?��H�H�F�T�P�l�z�v�����������v�v�P�P�����������������������F������		�00"==FF<<� ��������Q
f
o
v
v
Q
 �� �  w   �     ��� �� ��PY� �YRSYHSYTSYVSYXSYpSYZSYNSY\SY	^SY
`SY� �Y�PY� �YbSYdSYfSYhSYjSYnS�mSY�PY� �YbSYoSYfSYqSYjSYnS�mSS�m�L�   v       �tu   �� w         �   v       tu   �� w   -     � �YDSYPS�   v       tu   �� w   "     �L�   v       tu      w   #     *� 
�   v       tu        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc )cfsecurity2ecfc129082770$funcGETENABLERDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBX " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % SUCCESS ' ACCESSMANAGER ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	  - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/PageContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	  7 
		 9 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V ; <
  = false ? set (Ljava/lang/Object;)V A B coldfusion/runtime/Variable D
 E C   G 

         I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Y Z
  [ checkRootAdminUser ] java/lang/Object _ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; a b
  c checkAdminRoles e 
standalone g *coldfusion/runtime/TransientVariableHolder i &(Lcoldfusion/runtime/NeoPageContext;)V  k
 j l 
			 n GetPageContext %()Lcoldfusion/runtime/NeoPageContext; p q
 W r 
getRequest t getRealPath v /WEB-INF x _String &(Ljava/lang/Object;)Ljava/lang/String; z { coldfusion/runtime/Cast }
 ~ | web.xml � concat &(Ljava/lang/String;)Ljava/lang/String; � � java/lang/String �
 � � 
FileExists (Ljava/lang/String;)Z � �
 W � 
				 � PATH � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � java/lang/StringBuffer � SERVER � 
COLDFUSION � ROOTDIR � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  �  
 � � FS � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 ` � 

			 � path � 	IsDefined � �
 W � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/LockTag � cflock � name � 
rdsservlet � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setName � 
 � � type � 	EXCLUSIVE � setType � 
 � � timeout � 30 � _int (Ljava/lang/String;)I � �
 ~ � :(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I � �
  � 
setTimeout � L
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 
					 � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag  cffile action READ 	setAction 
	 file setFile 
 variable webxml setVariable 
 
addnewline No _boolean �
 ~ :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z �
  setAddnewline! �
" _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z$%
 & WEBXML( XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;*+
 W, I. 10 web-app2 servlet-mapping4 _arrayGetAt D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object;67
 8 _Map #(Ljava/lang/Object;)Ljava/util/Map;:;
 ~< XMLNAME> 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �@
 A _compare '(Ljava/lang/Object;Ljava/lang/String;)DCD
 E XMLCHILDRENG _resolveI@
 J 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;6L
 M XMLTEXTO 
RDSServletQ trueS _double (Ljava/lang/Object;)DUV
 ~W _Object (D)Ljava/lang/Object;YZ
 ~[ ArrayLen (Ljava/lang/Object;)I]^
 W_ (I)Ljava/lang/Object;Ya
 ~b '(Ljava/lang/Object;Ljava/lang/Object;)DCd
 e doAfterBodyg �
 �h doEndTagj �
 �k doCatch (Ljava/lang/Throwable;)Vmn
 �o 	doFinallyq 
 �r 
						t WRITEv outputx � Z
 z ToString| {
 W} \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �
 � 	setOutput� B
� unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t0 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� CFCATCH� bind� �
 j� unbind� 
 j� 
	� getEnableRDS� metaData Ljava/lang/Object;��	 � boolean� &coldfusion/runtime/AttributeCollection� access� public� 
returntype� hint� Checks whether RDS is enabled.� 
Parameters� ([Ljava/lang/Object;)V �
�� 	getOutput this +Lcfsecurity2ecfc129082770$funcGETENABLERDS; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t13 ,Lcoldfusion/runtime/TransientVariableHolder; lock14  Lcoldfusion/tagext/lang/LockTag; mode14 file13 Lcoldfusion/tagext/io/FileTag; t17 t18 t19 Ljava/lang/Throwable; t20 t21 lock16 mode16 file15 t25 t26 t27 t28 t29 t30 #Lcoldfusion/runtime/AbortException; t31 Ljava/lang/Exception; __cfcatchThrowable0 t33 t34 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �   ��   ��   	 � � �   !     @�   �       ��   � � �   "     ��   �       ��   � � �   "     ��   �       ��   �� �  � 
 #  �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:-� .� 4:-� 8:-:� >@� F-:� >
H� F-J� >- �� N-PR� X� F-:� >- �� N--� \^� `� dW-:� >- �� N--� \f� `YhS� dW-:� >� jY-� .� m:-o� >- �� N-- �� N-- �� N-- �� N-� su� `� dw� `YyS� d� �� �� �� ]-�� >-�- �� N-- �� N-- �� N-� su� `� dw� `YyS� d� �� �� �-o� >� �- �� N-� �Y-�� �Y�SY�S� �� � �-�� �� � ��� �-�� �� � ��� �-�� �� � ��� �� �� �� m-�� >-�� �Y-�� �Y�SY�S� �� � �-�� �� � ��� �-�� �� � ��� �-�� �� � ��� �� �� �-o� >-�� >- �� N-�� ���-�� >-� �� �� �:- �� N���� ֶ ����� ֶ ���� �� � �� �� �Y6��-�� >-� �� ��:- �� N� ֶ
-�� �� � ֶ� ֶ�� �#� ��'� :�b�6�-�� >
- �� N--)� �� �-� F-/1� �� �--
� `Y3SY5SY-/� �S�9�=� �Y?S�B5�F�� a---
� `Y3SY5SY-/� �S�9�=� �YHS�K1�N�=� �YPS�BR�F�� T� F� Q-/-/� ��Xc�\� �-/� �- �� N-
� `Y3SY5S�9�`�c�f�t|���-�� >�i��S�l� :� &���� � #:�p� � :� �:�s�-�� >-� �� �� �:- �� N���� ֶ ����� ֶ ���� �� � �� �� �Y6� �-u� >-� �� ��:- �� Nw� ֶ
-�� �� � ֶy- �� N--
�{�~������ �#� ��'� :� K� ��-�� >�i��[�l� :� &� ��� � #:�p� � :� �:�s�-o� >� -�� >@� F-o� >-o� >� b� h:�:��:  �����   5           � ��-�� >@� F-o� >� �� � :!� !�:"���"-:� >-�{�-�� >� !�?��E{�������?��E{���������������������������������������������� �?�E{��������� �?�E{��������� �?m�E{m���m���m��m�jm�mrm� �  ` #  ���    ���   ���   ���   ���   ���   ���   � 5 6   � �   � � 	  � "� 
  � '�   � )�   ���   ���   ��.   ���   ���   ���   ���   ���   ���   ���   ��.   ���   ���   ���   ���   ���   ���   ���   ���   ���    ��� !  ��� "�  v �  � J � L � L � J � Y � [ � [ � Y � h � r � t � q � q � h � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �H �@ �] �8 �8 �f �8 �8 �. �. �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � � �! �& �& �2 �� �� �� �� �� � � �U �T �� �� �� �� �� �� � � �� �W �W �V �V �M �k �k �g �~ �� �� �t �� �� �� �� �� �� �� �� � � � � � �� �� �t �t � � � � � � �$ �; �A �2 �2 �2 �$ �g �M �e �� �� �� �- �? �? �_ �_ �^ �^ �w � �� �� �� �� �� �� �T �T �T �R �R � � �� �� �� � �  �   �     z�� ĳ ��� ĳ �� �Y�S����Y� `Y�SY�SY�SY�SYySY@SY�SY�SY�SY	�SY
�SY� `S�����   �       z��   � � �         �   �       ��   �� �   #     � ��   �       ��   �� �   "     ���   �       ��      �   #     *� 
�   �       ��        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 4cfsecurity2ecfc129082770$funcGETUSESINGLERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 

         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q java S  coldfusion.server.ServiceFactory U getSecurityService W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkAdminRoles c :coldfusion.serversettings,coldfusion.serversettingssummary e false g getUseSingleRdsPassword i 
	 k java/lang/String m getUseSingleRDSPassword o metaData Ljava/lang/Object; q r	  s boolean u &coldfusion/runtime/AttributeCollection w name y access { public } output  
returntype � hint � ^Indicates whether or not a user is is required in addition to a password for logging in to RDS � 
Parameters � ([Ljava/lang/Object;)V  �
 x � 	getOutput ()Ljava/lang/String; this 6Lcfsecurity2ecfc129082770$funcGETUSESINGLERDSPASSWORD; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       q r   	  � �  �   !     h�    �        � �    � �  �   !     v�    �        � �    � �  �   !     p�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-j� @-BD� J� P-R� <
-k� @--k� @-TV� JX� Z� ^� P-R� <-m� @--� bd� ZYfSYhS� ^W-n� @--
� bj� Z� ^�-l� <�    �   z    � � �     � � �    � � r    � � �    � � �    � � �    � � r    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   b   h B j K j M j J j J j B j ] k m k o k l k e k e k ] k � m � m � m � m � m � n � n � n � n � l  �   �   r     T� xY� ZYzSYpSY|SY~SY�SYhSY�SYvSY�SY	�SY
�SY� ZS� �� t�    �       T � �    � �  �         �    �        � �    � �  �   #     � n�    �        � �    � �  �   "     � t�    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcGETUSERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 

         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q java S  coldfusion.server.ServiceFactory U getSecurityService W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkAdminRoles c :coldfusion.serversettings,coldfusion.serversettingssummary e false g isRDSSecurityEnabled i 
	 k java/lang/String m getUseRDSPassword o metaData Ljava/lang/Object; q r	  s &coldfusion/runtime/AttributeCollection u name w access y public { output } hint  HChecks whether a Remote Development Services (RDS) password is required. � 
Parameters � ([Ljava/lang/Object;)V  �
 v � 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcGETUSERDSPASSWORD; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       q r     � �  �   !     h�    �        � �    � �  �   !     p�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-V� @-BD� J� P-R� <
-W� @--W� @-TV� JX� Z� ^� P-R� <-Y� @--� bd� ZYfSYhS� ^W-Z� @--
� bj� Z� ^�-l� <�    �   z    � � �     � � �    � � r    � � �    � � �    � � �    � � r    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   b   U B V K V M V J V J V B V ] W m W o W l W e W e W ] W � Y � Y � Y � Y � Y � Z � Z � Z � Z � X  �   �   f     H� vY
� ZYxSYpSYzSY|SY~SYhSY�SY�SY�SY	� ZS� �� t�    �       H � �    � �  �         �    �        � �    � �  �   #     � n�    �        � �    � �  �   "     � t�    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcGETALLEXPOSEDSERVICES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 

         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q java S  coldfusion.server.ServiceFactory U getSecurityService W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkRootAdminUser c getAllExposedServices e 
	 g java/lang/String i metaData Ljava/lang/Object; k l	  m &coldfusion/runtime/AttributeCollection o name q 
Parameters s ([Ljava/lang/Object;)V  u
 p v getName ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcGETALLEXPOSEDSERVICES; LocalVariableTable Code runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       k l     x y  }   !     f�    |        z {    ~   }  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-*� @-BD� J� P-R� <
-+� @--+� @-TV� JX� Z� ^� P-R� <-,� @--� bd� Z� ^W-R� <--� @--
� bf� Z� ^�-h� <�    |   z    � z {     � � �    � � l    � � �    � � �    � � �    � � l    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   Z  ) B* L* N* K* K* B* ^+ p+ r+ o+ g+ g+ ^+ �, �, �, �, �- �- �- �-  �   }   C     %� pY� ZYrSYfSYtSY� ZS� w� n�    |       % z {    � �  }   #     � j�    |        z {    � �  }   "     � n�    |        z {       }   #     *� 
�    |        z {        ����  - 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 6cfsecurity2ecfc129082770$funcGETDEFAULTSECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBAPP " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 	DIRECTORY 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; ? @
  A 

         C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G _setCurrentLineNo (I)V I J
  K 	component M CFIDE.adminapi.accessmanager O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y 
		 ] / _ _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a b
  c checkAdminRoles e java/lang/Object g coldfusion.sandboxsecurity i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m PERMISSIONS o ArrayNew (I)Ljava/util/List; q r
 U s _set '(Ljava/lang/String;Ljava/lang/Object;)V u v
  w 
PERMISSION y 	StructNew !()Lcoldfusion/util/FastHashtable; { |
 U } java/lang/String  CLASS � java.io.SerializablePermission � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � TARGET � * � ACTION �   � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _List $(Ljava/lang/Object;)Ljava/util/List; � � coldfusion/runtime/Cast �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 U � java.util.PropertyPermission � 
read,write � java.net.NetPermission � java.sql.SQLPermission �  java.security.SecurityPermission � java.net.SocketPermission � _factor0 j(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;Lcoldfusion/runtime/CFPage;)Ljava/lang/Object; � �
  � connect,resolve � java.lang.RuntimePermission � #java.lang.reflect.ReflectPermission � #coldfusion.sql.DataSourcePermission � &coldfusion.tagext.GenericTagPermission � %coldfusion.runtime.FunctionPermission � java.io.FilePermission � _factor1 � �
  � <<ALL FILES>> � read,write,execute,delete � coldfusion.vfs.VFilePermission � ram:///- � ram:/// � 'coldfusion.tagext.lang.ModulePermission � 
	 � getDefaultSecuritySandbox � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � 1Create the default structure for a blank sandbox. � 
Parameters � HINT � 'Specifies the directory of the sandbox. � NAME � 	directory � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 8Lcfsecurity2ecfc129082770$funcGETDEFAULTSECURITYSANDBOX; LocalVariableTable Code getName __factorParent out Ljavax/servlet/jsp/JspWriter; 
parentPage Lcoldfusion/runtime/CFPage; value LineNumberTable runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance __arguments 'Lcoldfusion/runtime/ArgumentCollection; Lcoldfusion/runtime/Variable; <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   
  � �  �   !     հ    �        � �    � �  �   !     ϰ    �        � �    � �  �      -p-� L-� t� x-z-� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-� L--p� �� �-z� �� �W-z-� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-� L--p� �� �-z� �� �W-z-� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-� L--p� �� �-z� �� �W-z-� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-� L--p� �� �-z� �� �W-z- � L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-$� L--p� �� �-z� �� �W-z-&� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-�    �   4    � �     � 4    � �    �     �   � g  
 
      .	 .	 "	 ?
 ?
 3
 P P D ] ] f f \ \ z z p � � � � � � � � � � � � � � � � � � � � � � � � ""66,HH<YYMjj^ww��vv� � � �!�!�!�"�"�"�#�#�#�$�$�$�$�$�$�&�&�&''�'((	(   �      -� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8� >� B:-D� H-�� L-NP� V� \-^� H
`� \-� L--� df� hYjS� nW*-� �� �*-� �� �-z� �Y�S�� �-z� �Y�Sö �-S� L--p� �� �-z� �� �W-z-V� L� ~� x-z� �Y�SŶ �-z� �Y�SǶ �-z� �Y�Sö �-Z� L--p� �� �-z� �� �W-z-\� L� ~� x-z� �Y�SŶ �-z� �Y�Sɶ �-z� �Y�Sö �-`� L--p� �� �-z� �� �W-z-c� L� ~� x-z� �Y�S˶ �-z� �Y�S�� �-z� �Y�S�� �-g� L--p� �� �-z� �� �W-p� ��-Ͷ H�    �   �    � �        �    �    	    � �    �    3 4    
    
 	   "
 
   '
    7
   R T � R� \� ^� [� [� R� n  p  p  } � | | �Q �Q �Q �R �R �R �S �S �S �S �S �S �V �V �V	W	W �WXXX+Y+YY8Z8ZAZAZ7Z7ZU\U\K\g]g][]x^x^l^�_�_}_�`�`�`�`�`�`�c�c�c�d�d�d�e�e�e�f�f�f�g�g�g�g�g�giii n�    �   �     u� �Y
� hY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� hY� �Y� hY�SY�SY�SY�SY�SY�S� �SS� �� ӱ    �       u � �     �         �    �        � �     �   (     
� �Y8S�    �       
 � �     �   "     � Ӱ    �        � �    � �  �      %-z� �Y�S�� �-*� L--p� �� �-z� �� �W-z-,� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-0� L--p� �� �-z� �� �W-z-2� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-6� L--p� �� �-z� �� �W-z-9� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-=� L--p� �� �-z� �� �W-z-@� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-D� L--p� �� �-z� �� �W-z-G� L� ~� x-z� �Y�S�� �-z� �Y�S�� �-z� �Y�S�� �-K� L--p� �� �-z� �� �W-z-O� L� ~� x-z� �Y�S�� �-�    �   4   % � �    % � 4   % � �   % �    % �   � i ) )  ) * * "* "* * * 6, 6, ,, H- H- <- Y. Y. M. j/ j/ ^/ w0 w0 �0 �0 v0 v0 �2 �2 �2 �3 �3 �3 �4 �4 �4 �5 �5 �5 �6 �6 �6 �6 �6 �6 �9 �9 �9:: �:;;	;&<&<<3=3=<=<=2=2=P@P@F@bAbAVAsBsBgB�C�CxC�D�D�D�D�D�D�G�G�G�H�H�H�I�I�I�J�J�J�K�K�K�K�K�KOOOPPP     �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcGETALLOWEDIPLIST  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 
	         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; S T
  U checkRootAdminUser W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] java _  coldfusion.server.ServiceFactory a getSecurityService c getAllowedIPList e 
	 g java/lang/String i metaData Ljava/lang/Object; k l	  m false o &coldfusion/runtime/AttributeCollection q name s access u public w output y hint { XReturns a list of client IP addresses that should be allowed to invoke exposed services. } 
Parameters  ([Ljava/lang/Object;)V  �
 r � 	getOutput ()Ljava/lang/String; this /Lcfsecurity2ecfc129082770$funcGETALLOWEDIPLIST; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       k l     � �  �   !     p�    �        � �    � �  �   !     f�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-w� @-BD� J� P-R� <-y� @--� VX� Z� ^W-R� <
-{� @--{� @-`b� Jd� Z� ^� P-R� <-|� @--
� Vf� Z� ^�-h� <�    �   z    � � �     � � �    � � l    � � �    � � �    � � �    � � l    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   Z  v Bw Lw Nw Kw Kw Bw fy ey ey ex ~{ �{ �{ �{ �{ �{ ~{ �| �| �| �|  �   �   f     H� rY
� ZYtSYfSYvSYxSYzSYpSY|SY~SY�SY	� ZS� �� n�    �       H � �    � �  �         �    �        � �    � �  �   #     � j�    �        � �    � �  �   "     � n�    �        � �       �   #     *� 
�    �        � �        ����  - 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcDELETEALLOWEDIPADDRESSES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    IPADDR " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % IPLIST ' SECURITY ) ACCESSMANAGER + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/PageContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 DEBUGIP ; string = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; E F
  G 
		 I _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V K L
  M _setCurrentLineNo (I)V O P
  Q ArrayNew (I)Ljava/util/List; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [   _ 	
     		 a 	component c CFIDE.adminapi.accessmanager e CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; g h
 W i _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; k l
  m checkRootAdminUser o java/lang/Object q _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; s t
  u java w  coldfusion.server.ServiceFactory y getSecurityService { 
			 } _autoscalarize  l
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 W � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � &(Ljava/lang/String;)Ljava/lang/Object;  �
  � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 W � POS � getAllowedIPList � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 W � _Object (I)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � setAllowedIPList � _int (Ljava/lang/Object;)I � �
 � � ListDeleteAt '(Ljava/lang/String;I)Ljava/lang/String; � �
 W � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen � �
 W � _compare '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � 
	 � java/lang/String � deleteAllowedIPAddresses � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � aRemoves an IP address from client IP addresses that should be allowed to invoke exposed services. � 
Parameters � HINT � List of IP addresses to remove. � TYPE � NAME � debugip � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcDELETEALLOWEDIPADDRESSES; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   	  � �  �   !     ԰    �        � �    � �  �   !     Ұ    �        � �    � �  �   !     ̰    �        � �      �  � 
   -� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:-� 0� 6:-� ::*<>� D� H:-J� N-�� R-� X� ^-J� N
`� ^-b� N-�� R-df� j� ^-J� N-�� R--� np� r� vW-J� N-�� R--�� R-xz� j|� r� v� ^-~� N-�� R-� �� �� �� ^-��� �� �
-�� R--�� �� �� �� �� ^-�-�� R-�� R--� n�� r� v� �-
� �� �� �� �� �-�� �� �� K-�� R--� n�� rY-�� R-�� R--� n�� r� v� �-�� �� �� �S� vW-�-�� �� �c� �� �-�� �-�� R-� �� ¸ �� ��t|��� -ȶ N�    �   �    � �        �         	
    �    7 8         	   " 
   '    )    +    ;   . K � c� m� l� l� c� |� ~� ~� |� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����#� � � � ��G�F�F�Y�Y�F�F�5�k��������������~�~�~�k������������������������� ��    �   �     �� �Y� rY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� rY� �Y� rY�SY�SY�SY>SY�SY�SY�SY�S� �SS� �� б    �       � � �     �         �    �        � �     �   (     
� �Y<S�    �       
 � �     �   "     � а    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcGETALLADMINROLES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 

         7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? 	component A CFIDE.adminapi.accessmanager C CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; E F coldfusion/runtime/CFPage H
 I G set (Ljava/lang/Object;)V K L coldfusion/runtime/Variable N
 O M 
		 Q java S  coldfusion.server.ServiceFactory U getSecurityService W java/lang/Object Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkRootAdminUser c getAllAdminRoles e 
	 g java/lang/String i metaData Ljava/lang/Object; k l	  m &coldfusion/runtime/AttributeCollection o name q 
Parameters s ([Ljava/lang/Object;)V  u
 p v getName ()Ljava/lang/String; this /Lcfsecurity2ecfc129082770$funcGETALLADMINROLES; LocalVariableTable Code runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       k l     x y  }   !     f�    |        z {    ~   }  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <-#� @-BD� J� P-R� <
-$� @--$� @-TV� JX� Z� ^� P-R� <-%� @--� bd� Z� ^W-R� <-&� @--
� bf� Z� ^�-h� <�    |   z    � z {     � � �    � � l    � � �    � � �    � � �    � � l    � 3 4    �  �    �  � 	   � " � 
   � ' �  �   Z  " B# L# N# K# K# B# ^$ p$ r$ o$ g$ g$ ^$ �% �% �% �% �& �& �& �&  �   }   C     %� pY� ZYrSYfSYtSY� ZS� w� n�    |       % z {    � �  }   #     � j�    |        z {    � �  }   "     � n�    |        z {       }   #     *� 
�    |        z {        ����  - 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc /cfsecurity2ecfc129082770$funcGETSECURABLECFTAGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ATAGS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 	
		
	 	 7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? ArrayNew (I)Ljava/util/List; A B coldfusion/runtime/CFPage D
 E C set (Ljava/lang/Object;)V G H coldfusion/runtime/Variable J
 K I 

         M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T
 E U 
		 W _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Y Z
  [ checkAdminRoles ] java/lang/Object _ coldfusion.sandboxsecurity a _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; c d
  e _autoscalarize g Z
  h _List $(Ljava/lang/Object;)Ljava/util/List; j k coldfusion/runtime/Cast m
 n l 	CFContent p ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z r s
 E t CFDirectory v CFFile x CFObject z 
CFRegistry | 	CFExecute ~ CFFtp � CFMail � CFLog � CFCollection � CFCookie � CFHTTP � CFHTTPParam � CFIndex � CFLDAP � CFInvoke � 
CFSchedule � CFSearch � CFTransaction � CFPOP � CFQuery � CFInsert � CFUpdate � CFStoredProc � CFGridUpdate � 
CFDocument � CFReport � CFThread � CFImage � CFFeed � CFExchangeConnection � CFExchangeCalendar � CFExchangeMail � CFExchangeContact � CFExchangeTask � CFPdf � CFDBInfo � CFObjectCache � CFSharepoint � CFExcel � CFCache � CFIMAP � CFFileUpload � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 E � 
	 � java/lang/String � getSecurableCFTags � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � #Returns an array of securable tags. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 1Lcfsecurity2ecfc129082770$funcGETSECURABLECFTAGS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ݰ    �        � �    � �  �   !     װ    �        � �    � �  �  	�    �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <
-߶ @-� F� L-N� <-� @-PR� V� L-X� <-� @--� \^� `YbS� fW-X� <-� @--
� i� oq� uW-� @--
� i� ow� uW-� @--
� i� oy� uW-� @--
� i� o{� uW-� @--
� i� o}� uW-� @--
� i� o� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW-�� @--
� i� o�� uW- � @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-	� @--
� i� o�� uW-
� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� o�� uW-� @--
� i� oö uW-� @--
� i� oŶ uW-� @--
� i� oǶ uW-� @--
� i� oɶ uW-� @-
� i� o�͸ �W-
� i�-Ӷ <�    �   z   � � �    � � �   � � �   � � �   � �    �   � �   � 3 4   �    �  	  � " 
  � '   v � B� L� K� K� B� [� e� g� d� d� [� � �� ~� ~� ~� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � �	�	� �� ���� � ���.�.�7�7�-�-�E�E�N�N�D�D�\�\�e�e�[�[�s�s�|�|�r�r�����������������������������������������������������������������������������+�+�4�4�*�*�B�B�K�K�A�A�Y�Y�b�b�X�X�p�p�y�y�o�o�������������������������������������������������� � � � � � ����((11''??HH>>VV__UUmmvvll�	�	�	�	�	�	�
�
�
�
�
�
��������������������  ��%%..$$<<EE;;SS\\RRjjssii��������� ��    �   f     H� �Y
� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� `S� � ۱    �       H � �     �         �    �        � �   	
  �   #     � հ    �        � �     �   "     � ۰    �        � �       �   #     *� 
�    �        � �        ����  -  
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc :cfsecurity2ecfc129082770$funcGETFUNCTIONPERMISSIONPOSITION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    PERMISSIONS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % APOS ' SECURITY ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	  - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/PageContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	  7 WEBAPP 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 	DIRECTORY E 
		 G _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V I J
  K _setCurrentLineNo (I)V M N
  O ArrayNew (I)Ljava/util/List; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y 0 ] java _  coldfusion.server.ServiceFactory a CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; c d
 U e getSecurityService g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m 

		 o java/lang/String q CONTEXTS s _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; u v
  w _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; } ~
   	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 U � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � &(Ljava/lang/String;)Ljava/lang/Object; y �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; } �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � %coldfusion.runtime.FunctionPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 U � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � 
	 � getFunctionPermissionPosition � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � 4Returns the index in the function permissions array. � 
Parameters � HINT � DSpecifies the name of the web application using the secured sandbox. � NAME � webapp � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � @Specifies the sandbox directory for which the index is returned. � 	directory � 	getOutput ()Ljava/lang/String; this <Lcfsecurity2ecfc129082770$funcGETFUNCTIONPERMISSIONPOSITION; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �      -� +� � :+� !,� :	+#� &:
+(� &:+*� &:-� .� 4:-� 8:*:� @� D:*F� @� D:-H� L
-� P-� V� \-H� L^� \-H� L-	� P--	� P-`b� fh� j� n� \-p� L
-� P--� rYtS� x� jY-� |SY-� |S� �� �� \-��� �� H--
-�� �� �� �� rY�S� ��� ��� -�� �� \-�-�� �� �c� �� �-�� �-� P-
� |� �� �� ��t|����-� |�-�� L�    �   �    � �     � �    � �    � �    � �    � �    � �    5 6     �     � 	   " � 
   ' �    ) �    9 �    E �  �   � 5  j t s s j � � � � �	 �	 �	 �	 �	 �	 �	 � � � � � � � � � � �**((66?663GTTTG �nnn �  �   �   �     �� �Y
� jY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� jY� �Y� jY�SY�SY�SY�SY�SY�S� �SY� �Y� jY�SY�SY�SY�SY�SY�S� �SS� ߳ ��    �       � � �    � �  �         �    �        � �    � �  �   -     � rY:SYFS�    �        � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 0cfsecurity2ecfc129082770$funcDELETEDISABLEDCFTAG  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    	TARGETPOS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) AENABLEDCFFUNCTIONS + ARRAYPOS - 
TARGETTEMP / TARGET 1 SECURITY 3 ACCESSMANAGER 5 pageContext #Lcoldfusion/runtime/NeoPageContext; 7 8	  9 getOut ()Ljavax/servlet/jsp/JspWriter; ; < javax/servlet/jsp/PageContext >
 ? = parent Ljavax/servlet/jsp/tagext/Tag; A B	  C 	DIRECTORY E getVariable  (I)Lcoldfusion/runtime/Variable; G H %coldfusion/runtime/ArgumentCollection J
 K I _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; M N
  O TAG Q 
		
		
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
  W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] 
		 a _setCurrentLineNo (I)V c d
  e ArrayNew (I)Ljava/util/List; g h coldfusion/runtime/CFPage j
 k i GETDISABLEDCFTAGS m _get &(Ljava/lang/String;)Ljava/lang/Object; o p
  q getDisabledCFTags s java/lang/Object u _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; w x
  y 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; { |
  } _List $(Ljava/lang/Object;)Ljava/util/List;  � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 k � 1 �   � 

         � 	component � CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 k � java �  coldfusion.server.ServiceFactory � getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � o x
  � checkAdminRoles � coldfusion.sandboxsecurity � 
		
		 � GETSECURABLECFTAGS � getSecurableCFTags � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 k � _boolean (D)Z � �
 � � 
			 � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDTAG � w p
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � CONTEXTS � _resolve � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 k � throw � setCalledName � 
 �  SANDBOX_NOT_FOUND 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; �
  	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;
 k	 GETTAGPERMISSIONPOSITION getTagPermissionPosition C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  Left '(Ljava/lang/String;I)Ljava/lang/String;
 k *- RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;!"
 k# _Object (I)Ljava/lang/Object;%&
 �' _int (Ljava/lang/Object;)I)*
 �+ ListDeleteAt-
 k. ListLen (Ljava/lang/String;)I01
 k2 (Ljava/lang/Object;D)D4
 5 concat &(Ljava/lang/String;)Ljava/lang/String;78
 �9 _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V;<
 = _LhsResolve? �
 @ _arraySetAtB<
 C 
	E deleteDisabledCFTagG metaData Ljava/lang/Object;IJ	 K voidM falseO &coldfusion/runtime/AttributeCollectionQ nameS accessU publicW outputY 
returntype[ hint] <Removes a tag from the list of disabled tags in the sandbox._ 
Parametersa HINTc =Specifies the sandbox directory for which the tag is enabled.e NAMEg 	directoryi REQUIREDk truem ([Ljava/lang/Object;)V o
Rp ,Specifies the name of the tag to be enabled.r tagt 	getOutput ()Ljava/lang/String; this 2Lcfsecurity2ecfc129082770$funcDELETEDISABLEDCFTAG; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw33 !Lcoldfusion/tagext/lang/ThrowTag; throw34 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   IJ   	 vw {   "     P�   z       xy   |w {   "     N�   z       xy   }w {   "     H�   z       xy   ~ {  0 	   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:-� :� @:-� D:*F� L� P:*R� L� P:-T� XZ� `-b� X-�� f-� l� `-b� X-�� f-�� f-n� rt-� vY-� zS� ~� �� �� `-b� X�� `-b� X�� `-b� X
�� `-b� X�� `-�� X-�� f-��� �� `-b� X-�� f--�� f-��� ��� v� �� `-b� X-�� f--� ��� vY�S� �W-�� X-�� f-�� f-�� f-�� r�-� v� ~� �� �-� �YRS� �� �� ��� ��� O-�� X-� �� �� �:-�� f��-ض ڸ �� ޶ �� �� � �-b� X-b� X-�� f--� �Y�S� �-� z� �� �-� �YFS� �� �� ��� H-� �� �� �:-�� f����-� ڸ ��� ޶ �� �� � �-�� f--� �Y�S� �� vY-� zSY-� zS��
� `-�� f-� r-� vY-� zSY-� zS� ~� `---� z�� �� �Y2S�� `-� z��� � �-�� f-� z� �� ��� �-�� f-� z� ��$� `
-�� f-� z� �-� z� �� ��(� `-�� f-� z� �-
� z�,�/� `-�� f-� z� ��3�(�6�� � `� % � `-� z� �-� z� ��:� `� � `---� z�� �� �Y2S-� z�>-� �Y�S�A� vY-� zSY-� zS-� z�D-F� X�   z   �   �xy    ���   ��J   ���   ���   ���   ��J   � A B   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � 5�   � E�   � Q�   ���   ��� �  � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ����������)�+�+�)�8�B�D�A�A�8�T�f�h�e�]�]�T�������������������������������������K�Z�K�K�f�f�J�J�J���������J������������������� �����3�/�/�-�N�T�i�i�r�i�v�����������������������������������������������������������
��������
�
�����1�1�/�/�/�i�i�N�;�P�P�7�Y�n�w�~�~�Y�J� �  {   �     �ĸ ʳ ̻RY� vYTSYHSYVSYXSYZSYPSY\SYNSY^SY	`SY
bSY� vY�RY� vYdSYfSYhSYjSYlSYnS�qSY�RY� vYdSYsSYhSYuSYlSYnS�qSS�q�L�   z       �xy   �� {         �   z       xy   �� {   -     � �YFSYRS�   z       xy   �� {   "     �L�   z       xy      {   #     *� 
�   z       xy        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc +cfsecurity2ecfc129082770$funcSETRDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 PASSWORD 7 string 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q setRdsPassword s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y 
	 { setRDSPassword } metaData Ljava/lang/Object;  �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � Sets the RDS password. � 
Parameters � HINT � RDS password. � TYPE � NAME � password � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this -Lcfsecurity2ecfc129082770$funcSETRDSPASSWORD; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1        �     � �  �   !     ��    �        � �    � �  �   !     ~�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J- �� N-PR� X� ^-`� J
- �� N-- �� N-bd� Xf� h� l� ^-`� J- �� N--� pr� h� lW- �� N--
� pt� hY-� vY8S� zS� lW-|� J�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   Z   ~ S � ] � _ � \ � \ � S � o � � � � � � � x � x � o � � � � � � � � � � � � � � � � �  �   �   �     �� �Y
� hY�SY~SY�SY�SY�SY�SY�SY�SY�SY	� hY� �Y� hY�SY�SY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� vY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcDISABLERDSSERVLET  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBX " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % SUCCESS ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 
		 7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; true = set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A   E 

		 G *coldfusion/runtime/TransientVariableHolder I &(Lcoldfusion/runtime/NeoPageContext;)V  K
 J L 

			
			 N _setCurrentLineNo (I)V P Q
  R GetPageContext %()Lcoldfusion/runtime/NeoPageContext; T U coldfusion/runtime/CFPage W
 X V 
getRequest Z java/lang/Object \ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ^ _
  ` getRealPath b /WEB-INF d _String &(Ljava/lang/Object;)Ljava/lang/String; f g coldfusion/runtime/Cast i
 j h web.xml l concat &(Ljava/lang/String;)Ljava/lang/String; n o java/lang/String q
 r p 
FileExists (Ljava/lang/String;)Z t u
 X v 
				 x PATH z _set '(Ljava/lang/String;Ljava/lang/Object;)V | }
  ~ 
			 � java/lang/StringBuffer � SERVER � 
COLDFUSION � ROOTDIR � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  �  
 � � FS � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 ] � 

			 � path � 	IsDefined � u
 X � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/LockTag � cflock � name � 
rdsservlet � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setName � 
 � � type � 	EXCLUSIVE � setType � 
 � � timeout � 30 � _int (Ljava/lang/String;)I � �
 j � :(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I � �
  � 
setTimeout � Q
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 
					 � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag � cffile � action � READ � 	setAction � 
 � � file � setFile � 
 � � variable � webxml  setVariable 
 � 
addnewline No _boolean	 u
 j
 :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z �
  setAddnewline �
 � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  WEBXML XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;
 X I 1 web-app  servlet-mapping" _arrayGetAt D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object;$%
 & _Map #(Ljava/lang/Object;)Ljava/util/Map;()
 j* XMLNAME, 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �.
 / _compare '(Ljava/lang/Object;Ljava/lang/String;)D12
 3 XMLCHILDREN5 _resolve7.
 8 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;$:
 ; XMLTEXT= 
RDSServlet? _List $(Ljava/lang/Object;)Ljava/util/List;AB
 jC (Ljava/lang/Object;)I �E
 jF ArrayDeleteAt (Ljava/util/List;I)ZHI
 XJ _double (Ljava/lang/Object;)DLM
 jN _Object (D)Ljava/lang/Object;PQ
 jR ArrayLenTE
 XU (I)Ljava/lang/Object;PW
 jX '(Ljava/lang/Object;Ljava/lang/Object;)D1Z
 [ doAfterBody] �
 �^ doEndTag` �
 �a doCatch (Ljava/lang/Throwable;)Vcd
 �e 	doFinallyg 
 �h 
						j WRITEl outputn 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; �p
 q ToStrings g
 Xt \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; �v
 w 	setOutputy @
 �z false| unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;~ coldfusion/runtime/NeoException�
�� t0 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� CFCATCH� bind� }
 J� unbind� 
 J� 
	� disableRDSServlet� metaData Ljava/lang/Object;��	 � boolean� &coldfusion/runtime/AttributeCollection� access� private� 
returntype� hint� 2Disables the servlet that performs RDS processing.� 
Parameters� ([Ljava/lang/Object;)V �
�� 	getOutput this 0Lcfsecurity2ecfc129082770$funcDISABLERDSSERVLET; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; lock18  Lcoldfusion/tagext/lang/LockTag; mode18 file17 Lcoldfusion/tagext/io/FileTag; t16 t17 t18 Ljava/lang/Throwable; t19 t20 lock20 mode20 file19 t24 t25 t26 t27 t28 t29 #Lcoldfusion/runtime/AbortException; t30 Ljava/lang/Exception; __cfcatchThrowable2 t32 t33 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �   ��   ��   	 � � �   "     }�   �       ��   � � �   "     ��   �       ��   � � �   "     ��   �       ��   �� �   
 "  M-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <>� D-8� <
F� D-H� <� JY-� ,� M:-O� <- Ӷ S-- Ӷ S-- Ӷ S-- Ӷ S-� Y[� ]� ac� ]YeS� a� km� s� w� ]-y� <-{- Զ S-- Զ S-- Զ S-� Y[� ]� ac� ]YeS� a� km� s� -�� <� �- ն S-� �Y-�� rY�SY�S� �� k� �-�� �� k� ��� �-�� �� k� ��� �-�� �� k� �m� �� �� w� m-y� <-{� �Y-�� rY�SY�S� �� k� �-�� �� k� ��� �-�� �� k� ��� �-�� �� k� �m� �� �� -�� <-�� <- ٶ S-�� ���-y� <-� �� �� �:- ڶ S���� Ķ ����� Ķ ���Ҹ �� ٶ �� �� �Y6��-� <-� �� �� �:- ۶ S���� Ķ ���-{� �� k� Ķ ���� Ķ����� ��� :���\�-� <
- ݶ S--� �� k�� D-� � �--
� ]Y!SY#SY-� �S�'�+� rY-S�0#�4�� �---
� ]Y!SY#SY-� �S�'�+� rY6S�9�<�+� rY>S�0@�4�� 5- � S--
� ]Y!SY#S�'�D-� ��G�KW� Q--� ��Oc�S� -� �- ޶ S-
� ]Y!SY#S�'�V�Y�\�t|����-y� <�_��4�b� :� &���� � #:�f� � :� �:�i�-� <-� �� �� �:- � S���� Ķ ����� Ķ ���Ҹ �� ٶ �� �� �Y6� �-k� <-� �� �� �:- � S��m� Ķ ���-{� �� k� Ķ ��o- � S--
�r�u�x�{����� ��� :� K� ��-� <�_��a�b� :� &� ��� � #:�f� � :� �:�i�-�� <� -y� <}� D-�� <-�� <� f� l:�:��:�����      9           ���-y� <}� D-�� <� �� � : �  �:!���!-8� <-�r�-�� <� !H�=��1=�7:=�H�L��1L�7:L�=IL�LQL��Hy�Nmy�svy��H��Nm��sv��y������� m����1��7H��Nm��s��� m����1��7H��Nm��s��� m�"��1"�7H"�Nm"�s�"��"�"'"� �  V "  M��    M��   M��   M��   M��   M��   M��   M 3 4   M �   M � 	  M "� 
  M '�   M��   M��   M�   M��   M��   M��   M��   M��   M��   M��   M�   M��   M��   M��   M��   M��   M��   M��   M��   M��   M��    M�� !�  N �  � B � D � D � B � Q � S � S � Q � � � � � � � � � � � � � � � � � | � � � � � � � � � � � � � � � � � � � � � � �6 �6 �B �G �G �S �X �X �d � � � �� �� �� �� �� �� �� �� �� �� �� �} �} �z �z � � | �� �� � �' �6 �w �� �� �� �� �[ �� �� �� �� �� �� �� �� � � � � �4 �J �P �V �@ �q �? �� �� �� �� �� �� �� �� �� �� �� �? �? � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� � � � � �' �� �e �� �� �� �� �� �� � � � � � ` �; �; �; � �  �   �     {�� �� �� �� �� rY�S����Y� ]Y�SY�SY�SY�SYoSY}SY�SY�SY�SY	�SY
�SY� ]S�����   �       {��   � � �         �   �       ��   �� �   #     � r�   �       ��   �� �   "     ���   �       ��      �   #     *� 
�   �       ��        ����  -{ 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 0cfsecurity2ecfc129082770$funcDELETESECUREDFOLDER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    PERMISSIONCLASS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) VFILE + VFSFILEFACTORY - SECURITY / ACCESSMANAGER 1 pageContext #Lcoldfusion/runtime/NeoPageContext; 3 4	  5 getOut ()Ljavax/servlet/jsp/JspWriter; 7 8 javax/servlet/jsp/PageContext :
 ; 9 parent Ljavax/servlet/jsp/tagext/Tag; = >	  ? 	DIRECTORY A getVariable  (I)Lcoldfusion/runtime/Variable; C D %coldfusion/runtime/ArgumentCollection F
 G E _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; I J
  K FOLDER M 
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
  S / U set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y _setCurrentLineNo (I)V ] ^
  _ ArrayNew (I)Ljava/util/List; a b coldfusion/runtime/CFPage d
 e c 	component g CFIDE.adminapi.accessmanager i CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; k l
 e m java o  coldfusion.server.ServiceFactory q getSecurityService s java/lang/Object u _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; w x
  y false {   } coldfusion.vfs.VFSFileFactory  _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � checkIfVFile � _autoscalarize � �
  � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 e � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � _boolean (Ljava/lang/Object;)Z � �
 � � coldfusion.vfs.VFilePermission � getFileObject � getAbsolutePath � _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � java.io.FilePermission � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 e � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � 
  _compare '(Ljava/lang/Object;Ljava/lang/Object;)D
  _Object (Z)Ljava/lang/Object;
 �	 TARGET _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int (Ljava/lang/Object;)I
 � ArrayDeleteAt (Ljava/util/List;I)Z
 e _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object;
 � ArrayLen 
 e! (I)Ljava/lang/Object;#
 �$ _LhsResolve& �
 ' _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V)*
 + 
	- deleteSecuredFolder/ metaData Ljava/lang/Object;12	 3 void5 &coldfusion/runtime/AttributeCollection7 name9 access; public= output? 
returntypeA hintC 1Makes a folder inaccessible to a secured sandbox.E 
ParametersG HINTI ?Specifies the sandbox directory for which a folder is disabled.K NAMEM 	directoryO REQUIREDQ trueS ([Ljava/lang/Object;)V U
8V 9Specifies the path of the folder to be made inaccessible.X folderZ 	getOutput ()Ljava/lang/String; this 2Lcfsecurity2ecfc129082770$funcDELETESECUREDFOLDER; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw46 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   12   	 \] a   !     |�   `       ^_   b] a   "     6�   `       ^_   c] a   "     0�   `       ^_   de a  3    o-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:-� 6� <:-� @:*B� H� L:*N� H� L:-P� TV� \-ն `-� f� \-ֶ `-hj� n� \-׶ `--׶ `-pr� nt� v� z� \|� \
~� \-ڶ `-p�� n� \-۶ `--� ��� vY�S� zW-ݶ `--� ��� vY-� �S� z� \-߶ `--� �Y�S� �-� �� �� �-� �YBS� �� �� ��� G-� �� �� �:-� `�� ���-ɶ ̸ ��� ж �� �� ۙ �-� �� ߙ V
� \-� �YNS-� `--� `--� ��� vY-� �YNS� �S� z�� v� z� � 

� \-� `--� �Y�S� �� vY-� �SY-� �S� � � \-��� �� �---�� ̶ �� �� �Y�S�-
� ���~��
Y� ߙ <W---�� ̶ �� �� �YS�-� �YNS� ���~��
� ߙ !-�� `--� ��-�� ̸�W-�-�� ̸c�� �-�� �-� `-� ��"�%��t|���6-� �Y�S�(� vY-� �SY-� �S-� ��,-.� T�   `   �   o^_    ofg   oh2   oij   okl   omn   oo2   o = >   o p   o p 	  o "p 
  o 'p   o )p   o +p   o -p   o /p   o 1p   o Ap   o Mp   oqr s  � x � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������$�2�#�#��G�V�G�G�b�b�F�F�F�����|�|�F�����������������������!�!������0�E�N�/�/�/�/�&�a�a�^�m�i���i�i�����������i���������������i�i�����������������^�6�K�T�[�[�6� �� t  a   �     ��� �� ��8Y� vY:SY0SY<SY>SY@SY|SYBSY6SYDSY	FSY
HSY� vY�8Y� vYJSYLSYNSYPSYRSYTS�WSY�8Y� vYJSYYSYNSY[SYRSYTS�WSS�W�4�   `       �^_   uv a         �   `       ^_   wx a   -     � �YBSYNS�   `       ^_   yz a   "     �4�   `       ^_      a   #     *� 
�   `       ^_        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcSETDEFAULTFILEPERMISSION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WILDCARDFOUND ' WEBAPP ) NEWDIR + PERMISSIONS - SECURITY / ACCESSMANAGER 1 ST 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M 
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
  S / U set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y _setCurrentLineNo (I)V ] ^
  _ ArrayNew (I)Ljava/util/List; a b coldfusion/runtime/CFPage d
 e c false g 	StructNew !()Lcoldfusion/util/FastHashtable; i j
 e k _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o 1 q 

         s 	component u CFIDE.adminapi.accessmanager w CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; y z
 e { java }  coldfusion.server.ServiceFactory  getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get � n
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 e � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 e � Right '(Ljava/lang/String;I)Ljava/lang/String; � �
 e � \ � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � FILESEP � java.lang.System � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � getProperty � file.separator � concat � �
 � � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � java.io.FilePermission � TARGET � <<ALL FILES>> � _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � true � E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � - � ACTION � read,write,execute,delete � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 e � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � 
 e (I)Ljava/lang/Object; �
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �
  DIRECTORYPERMISSIONEXISTS	 2(Lcoldfusion/runtime/Variable;I)Ljava/lang/Object; m
  m �
  LICENSE getAppServerPlatform APPSERVER_SUNONE 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; �
  ROOT_WEBINF_DIR GetPageContext %()Lcoldfusion/runtime/NeoPageContext;
 e getServletContext getRealPath! WEB-INF# java/lang/StringBuffer%  
&' FS) append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;+,
&- classes/ toString ()Ljava/lang/String;12
 �3 read5 lib7 _LhsResolve9 �
 : _arraySetAt< �
 = 
	? setDefaultFilePermissionA metaData Ljava/lang/Object;CD	 E voidG &coldfusion/runtime/AttributeCollectionI nameK accessM privateO outputQ 
returntypeS hintU IRemoves the wildcard and sets the permission for only the defined folder.W 
ParametersY HINT[ .Specifies the directory to receive permission.] NAME_ 	directorya REQUIREDc ([Ljava/lang/Object;)V e
Jf 	getOutput this 7Lcfsecurity2ecfc129082770$funcSETDEFAULTFILEPERMISSION; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1      CD   	 h2 l   !     h�   k       ij   m2 l   "     H�   k       ij   n2 l   "     B�   k       ij   op l  : 	   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:-P� TV� \-P� T-r� `-� f� \-P� Th� \-P� T-t� `� l� \-P� T-� p� \-P� T
r� \-t� T-w� `-vx� |� \-P� T-x� `--x� `-~�� |�� �� �� \-P� T-y� `--� ��� �Y�S� �W-P� T-|� `--� �Y�S� �� �Y-� pSY-� pS� �� �� \-�� `-�� `-� p� �� �� ��� ��~�� �Y� �� 0W-�� `-�� `-� p� �� �� �V� ��~�� �� �� -�� `-� p� �� �� \� R-�-�� `-~�� |� �-�� `-� p� �� �-�� `--�� ��� �Y�S� �� �� Ͷ \
r� \� �---
� p� и �� �Y�S� �ܸ ��� �---
� p� и �� �Y�S� �� ��� �---
� p� и �� �Y�S-� p� �� \-�� `� l� \-� �Y�Sܶ �-� �Y�S-� p� �� Ͷ �-� �Y�S� �-�� `--� p� �-� p� �W
-
� p� �c� �� \-
� p-�� `-� p����t|����
r� \� p---
� p� и �� �Y�S� �ܸ ��� =---
� p� и �� �Y�S� �-� p��~�� -
� ç 7-
 �� �X-
� p-�� `-� p����t|���o-� p� ��� �Y� �� W-
�� ��� �� �� �-�� `� l� \-� �Y�Sܶ �-� �Y�S-� p� �-� �Y�S� �-�� `--� p� �-� p� �W-�� `� l� \-� �Y�Sܶ �-� �Y�S-� p� �� Ͷ �-� �Y�S� �-�� `--� p� �-� p� �W-�� `--� �� �� �-� �YS���~��o--¶ `--¶ `--¶ `-� � �� �"� �Y$S� �� �-Ķ `� l� \-� �Y�Sܶ �-� �Y�S�&Y-�� ��(-*�� ��.0�.�4� �-� �Y�S6� �-ȶ `--� p� �-� p� �W-ʶ `� l� \-� �Y�Sܶ �-� �Y�S�&Y-�� ��(-*�� ��.0�.-*�� ��.�.�4� �-� �Y�S6� �-ζ `--� p� �-� p� �W-ж `� l� \-� �Y�Sܶ �-� �Y�S�&Y-�� ��(-*�� ��.8�.�4� �-� �Y�S6� �-Զ `--� p� �-� p� �W-ֶ `� l� \-� �Y�Sܶ �-� �Y�S�&Y-�� ��(-*�� ��.8�.-*�� ��.�.�4� �-� �Y�S6� �-ڶ `--� p� �-� p� �W-� �Y�S�;� �Y-� pSY-� pS-� p�>-@� T�   k   �   �ij    �qr   �sD   �tu   �vw   �xy   �zD   � ? @   � {   � { 	  � "{ 
  � '{   � ){   � +{   � -{   � /{   � 1{   � 3{   � C{ |  jZ o �q �q �q �q �r �r �r �r �r �s �s �s �s �t �t �t �t �u �u �u �u �v �v �v �v �w �w �w �w �w �wx x"xxxxxCyQyByByByj||�|i|i|i|i|`|����������������������������������������������$�&�#�#��7�7�7�7�K�Y�J�J�7�7�.�����j�j�h�v�r���������������������������������������0�0�$�=�=�F�F�<�<�������r�r�R�R�[�R�R�P�c�p�p�p�c�h������������������������������������������������������(�(�(�(�>�>�>�>�(�\�\�S�n�n�b���s�������������������������������������������������
�
���	�	�S�(�%�$�6�$�n�f���^�^�S������������������������������������������������-�-�!�B�B�O�O�\�b�b�o�>�>�2�����z�����������������������������������������	�	����� � ���3�3�*�E�E�9�Z�Z�g�g�t�z�z���V�V�J�������������������S�$�������������`z }  l   �     ��JY� �YLSYBSYNSYPSYRSYhSYTSYHSYVSY	XSY
ZSY� �Y�JY� �Y\SY^SY`SYbSYdSY�S�gSS�g�F�   k       �ij   ~ l         �   k       ij   �� l   (     
� �YDS�   k       
ij   �� l   "     �F�   k       ij      l   #     *� 
�   k       ij        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 0cfsecurity2ecfc129082770$funcDELETESECUREDIPPORT  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    I " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) SUCCESS + ADDWILDCARD - SECURITY / ACCESSMANAGER 1 ST 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M IP O PORT Q get (I)Ljava/lang/Object; S T
 I U PORTTYPE W single Y put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; [ \
 I ] 
		 _ _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V a b
  c / e set (Ljava/lang/Object;)V g h coldfusion/runtime/Variable j
 k i true m _setCurrentLineNo (I)V o p
  q ArrayNew (I)Ljava/util/List; s t coldfusion/runtime/CFPage v
 w u 	StructNew !()Lcoldfusion/util/FastHashtable; y z
 w { 1 } 	component  CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 w � java �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � �
  � _arrayGetAt � \
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 w � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 w � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � java.net.SocketPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � TARGET  java/lang/StringBuffer  
 : append ,(Ljava/lang/String;)Ljava/lang/StringBuffer;	

 
FORMATPORT � �
  
formatPort 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;
  toString ()Ljava/lang/String;
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �
  _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int (Ljava/lang/Object;)I!"
 �# ArrayDeleteAt (Ljava/util/List;I)Z%&
 w' _double (Ljava/lang/Object;)D)*
 �+ _Object (D)Ljava/lang/Object;-.
 �/ ArrayLen1"
 w2- T
 �4 false6 _boolean (Ljava/lang/Object;)Z89
 �: _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V<=
 > *@ ACTIONB connect,resolveD ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZFG
 wH _LhsResolveJ �
 K _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VMN
 O 
	Q deleteSecuredIPPortS metaData Ljava/lang/Object;UV	 W &coldfusion/runtime/AttributeCollectionY name[ access] public_ outputa hintc ?Removes a specified IP address and port from restricted status.e 
Parametersg HINTi ESpecifies the sandbox directory for which the restriction is removed.k NAMEm 	directoryo REQUIREDq ([Ljava/lang/Object;)V s
Zt  Specifies the target IP address.v Specifies the target port.x �Specifies the port type:<ul><li>single - Single port</li><li>higher - The specified port and higher</li><li>lower - The specified port and lower</li><li>range - Specified range of ports</li></ul>z portType| DEFAULT~ 	getOutput this 2Lcfsecurity2ecfc129082770$funcDELETESECUREDIPPORT; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw51 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   UV    � �   "     7�   �       ��   � �   "     T�   �       ��   �� �  f 
   -� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:*P� J� N:*R� J� N:� V� XZ� ^W� J:-`� df� ln� l-w� r-� x� l-x� r� |� l
~� ln� l-{� r-��� �� l-|� r--|� r-��� ��� �� �� l-~� r--� ��� �Y�S� �W-�� r--� �Y�S� �-� �� �� �-� �YDS� �� �� ��� G-� �� �� �:-�� rͶ ���-ض ۸ �͸ ߶ �� �� � �-�� r--� �Y�S� �� �Y-� �SY-� �S� �� � l
~� l� �---
� �� �� �� �Y�S� ��� ��� �---
� �� �� �� �YS� ��Y-� �� ���-�� r-�-� �Y-� �SY-� �S�� �����~�� !-�� r--� �� -
� ��$�(W
-
� ��,c�0� l-
� �-�� r-� ��3�5��t|���
~� l� G---
� �� �� �� �Y�S� ��� ��� 7� l� =
-
� ��,c�0� l-
� �-�� r-� ��3�5��t|����-� ��;� U-� �Y�S��?-� �YSA�?-� �YCSE�?-�� r--� �� -� ��IW-� �Y�S�L� �Y-� �SY-� �S-� ��P-R� d�   �   �   ��    ��   �V   ��   ��   ��   �V    ? @    �    � 	   "� 
   '�    )�    +�    -�    /�    1�    3�    C�    O�    Q�    W�   �� �  V � o �s �u �u �u �v �v �v �w �w �w �w �x �x �x �y �y �y �z �z �z �{{{{{| |"||||;~I~:~:~X�g�X�X�s�s�W�W�W���������W�������������������	���/�=�9�Z�Z�f�s�����s�s�V�9���������������9�9�������������������������	������*�6�6�4�<�4���A�A�J�A�A�?�R�_�_�_�R��y���������������������������������y������������� �t �  �  K    -�� ó ŻZY
� �Y\SYTSY^SY`SYbSY7SYdSYfSYhSY	� �Y�ZY� �YjSYlSYnSYpSYrSYnS�uSY�ZY� �YjSYwSYnSYPSYrSYnS�uSY�ZY� �YjSYySYnSYRSYrSYnS�uSY�ZY� �YjSY{SYnSY}SYSYZSYrSY7S�uSS�u�X�   �      -��   �� �         �   �       ��   �� �   7     � �YDSYPSYRSYXS�   �       ��   �� �   "     �X�   �       ��      �   #     *� 
�   �       ��        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcENABLERDSSERVLET  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBX " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % SUCCESS ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 
		 7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; true = set (Ljava/lang/Object;)V ? @ coldfusion/runtime/Variable B
 C A   E 

		 G *coldfusion/runtime/TransientVariableHolder I &(Lcoldfusion/runtime/NeoPageContext;)V  K
 J L 
			 N _setCurrentLineNo (I)V P Q
  R GetPageContext %()Lcoldfusion/runtime/NeoPageContext; T U coldfusion/runtime/CFPage W
 X V 
getRequest Z java/lang/Object \ _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; ^ _
  ` getRealPath b /WEB-INF d _String &(Ljava/lang/Object;)Ljava/lang/String; f g coldfusion/runtime/Cast i
 j h web.xml l concat &(Ljava/lang/String;)Ljava/lang/String; n o java/lang/String q
 r p 
FileExists (Ljava/lang/String;)Z t u
 X v 
				 x PATH z _set '(Ljava/lang/String;Ljava/lang/Object;)V | }
  ~ java/lang/StringBuffer � SERVER � 
COLDFUSION � ROOTDIR � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  �  
 � � FS � _autoscalarize &(Ljava/lang/String;)Ljava/lang/Object; � �
  � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � wwwroot � WEB-INF � toString ()Ljava/lang/String; � �
 ] � 	
		
			 � path � 	IsDefined � u
 X � 
				
				 � DISABLERDSSERVLET � _get � �
  � disableRDSServlet � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � $class$coldfusion$tagext$lang$LockTag Ljava/lang/Class; coldfusion.tagext.lang.LockTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/LockTag � cflock � name � 
rdsservlet � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � setName � 
 � � type � 	EXCLUSIVE � setType � 
 � � timeout � 30 � _int (Ljava/lang/String;)I � �
 j � :(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I � �
  � 
setTimeout � Q
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 
					 � "class$coldfusion$tagext$io$FileTag coldfusion.tagext.io.FileTag � � �	  � coldfusion/tagext/io/FileTag � cffile � action � READ � 	setAction 
 � file setFile 
 � variable	 webxml setVariable 
 � 
addnewline No _boolean u
 j :(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z �
  setAddnewline �
 � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  WEBXML! XmlParse 0(Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;#$
 X% LEN' web-app) _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;+,
 - _Map #(Ljava/lang/Object;)Ljava/util/Map;/0
 j1 XMLCHILDREN3 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �5
 6 ArrayLen (Ljava/lang/Object;)I89
 X: _Object (D)Ljava/lang/Object;<=
 j> xmlChildren@ 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; �B
 C _Xml 0(Ljava/lang/Object;)Lcoldfusion/xml/XmlNodeList;EF
 jG servlet-mappingI 
XmlElemNew L(Lcoldfusion/xml/XmlNodeList;Ljava/lang/String;)Lcoldfusion/xml/XmlNodeList;KL
 XM _arraySetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)VOP
 Q D(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;)Ljava/lang/Object;+S
 T _LhsResolveV5
 W 1Y servlet-name[ :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)VO]
 ^ 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;+`
 a XMLTEXTc 
RDSServlete _structSetAtg]
 h 2j url-patternl /CFIDE/main/ide.cfmn doAfterBodyp �
 �q doEndTags �
 �t doCatch (Ljava/lang/Throwable;)Vvw
 �x 	doFinallyz 
 �{ WRITE} output ToString� g
 X� \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object; ��
 � 	setOutput� @
 �� false� 

			
			� unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable;�� coldfusion/runtime/NeoException�
�� t0 [Ljava/lang/String; Any���	 � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I��
�� CFCATCH� bind� }
 J� unbind� 
 J� 
	� enableRDSServlet� metaData Ljava/lang/Object;��	 � boolean� &coldfusion/runtime/AttributeCollection� access� private� 
returntype� hint� 1Enables the servlet that performs RDS processing.� 
Parameters� ([Ljava/lang/Object;)V �
�� 	getOutput this /Lcfsecurity2ecfc129082770$funcENABLERDSSERVLET; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; lock22  Lcoldfusion/tagext/lang/LockTag; mode22 I file21 Lcoldfusion/tagext/io/FileTag; t16 t17 t18 Ljava/lang/Throwable; t19 t20 lock24 mode24 file23 t24 t25 t26 t27 t28 t29 #Lcoldfusion/runtime/AbortException; t30 Ljava/lang/Exception; __cfcatchThrowable3 t32 t33 LineNumberTable java/lang/Throwable� !coldfusion/runtime/AbortException� java/lang/Exception� <clinit> 	getAccess getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �   ��   ��   	 � � �   "     ��   �       ��   � � �   "     ��   �       ��   � � �   "     ��   �       ��   �� �   
 "  �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <>� D-8� <
F� D-H� <� JY-� ,� M:-O� <- �� S-- �� S-- �� S-- �� S-� Y[� ]� ac� ]YeS� a� km� s� w� ]-y� <-{- �� S-- �� S-- �� S-� Y[� ]� ac� ]YeS� a� km� s� -O� <� �- �� S-� �Y-�� rY�SY�S� �� k� �-�� �� k� ��� �-�� �� k� ��� �-�� �� k� �m� �� �� w� m-y� <-{� �Y-�� rY�SY�S� �� k� �-�� �� k� ��� �-�� �� k� ��� �-�� �� k� �m� �� �� -O� <-�� <-� S-�� ��b-�� <-� S-�� ��-� ]� �W-�� <-� �� �� �:-� S���� ϶ ����� ϶ ���ݸ �� � �� �� �Y6�a-� <-� �� �� �:-� S�� � ϶�-{� �� k� ϶�
� ϶����� �� � :����-� <
-
� S--"� �� k�&� D-(-� S--
*�.�2� rY4S�7�;�c�?� -
� ]Y*SYASY-(� �S-� S--
�D�HJ�N�R--
� ]Y*SYASY-(� �S�U�2� rY4S�X� ]YZS-� S--
�D�H\�N�_---
� ]Y*SYASY-(� �S�U�2� rY4S�XZ�b�2� rYdSf�i--
� ]Y*SYASY-(� �S�U�2� rY4S�X� ]YkS-� S--
�D�Hm�N�_---
� ]Y*SYASY-(� �S�U�2� rY4S�Xk�b�2� rYdSo�i-y� <�r����u� :� &���� � #:�y� � :� �:�|�-y� <-� �� �� �:-� S���� ϶ ����� ϶ ���ݸ �� � �� �� �Y6� �-� <-� �� �� �:-� S��~� ϶�-{� �� k� ϶��-� S--
�D����������� �� � :� K� ��-y� <�r��a�u� :� &� ��� � #:�y� � :� �:�|�-O� <� -y� <�� D-O� <-�� <� f� l:�:��:�����      9           ���-y� <�� D-O� <� �� � : �  �:!���!-8� <-�D�-�� <� !h�����������h���������������� ��`�(��(�"%(�`�7��7�"%7�(47�7<7� m�z���z���z��z�"wz� m����������"w� m��������������"w��z������� �  V "  ���    ���   ���   ���   ���   ���   ���   � 3 4   � �   � � 	  � "� 
  � '�   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���   ���    ��� !�  � �  � B � D � D � B � Q � S � S � Q � � � � � � � � � � � � � � � � � | � � � � � � � � � � � � � � � � � � � � � � �6 �6 �B �G �G �S �X �X �d � � � �� � � � � � � � � � � } } z z  � | ���8GV�����{	
	


�
($$$$B$$SY_ooxnnJ����������������+17!Xddmcc!���w���v�	0?N��������s]][[S����� ` ���� �  �   �     {�� �� ��� �� �� rY�S����Y� ]Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� ]S�����   �       {��   � � �         �   �       ��   �� �   #     � r�   �       ��   �� �   "     ���   �       ��      �   #     *� 
�   �       ��        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcISLOGINUSERIDREQUIRED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
		 5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = java ?  coldfusion.server.ServiceFactory A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
  O set (Ljava/lang/Object;)V Q R coldfusion/runtime/Variable T
 U S _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
  Y isAdminUserIdRequired [ 
	 ] java/lang/String _ isLoginUserIdRequired a metaData Ljava/lang/Object; c d	  e false g &coldfusion/runtime/AttributeCollection i name k access m public o output q hint s �Checks whether or not a user id is required in addition to a password in order to login. If this returns true, a user id must be passed to the login function in addition to a password. u 
Parameters w ([Ljava/lang/Object;)V  y
 j z 	getOutput ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcISLOGINUSERIDREQUIRED; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d     | }  �   !     h�    �        ~     � }  �   !     b�    �        ~     � �  �  @     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-.� >--.� >-@B� HJ� L� P� V-6� :-/� >--
� Z\� L� P�-^� :�    �   p    � ~      � � �    � � d    � � �    � � �    � � �    � � d    � 1 2    �  �    �  � 	   � " � 
 �   2   - : . J . L . I . B . B . : . l / k / k / k /  �   �   f     H� jY
� LYlSYbSYnSYpSYrSYhSYtSYvSYxSY	� LS� {� f�    �       H ~     � �  �         �    �        ~     � �  �   #     � `�    �        ~     � �  �   "     � f�    �        ~        �   #     *� 
�    �        ~         ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcSETSECUREDFOLDER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    PERMISSIONCLASS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' ACT ) ADDNEWFOLDER + PERMISSIONS - VFILE / SECURITY 1 ACCESSMANAGER 3 VFSFILEFACTORY 5 FILEPOS 7 ST 9 pageContext #Lcoldfusion/runtime/NeoPageContext; ; <	  = getOut ()Ljavax/servlet/jsp/JspWriter; ? @ javax/servlet/jsp/PageContext B
 C A parent Ljavax/servlet/jsp/tagext/Tag; E F	  G 	DIRECTORY I getVariable  (I)Lcoldfusion/runtime/Variable; K L %coldfusion/runtime/ArgumentCollection N
 O M _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; Q R
  S FOLDER U get (I)Ljava/lang/Object; W X
 O Y FILEREAD [ true ] put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; _ `
 O a 	FILEWRITE c FILEEXECUTE e 
FILEDELETE g 
		 i _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V k l
  m / o set (Ljava/lang/Object;)V q r coldfusion/runtime/Variable t
 u s _setCurrentLineNo (I)V w x
  y ArrayNew (I)Ljava/util/List; { | coldfusion/runtime/CFPage ~
  } 	StructNew !()Lcoldfusion/util/FastHashtable; � �
  � 0 �   � false � java � coldfusion.vfs.VFSFileFactory � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
  � 	component � CFIDE.adminapi.accessmanager �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkIfVFile � _autoscalarize � �
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt � `
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
  � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
   TARGET <<ALL FILES>> _set '(Ljava/lang/String;Ljava/lang/Object;)V
  _boolean (Ljava/lang/Object;)Z

 � coldfusion.vfs.VFilePermission getFileObject getAbsolutePath _structSetAt E(Lcoldfusion/runtime/Variable;[Ljava/lang/Object;Ljava/lang/Object;)V
  ram:///- java.io.FilePermission _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  _Object (Z)Ljava/lang/Object; !
 �" ISRAMALLFILES$ � �
 & isRAMAllFiles( 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;*+
 , I. 10 C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �2
 3 CLASS5 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �7
 8 '(Ljava/lang/Object;Ljava/lang/Object;)D:
 ; _List $(Ljava/lang/Object;)Ljava/util/List;=>
 �? _int (Ljava/lang/Object;)IAB
 �C ArrayDeleteAt (Ljava/util/List;I)ZEF
 G _double (Ljava/lang/Object;)DIJ
 �K (D)Ljava/lang/Object; M
 �N ArrayLenPB
 Q  X
 �S readU ,W 
ListAppend J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;YZ
 [ write] execute_ deletea ACTIONc _arraySetAte
 f ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Zhi
 j (Ljava/lang/Object;D)Dl
 m _LhsResolveo �
 p :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Ver
 s 
	u setSecuredFolderw metaData Ljava/lang/Object;yz	 { void} &coldfusion/runtime/AttributeCollection name� access� public� output� 
returntype� hint� 2Makes a folder accessible for the secured sandbox.� 
Parameters� HINT� @Specifies the sandbox directory for which the folder is enabled.� NAME� 	directory� REQUIRED� ([Ljava/lang/Object;)V �
�� 9Specifies the directory path of the folder to be enabled.� folder� Allow read permission.� fileRead� DEFAULT� Allow write permission.� 	fileWrite� Allow execute permission.� fileExecute� Allow delete permission.� 
fileDelete� 	getOutput ()Ljava/lang/String; this /Lcfsecurity2ecfc129082770$funcSETSECUREDFOLDER; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw45 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   yz   	 �� �   !     ��   �       ��   �� �   "     ~�   �       ��   �� �   "     x�   �       ��   �� �  2    	2-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:+8� &:+:� &:-� >� D:-� H:*J� P� T:*V� P� T:� Z� \^� bW� P:� Z� d^� bW� P:� Z� f^� bW� P:� Z� h^� bW� P:-j� np� v->� z-� �� v-?� z� �� v�� v�� v^� v�� v
�� v-E� z-��� �� v-G� z-��� �� v-H� z--H� z-��� ��� �� �� v-K� z--� ��� �Y-� �S� �� v-M� z--� ��� �Y�S� �W-O� z--� �Y�S� �-� �� �� �-� �YJS� �� Ŷ ��� G-� �� �� �:-Q� zݶ ���-� � �ݸ � �� �� �� �-U� z--� �Y�S� �� �Y-� �SY-� �S� ��� v-�	-� ��� c
� v-� �YVS-Z� z--Z� z--� �� �Y-� �YVS� �S� �� �� ��-�	� 
� v-� �YVS� ���~�#Y�� 7W-c� z-%�')-� �Y-� �YVS� �S�-���#��6-/1�	�---/� �4� �� �Y6S�9-
� ��<�~�� �-� �Y�� >W-j� z-%�')-� �Y---/� �4� �� �YS�9S�-�� %-l� z--� ��@-/� �D�HW� K---/� �4� �� �YS�9��� "-p� z--� ��@-/� �D�HW-/-/� �Lc�O�	-/� �-f� z-� ��R�T�<�t|����-� ��� !-w� z-� �� �VX�\� v-� ��� !-y� z-� �� �^X�\� v-� ��� !-{� z-� �� �`X�\� v-� ��� !-}� z-� �� �bX�\� v-� �Y6S-
� ��-� �YS-� �YVS� ��-� �YdS-� ��-/1�	� �---/� �4� �� �Y6S�9-
� ��<�~��#Y�� =W---/� �4� �� �YS�9-� �YVS� ��<�~��#�� $-� �Y-/� �S-� ��g�� v-/-/� �Lc�O�	-/� �-�� z-� ��R�T�<�t|���--� ��� -�� z--� ��@-� ��kW�B-/-�� z-� ��R�T�	�---/� �4� �� �Y6S�9-
� ��<�~�� �-� ��� e-�� z-%�')-� �Y---/� �4� �� �YS�9S�-�� "-�� z--� ��@-/� �D�HW� [---/� �4� �� �YS�9-� �YVS� ��<�~�� "-�� z--� ��@-/� �D�HW-/-/� �Lg�O�	-/� ��n����-� ��� !-�� z-� �� �VX�\� v-� ��� !-�� z-� �� �^X�\� v-� ��� !-�� z-� �� �`X�\� v-� ��� !-�� z-� �� �bX�\� v-� �Y6S-
� ��-� �YS-� �-� �YdS-� ��-�� z--� ��@-� ��kW-� �Y�S�q� �Y-� �SY-� �S-� ��t-v� n�   �     	2��    	2��   	2�z   	2��   	2��   	2��   	2�z   	2 E F   	2 �   	2 � 	  	2 "� 
  	2 '�   	2 )�   	2 +�   	2 -�   	2 /�   	2 1�   	2 3�   	2 5�   	2 7�   	2 9�   	2 I�   	2 U�   	2 [�   	2 c�   	2 e�   	2 g�   	2�� �  �s 5 �8 �9 �:;===!>+>*>*>2?;?;?A@C@C@HAJAJAOBQBQBVCXCXC]D_D_DdEnEpEmEmExG�G�G�G�G�H�H�H�H�H�H�K�K�K�K�K�M�M�M�M�O
O�O�OOO�O�O�OSQSQ0Q0P�O~U�U�U}U}U}U}UtU�V�V�V�W�Y�Y�Y�Z�Z�Z�Z�Z�Z[[[�X$_$_"_"^"^�W*c9c*c*cUcfcUcUcUcUc*c�f�f�f�h�h�h�h�j�j�j�j�j�j�j�jll#l#lllk8n4nRnepepnpnpdpdpdo4n4n�j�i�h�g�f�f�f�f�f|f�f�f�f�f�f�f�v�w�w�w�w�w�w�w�w�v�x�y�yyy�y�y�y�y�xz#{#{,{/{#{#{{{z8|M}M}V}Y}M}M}D}D}8|oob����x����������������������������������:�B�B�1�M�M�K�1�����V�V�`�V�V�R�h�v�v�v�h����������������������d��������������������/�+��[�[�d�d�Z�Z�Z���y�u���u���������������u�u�u����������������������������������������2�2�;�>�2�2�)�)��G�\�\�e�h�\�\�S�S�G�q�������������}�}�q�����������������������������������*c��	�	�	�	���< �  �  �    �͸ ӳ ջ�Y� �Y�SYxSY�SY�SY�SY�SY�SY~SY�SY	�SY
�SY� �Y��Y� �Y�SY�SY�SY�SY�SY^S��SY��Y� �Y�SY�SY�SY�SY�SY^S��SY��Y� �Y�SY�SY�SY�SY�SY^SY�SY�S��SY��Y� �Y�SY�SY�SY�SY�SY^SY�SY�S��SY��Y� �Y�SY�SY�SY�SY�SY^SY�SY�S��SY��Y� �Y�SY�SY�SY�SY�SY^SY�SY�S��SS���|�   �      ���   �� �         �   �       ��   �� �   B     $� �YJSYVSY\SYdSYfSYhS�   �       $��   �� �   "     �|�   �       ��      �   #     *� 
�   �       ��        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcSETUSERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 USEADMINPASSWORD 7 boolean 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q setRDSSecurityEnabled s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y 
	 { setUseRDSPassword } metaData Ljava/lang/Object;  �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � +Specifies whether RDS security is required. � 
Parameters � HINT � Specify true or false. � TYPE � NAME � useAdminPassword � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcSETUSERDSPASSWORD; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1        �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ~�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J-`� N-PR� X� ^-`� J
-a� N--a� N-bd� Xf� h� l� ^-`� J-c� N--� pr� h� lW-d� N--
� pt� hY-� vY8S� zS� lW-|� J�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   Z   ^ S ` \ ` ^ ` [ ` [ ` S ` n a ~ a � a } a v a v a n a � c � c � c � d � d � d � d � b  �   �   �     �� �Y� hY�SY~SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� hY� �Y� hY�SY�SY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� vY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -  
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcGETTAGPERMISSIONPOSITION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    PERMISSIONS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % APOS ' SECURITY ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	  - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/PageContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	  7 WEBAPP 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 	DIRECTORY E 
		 G _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V I J
  K _setCurrentLineNo (I)V M N
  O ArrayNew (I)Ljava/util/List; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y 0 ] java _  coldfusion.server.ServiceFactory a CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; c d
 U e getSecurityService g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m 

		 o java/lang/String q CONTEXTS s _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; u v
  w _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { _arrayGetAt 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; } ~
   	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 U � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � &(Ljava/lang/String;)Ljava/lang/Object; y �
  � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; } �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � CLASS � _resolveAndAutoscalarize 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � &coldfusion.tagext.GenericTagPermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _double (Ljava/lang/Object;)D � �
 � � _Object (D)Ljava/lang/Object; � �
 � � ArrayLen (Ljava/lang/Object;)I � �
 U � (I)Ljava/lang/Object; � �
 � � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � 
	 � getTagPermissionPosition � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � private � output � hint � +Returns the index in the permissions array. � 
Parameters � HINT � DSpecifies the name of the web application using the secured sandbox. � NAME � webapp � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � @Specifies the sandbox directory for which the index is returned. � 	directory � 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcGETTAGPERMISSIONPOSITION; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �      -� +� � :+� !,� :	+#� &:
+(� &:+*� &:-� .� 4:-� 8:*:� @� D:*F� @� D:-H� L
-� P-� V� \-H� L^� \-H� L-� P--� P-`b� fh� j� n� \-p� L
-� P--� rYtS� x� jY-� |SY-� |S� �� �� \-��� �� H--
-�� �� �� �� rY�S� ��� ��� -�� �� \-�-�� �� �c� �� �-�� �-� P-
� |� �� �� ��t|����-� |�-�� L�    �   �    � �     � �    � �    � �    � �    � �    � �    5 6     �     � 	   " � 
   ' �    ) �    9 �    E �  �   � 5 � j� t� s� s� j� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �����*�*�(�(���6�6�?�6�6�3�G�T�T�T�G� ��n�n�n� ��  �   �   �     �� �Y
� jY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� jY� �Y� jY�SY�SY�SY�SY�SY�S� �SY� �Y� jY�SY�SY�SY�SY�SY�S� �SS� ߳ ��    �       � � �    � �  �         �    �        � �    � �  �   -     � rY:SYFS�    �        � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcSETALLOWEDIPADDRESSES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    IPADDR " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % IPLIST ' IPUTILS ) MGR + SECURITY - ACCESSMANAGER / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/PageContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = DEBUGIP ? string A getVariable  (I)Lcoldfusion/runtime/Variable; C D %coldfusion/runtime/ArgumentCollection F
 G E _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; I J
  K 
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
  Q _setCurrentLineNo (I)V S T
  U ArrayNew (I)Ljava/util/List; W X coldfusion/runtime/CFPage Z
 [ Y set (Ljava/lang/Object;)V ] ^ coldfusion/runtime/Variable `
 a _   c 
        	 e 	component g CFIDE.adminapi.accessmanager i CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; k l
 [ m _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
  q checkRootAdminUser s java/lang/Object u _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; w x
  y java {  coldfusion.server.ServiceFactory } getSecurityService  
		
		 � -coldfusion.servicelayer.ExposedServiceManager � getInstance � _autoscalarize � p
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � ListToArray $(Ljava/lang/String;)Ljava/util/List; � �
 [ � I � 1 � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � Trim &(Ljava/lang/String;)Ljava/lang/String; � �
 [ � *coldfusion/runtime/TransientVariableHolder � &(Lcoldfusion/runtime/NeoPageContext;)V  �
 � � VALIDATEDIPADDR � getExpandedIPNValidate � IPVALID � true � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � ex � bind � �
 � � false � unbind � 
 � � _boolean (Ljava/lang/Object;)Z � �
 � � getAllowedIPList � ListFind '(Ljava/lang/String;Ljava/lang/String;)I � �
 [ � (D)Z � �
 � � _Object (Z)Ljava/lang/Object; � �
 � � setAllowedIPList � 
ListAppend 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
 [ � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow  message 	INVALIDIP concat �
 � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;	

  
setMessage 
 � 	hasEndTag (Z)V
 � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z
  _double (Ljava/lang/Object;)D
 � (D)Ljava/lang/Object; �
 � ArrayLen (Ljava/lang/Object;)I 
 [! (I)Ljava/lang/Object; �#
 �$ _compare '(Ljava/lang/Object;Ljava/lang/Object;)D&'
 ( 
	* setAllowedIPAddresses, metaData Ljava/lang/Object;./	 0 void2 &coldfusion/runtime/AttributeCollection4 name6 access8 public: output< 
returntype> hint@ aSets a list of one or more client IP addresses that should be allowed to invoke exposed services.B 
ParametersD HINTF List of IP addresses.H TYPEJ NAMEL debugipN REQUIREDP YesR ([Ljava/lang/Object;)V T
5U 	getOutput ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcSETALLOWEDIPADDRESSES; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t17 ,Lcoldfusion/runtime/TransientVariableHolder; t18 #Lcoldfusion/runtime/AbortException; t19 Ljava/lang/Exception; __cfcatchThrowable7 Ljava/lang/Throwable; t21 t22 throw53 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable !coldfusion/runtime/AbortExceptiony java/lang/Exception{ java/lang/Throwable} <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �   ./   	 WX \   !     ̰   [       YZ   ]X \   "     3�   [       YZ   ^X \   "     -�   [       YZ   _` \  B 
   J-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:-� 4� ::-� >:*@B� H� L:-N� R-�� V-� \� b-N� R
d� b-f� R-�� V-hj� n� b-N� R-�� V--� rt� v� zW-N� R-�� V--�� V-|~� n�� v� z� b-�� R-�� V-|�� n� b-�� V--� r�� v� z� b-�� V-� �� �� �� b-��� ���
-�� V--�� �� �� �� �� b� �Y-� 4� �:-�-�� V--� r�� vY-
� �S� z� �-��� �� U� [:�:� �:� �� Ū      (           �� �-�̶ �� �� � :� �:� ϩ-�� �Y� ә :W-�� V-�� V--� r�� v� z� �-�� �� �� ه� ��� � ә N-�� V--� r�� vY-�� V-�� V--� r�� v� z� �-�� �� �� �S� zW� d-�� �� ��� V-� �� �� �:-�� V�� �-� �� �-
� �� �������� �-�-�� ��c�� �-�� �-�� V-� ��"�%�)�t|���-+� R� ���z���|���~���~��~ [   �   JYZ    Jab   Jc/   Jde   Jfg   Jhi   Jj/   J ; <   J k   J k 	  J "k 
  J 'k   J )k   J +k   J -k   J /k   J ?k   Jlm   Jno   Jpq   Jrs   Jts   Ju/   Jvw x  � q  s� }� |� |� s� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ��������"�!�!�=�=�=�=�4�O�O�L�c�`�`�`�`�W���������������������������u���+�*�*�=�=�*�*�*�*��`�}�|�|�����|�_�_�_��������������������������W��������%�%�%��L��   \   �     �� �Y�S� �� � �5Y� vY7SY-SY9SY;SY=SY�SY?SY3SYASY	CSY
ESY� vY�5Y� vYGSYISYKSYBSYMSYOSYQSYSS�VSS�V�1�   [       �YZ   �� \         �   [       YZ   �� \   (     
� �Y@S�   [       
YZ   �� \   "     �1�   [       YZ      \   #     *� 
�   [       YZ        ����  -` 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcGETDISABLEDCFTAGS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBAPP " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % 	ADISABLED ' ANEWENABLED ) PERMISSIONS + SECURITY - ACCESSMANAGER / AENABLEDTAGS 1 AENABLED 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M 
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
  S / U set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y _setCurrentLineNo (I)V ] ^
  _ ArrayNew (I)Ljava/util/List; a b coldfusion/runtime/CFPage d
 e c 

         g 	component i CFIDE.adminapi.accessmanager k CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; m n
 e o java q  coldfusion.server.ServiceFactory s getSecurityService u java/lang/Object w _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; y z
  { _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; } ~
   checkAdminRoles � Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary � false � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � ~
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 e � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 e � ARRAYPOS � GETTAGPERMISSIONPOSITION � } �
  � getTagPermissionPosition � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � TARGET � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � * � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � Left '(Ljava/lang/String;I)Ljava/lang/String; � �
 e � *- 	_contains '(Ljava/lang/String;Ljava/lang/String;)Z
  RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;
 e	 ListToArray $(Ljava/lang/String;)Ljava/util/List;
 e _List $(Ljava/lang/Object;)Ljava/util/List;
 � 
textnocase asc 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
 e  
	 getDisabledCFTags metaData Ljava/lang/Object; 	 ! &coldfusion/runtime/AttributeCollection# name% access' public) output+ hint- AReturns an array of tags that have been disabled for the sandbox./ 
Parameters1 HINT3 ESpecifies the sandbox directory for which disabled tags are returned.5 NAME7 	directory9 REQUIRED; true= ([Ljava/lang/Object;)V ?
$@ 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcGETDISABLEDCFTAGS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw30 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �        BC G   !     ��   F       DE   HC G   "     �   F       DE   IJ G  � 
   -� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:-P� T
V� \-P� T-� `-� f� \-P� T-� `-� f� \-P� T-� `-� f� \-P� T-� `-� f� \-P� T-� `-� f� \-h� T-� `-jl� p� \-P� T-� `--� `-rt� pv� x� |� \-P� T-� `--� ��� xY�SY�S� |W-P� T-� `--� �Y�S� �-
� �� �� �-� �YDS� �� �� ��� G-� �� �� �:-� `�� ���-Ŷ ȸ ��� ̶ �� �� י �- � `--� �Y�S� �� xY-
� �SY-� �S� ڸ ޶ \-�-#� `-� ��-� xY-
� �SY-� �S� � �-�---� ȶ � �� �Y�S� �� �-� ��� ��� � D-*� `-� ȸ �� �� '-.� `-.� `-� ȸ ��
�� \-2� `-� ���W-� ��-� T�   F   �   DE    KL   M    NO   PQ   RS   T     ? @    U    U 	   "U 
   'U    )U    +U    -U    /U    1U    3U    CU   VW X  � q  � � � � � � � � � � � � � � � � � � � � � � � � � � � � �*<>;33*_mr^^^�������������� ! *      D#S#\#D#D#:#p&l&l&i&�'�'�*�*�*�*�*�*�*�.�.�.�.�.�.�.�.�.�*�*�*�'�2�2�2�2�2�2�3�3�3� Y  G   �     ��� �� ��$Y
� xY&SYSY(SY*SY,SY�SY.SY0SY2SY	� xY�$Y� xY4SY6SY8SY:SY<SY>S�ASS�A�"�   F       �DE   Z[ G         �   F       DE   \] G   (     
� �YDS�   F       
DE   ^_ G   "     �"�   F       DE      G   #     *� 
�   F       DE        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 4cfsecurity2ecfc129082770$funcGETSECURABLECFFUNCTIONS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % 
AFUNCTIONS ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 
		
		 7 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 9 :
  ; _setCurrentLineNo (I)V = >
  ? ArrayNew (I)Ljava/util/List; A B coldfusion/runtime/CFPage D
 E C set (Ljava/lang/Object;)V G H coldfusion/runtime/Variable J
 K I 

         M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T
 E U 
		 W _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Y Z
  [ checkAdminRoles ] java/lang/Object _ coldfusion.sandboxsecurity a _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; c d
  e _autoscalarize g Z
  h _List $(Ljava/lang/Object;)Ljava/util/List; j k coldfusion/runtime/Cast m
 n l S ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z q r
 E s CreateObject(COM) u CreateObject(CORBA) w CreateObject(Java) y CreateObject(WebService) { CreateObject(.NET) } DirectoryExists  
ExpandPath � 
FileExists � GetDirectoryFromPath � GetFileFromPath � GetGatewayHelper � GetProfileString � GetTempDirectory � GetTempFile � GetTemplatePath � GetBaseTemplatePath � SendGatewayMessage � SetProfileString � CachePut � CacheGet � CacheGetMetadata � CacheGetAllIds � CacheRemove � CacheSetProperties � CacheGetProperties � CacheGetSession � GetPageContext � 
textnocase � asc � 	ArraySort 7(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z � �
 E �  
	 � java/lang/String � getSecurableCFFunctions � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � (Returns an array of securable functions. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 6Lcfsecurity2ecfc129082770$funcGETSECURABLECFFUNCTIONS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �    I-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:-8� <- � @-� F� L-N� <
-� @-PR� V� L-X� <-� @--
� \^� `YbS� fW-X� <-� @--� i� op� tW-� @--� i� ov� tW-� @--� i� ox� tW-� @--� i� oz� tW-	� @--� i� o|� tW-
� @--� i� o~� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW-� @--� i� o�� tW- � @--� i� o�� tW-!� @--� i� o�� tW-(� @--� i� o�� tW-*� @-� i� o��� �W-� i�-�� <�    �   z   I � �    I � �   I � �   I � �   I � �   I � �   I � �   I 3 4   I  �   I  � 	  I " � 
  I ' �  �   � � B  L  K  K  B  [ e g d d [  � ~ ~ ~ � � � � � � � � � � � � � � � � � � � � � � � � 	 					 �	 �	

 
 


..77--EENNDD\\ee[[ss||rr����������������������������������++44**BBKKAAYYbbXXppyyoo������������������������� � � � � � �!�!!!�!�!(((((('*'*0*2*'*'*8+8+8+ �  �   �   f     H� �Y
� `Y�SY�SY�SY�SY�SY�SY�SY�SY�SY	� `S� ѳ ��    �       H � �    � �  �         �    �        � �    � �  �   #     � ��    �        � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 4cfsecurity2ecfc129082770$funcSETUSESINGLERDSPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 USESINGLERDSPASSWORD 7 boolean 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k 
		
		 m _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
  q checkRootAdminUser s setUseSingleRdsPassword u java/lang/String w _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; y z
  { 
	 } setUseSingleRDSPassword  metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � VSets whether or not to allow a user id in addition to a password for logging in to RDS � 
Parameters � TYPE � NAME � useSingleRDSPassword � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 6Lcfsecurity2ecfc129082770$funcSETUSESINGLERDSPASSWORD; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �     � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J-u� N-PR� X� ^-`� J
-v� N--v� N-bd� Xf� h� l� ^-n� J-y� N--� rt� h� lW-z� N--
� rv� hY-� xY8S� |S� lW-~� J�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   Z   r S u \ u ^ u [ u [ u S u n v ~ v � v } v v v v v n v � y � y � y � z � z � z � z � x  �   �   �     u� �Y
� hY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� hY� �Y� hY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       u � �    � �  �         �    �        � �    � �  �   (     
� xY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcDELETEDISABLEDCFFUNCTION  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    	TARGETPOS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' PERMISSIONS ) AENABLEDCFFUNCTIONS + ARRAYPOS - 
TARGETTEMP / TARGET 1 SECURITY 3 ACCESSMANAGER 5 pageContext #Lcoldfusion/runtime/NeoPageContext; 7 8	  9 getOut ()Ljavax/servlet/jsp/JspWriter; ; < javax/servlet/jsp/PageContext >
 ? = parent Ljavax/servlet/jsp/tagext/Tag; A B	  C 	DIRECTORY E getVariable  (I)Lcoldfusion/runtime/Variable; G H %coldfusion/runtime/ArgumentCollection J
 K I _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; M N
  O FUNCTIONNAME Q 
		
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
  W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] 
		 a _setCurrentLineNo (I)V c d
  e ArrayNew (I)Ljava/util/List; g h coldfusion/runtime/CFPage j
 k i GETDISABLEDCFFUNCTIONS m _get &(Ljava/lang/String;)Ljava/lang/Object; o p
  q getDisabledCFFunctions s java/lang/Object u _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; w x
  y 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; { |
  } _List $(Ljava/lang/Object;)Ljava/util/List;  � coldfusion/runtime/Cast �
 � � ArrayToList $(Ljava/util/List;)Ljava/lang/String; � �
 k � 1 �   � 0 � 

         � 	component � CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 k � java �  coldfusion.server.ServiceFactory � getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � o x
  � checkAdminRoles � coldfusion.sandboxsecurity � GETSECURABLECFFUNCTIONS � getSecurableCFFunctions � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � ListFindNoCase '(Ljava/lang/String;Ljava/lang/String;)I � �
 k � _boolean (D)Z � �
 � � 
			 � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � SECURITY_INVALIDFUNCTION � w p
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � CONTEXTS � _resolve � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 k � throw � setCalledName � 
 �  SANDBOX_NOT_FOUND 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; �
  	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object;
 k	 GETFUNCTIONPERMISSIONPOSITION getFunctionPermissionPosition C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  * _compare '(Ljava/lang/Object;Ljava/lang/String;)D
  Left '(Ljava/lang/String;I)Ljava/lang/String;
 k *- RemoveChars ((Ljava/lang/String;II)Ljava/lang/String;!"
 k# _Object (I)Ljava/lang/Object;%&
 �' _int (Ljava/lang/Object;)I)*
 �+ ListDeleteAt-
 k. ListLen (Ljava/lang/String;)I01
 k2 (Ljava/lang/Object;D)D4
 5 concat &(Ljava/lang/String;)Ljava/lang/String;78
 �9 _structSetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V;<
 = _LhsResolve? �
 @ _arraySetAtB<
 C 
	E deleteDisabledCFFunctionG metaData Ljava/lang/Object;IJ	 K voidM falseO &coldfusion/runtime/AttributeCollectionQ nameS accessU publicW outputY 
returntype[ hint] ERemove a function from the list of disabled functions in the sandbox._ 
Parametersa HINTc BSpecifies the sandbox directory for which the function is enabled.e NAMEg 	directoryi REQUIREDk truem ([Ljava/lang/Object;)V o
Rp -Specifies the name of the function to enable.r functionNamet 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcDELETEDISABLEDCFFUNCTION; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw38 !Lcoldfusion/tagext/lang/ThrowTag; throw39 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   IJ   	 vw {   "     P�   z       xy   |w {   "     N�   z       xy   }w {   "     H�   z       xy   ~ {  0 	   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:-� :� @:-� D:*F� L� P:*R� L� P:-T� XZ� `-b� X-�� f-� l� `-b� X-�� f-�� f-n� rt-� vY-� zS� ~� �� �� `-b� X�� `-b� X�� `-b� X
�� `-b� X�� `-�� X-�� f-��� �� `-b� X-�� f--�� f-��� ��� v� �� `-b� X-�� f--� ��� vY�S� �W-T� X-�� f-�� f-�� f-�� r�-� v� ~� �� �-� �YRS� �� �� ��� ��� O-�� X-� �� �� �:-�� f��-ض ڸ �� ޶ �� �� � �-b� X-T� X-Ķ f--� �Y�S� �-� z� �� �-� �YFS� �� �� ��� H-� �� �� �:-ƶ f����-� ڸ ��� ޶ �� �� � �-ʶ f--� �Y�S� �� vY-� zSY-� zS��
� `-ζ f-� r-� vY-� zSY-� zS� ~� `---� z�� �� �Y2S�� `-� z��� � �-ֶ f-� z� �� ��� �-ڶ f-� z� ��$� `
-۶ f-� z� �-� z� �� ��(� `-ܶ f-� z� �-
� z�,�/� `-� f-� z� ��3�(�6�� � `� % � `-� z� �-� z� ��:� `� � `---� z�� �� �Y2S-� z�>-� �Y�S�A� vY-� zSY-� zS-� z�D-F� X�   z   �   �xy    ���   ��J   ���   ���   ���   ��J   � A B   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � 5�   � E�   � Q�   ���   ��� �  � � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ����������)�+�+�)�8�B�D�A�A�8�T�f�h�e�]�]�T�������������������������������������K�Z�K�K�f�f�J�J�J���������J������������������� �����3�/�/�-�N�T�i�i�r�i�v�����������������������������������������������������������
��������
�
�����1�1�/�/�/�i�i�N�;�P�P�7�Y�n�w�~�~�Y�J� �  {   �     �ĸ ʳ ̻RY� vYTSYHSYVSYXSYZSYPSY\SYNSY^SY	`SY
bSY� vY�RY� vYdSYfSYhSYjSYlSYnS�qSY�RY� vYdSYsSYhSYuSYlSYnS�qSS�q�L�   z       �xy   �� {         �   z       xy   �� {   -     � �YFSYRS�   z       xy   �� {   "     �L�   z       xy      {   #     *� 
�   z       xy        ����  -Q 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc .cfsecurity2ecfc129082770$funcGETSECUREDFOLDERS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    AFILES " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % I ' WEBAPP ) PERMISSIONS + SECURITY - ACCESSMANAGER / pageContext #Lcoldfusion/runtime/NeoPageContext; 1 2	  3 getOut ()Ljavax/servlet/jsp/JspWriter; 5 6 javax/servlet/jsp/PageContext 8
 9 7 parent Ljavax/servlet/jsp/tagext/Tag; ; <	  = 	DIRECTORY ? getVariable  (I)Lcoldfusion/runtime/Variable; A B %coldfusion/runtime/ArgumentCollection D
 E C _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; G H
  I 
		 K _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V M N
  O / Q set (Ljava/lang/Object;)V S T coldfusion/runtime/Variable V
 W U _setCurrentLineNo (I)V Y Z
  [ ArrayNew (I)Ljava/util/List; ] ^ coldfusion/runtime/CFPage `
 a _ 1 c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j
 a k java m  coldfusion.server.ServiceFactory o getSecurityService q java/lang/Object s _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; u v
  w _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { checkAdminRoles } Ucoldfusion.sandboxsecurity,coldfusion.serversettings,coldfusion.serversettingssummary  false � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _autoscalarize � z
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 a � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 a � C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � CLASS � 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; � �
  � java.io.FilePermission � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � coldfusion.vfs.VFilePermission � _List $(Ljava/lang/Object;)Ljava/util/List; � �
 � � ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)Z � �
 a � _double (Ljava/lang/Object;)D � �
 � � (D)Ljava/lang/Object; � �
 �  ArrayLen (Ljava/lang/Object;)I
 a (I)Ljava/lang/Object; �
 � '(Ljava/lang/Object;Ljava/lang/Object;)D �	
 
 
	 getSecuredFolders metaData Ljava/lang/Object;	  &coldfusion/runtime/AttributeCollection name access public output hint 4Returns an array of secured folders for the sandbox.  
Parameters" HINT$ GSpecifies the sandbox directory for which secured folders are returned.& NAME( 	directory* REQUIRED, true. ([Ljava/lang/Object;)V 0
1 	getOutput ()Ljava/lang/String; this 0Lcfsecurity2ecfc129082770$funcGETSECUREDFOLDERS; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw44 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �       34 8   !     ��   7       56   94 8   "     �   7       56   :; 8  �    �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:-� 4� ::-� >:*@� F� J:-L� PR� X-� \-� b� X
-� \-� b� Xd� X-� \-fh� l� X-� \--� \-np� lr� t� x� X-� \--� |~� tY�SY�S� xW-� \--� �Y�S� �-� �� �� �-� �Y@S� �� �� ��� G-� �� �� �:- � \�� ���-�� ĸ ��� ȶ �� �� ә �-%� \--� �Y�S� �� tY-� �SY-� �S� ָ ڶ Xd� X� �---� �� ݸ �� �Y�S� �� ��~�� �Y� � .W---� �� ݸ �� �Y�S� �� ��~�� � � $--� \--
� �� �--� �� ݶ �W-� �� �c�� X-� �-(� \-� �����t|���F-
� ��-� P�   7   �   �56    �<=   �>   �?@   �AB   �CD   �E   � ; <   � F   � F 	  � "F 
  � 'F   � )F   � +F   � -F   � /F   � ?F   �GH I  v ]  r t t y � � � � � � � � � � � � � � � � � � � � � � � � � �  ] ] : :�%�%�%�%�%�%�%~%�(�(�(�+�+�+�+�+�+�++�+�+�+*-*-6-3-3-)-)-),�+�)E(E(N(E(E(C(V(c(c(c(V(�(}1}1}1 r J  8   �     ��� �� ��Y
� tYSYSYSYSYSY�SYSY!SY#SY	� tY�Y� tY%SY'SY)SY+SY-SY/S�2SS�2��   7       �56   KL 8         �   7       56   MN 8   (     
� �Y@S�   7       
56   OP 8   "     ��   7       56      8   #     *� 
�   7       56        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcDELETESECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    THISAPPCONTEXT " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % WEBAPP ' THISDIR ) THISAPP + THISPATLIST - AC / SECURITY 1 ACCESSMANAGER 3 pageContext #Lcoldfusion/runtime/NeoPageContext; 5 6	  7 getOut ()Ljavax/servlet/jsp/JspWriter; 9 : javax/servlet/jsp/PageContext <
 = ; parent Ljavax/servlet/jsp/tagext/Tag; ? @	  A 	DIRECTORY C getVariable  (I)Lcoldfusion/runtime/Variable; E F %coldfusion/runtime/ArgumentCollection H
 I G _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; K L
  M 
	
		 O _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V Q R
  S / U set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y _setCurrentLineNo (I)V ] ^
  _ _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; a b
  c _String &(Ljava/lang/Object;)Ljava/lang/String; e f coldfusion/runtime/Cast h
 i g Trim &(Ljava/lang/String;)Ljava/lang/String; k l coldfusion/runtime/CFPage n
 o m   q 	component s CFIDE.adminapi.accessmanager u CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; w x
 o y java {  coldfusion.server.ServiceFactory } getSecurityService  java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _get � b
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � /* � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 i � _boolean (Ljava/lang/Object;)Z � �
 i � GetPageContext %()Lcoldfusion/runtime/NeoPageContext; � �
 o � getServletContext � getRealPath � /CFIDE/ � '(Ljava/lang/Object;Ljava/lang/Object;)D � �
  � 	/WEB-INF/ � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � CANNOT_DELETE_SYSTEM_SANDBOXES � &(Ljava/lang/String;)Ljava/lang/Object; a �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � CONTEXTS � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 i � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 o � _resolve � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � IsStruct � �
 o � RESULT � StructDelete %(Ljava/util/Map;Ljava/lang/String;Z)Z � �
 o � _set '(Ljava/lang/String;Ljava/lang/Object;)V � �
  � SANDBOX_NOT_FOUND  security.constraints 	IsDefined (Ljava/lang/String;)Z
 o CONSTRAINTS THISAPPCONST
 StructKeyArray +(Ljava/util/Map;)Lcoldfusion/runtime/Array;
 o I 1 C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  8(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object; �
  url-pattern-list 9(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; �
  D _int (Ljava/lang/Object;)I!"
 i# ,% 	ListGetAt 9(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;'(
 o) ListDeleteAt+(
 o, _arraySetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V./
 0 _double (Ljava/lang/Object;)D23
 i4 (D)Ljava/lang/Object; �6
 i7 ListLen (Ljava/lang/String;)I9:
 o; (I)Ljava/lang/Object; �=
 i> Len@"
 oA (Ljava/lang/Object;D)D �C
 D � �
 oF ArrayLenH"
 oI 
	K deleteSecuritySandboxM metaData Ljava/lang/Object;OP	 Q voidS trueU &coldfusion/runtime/AttributeCollectionW nameY access[ public] output_ 
returntypea hintc 6Removes security sandbox restrictions for a directory.e 
Parametersg HINTi >Specifies the directory of the security sandbox to be removed.k NAMEm 	directoryo REQUIREDq ([Ljava/lang/Object;)V s
Xt 	getOutput ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcDELETESECURITYSANDBOX; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw28 !Lcoldfusion/tagext/lang/ThrowTag; throw29 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   OP   	 vw {   "     V�   z       xy   |w {   "     T�   z       xy   }w {   "     N�   z       xy   ~ {  	� 
   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:-� 8� >:-� B:*D� J� N:-P� TV� \-�� `-� d� j� p� \-�� `-� d� j� p� \
r� \r� \r� \-�� `-tv� z� \-�� `--�� `-|~� z�� �� �� \-�� `--� ��� �Y�S� �W-� �YDS� ��� ��~�� �Y� �� QW-� �YDS� �-�� `--�� `--�� `-� ��� �� ��� �Y�S� �� ��~�� �Y� �� QW-� �YDS� �-�� `--�� `--�� `-� ��� �� ��� �Y�S� �� ��~�� �� �� G-� �� �� �:-�� `Ķ ���-϶ Ҹ jĸ ֶ �� �� � �-�� `--� �Y�S� �� �-� d� j� � �-�� `-� �Y�S� �-� d� � �� �
-� �Y�S� �-� d� � \-�-�� `--
� d� �-� d� j� �� �� �-�� Ҹ ��� H-� �� �� �:-�� `Ķ ���-� Ҹ jĸ ֶ �� �� � �-�� `-��w-�� `-� �Y	S� �� ��Z-�� `--� �Y	S� �� �-� d� j� �0--� �Y	S� �-� d� � �-ö `--� Ҹ �� \-� ���-Ƕ `---� Ҷ�� ���-ɶ `----� Ҷ�� �� �b-� �Y--� ҶSYS�� \- � �� �-϶ `-� d� j- � Ҹ$&�*-� d� ��~�� R-Ѷ `-� d� j- � Ҹ$&�-� \-� �Y--� ҶSYS-� d�1� _- - � Ҹ5c�8� �- � �-Ͷ `-� �Y--� ҶSYS�� j�<�?� ��t|���--ض `-ض `-� d� j� p�B�?�E�� )-ڶ `--� Ҹ �--� Ҷ� j�GW--� Ҹ5c�8� �-� �-Ŷ `-� d�J�?� ��t|���$-L� T�   z   �   �xy    ���   ��P   ���   ���   ���   ��P   � ? @   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � C�   ���   ��� �  b � � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ������$�3�$�$�I�o�g���_�I�I�$�$���������������$������$�=�=�O�O�<�e�t�e�e�e���������������������������������������������e�e�<�"�!�2�2�2�P�P�c�c�O�v���v�v�r����������������������������������������,�,�(�<�<�E�E�O�<�U�<�p�p�y�y���p�p�g�������������g�<�<���������������������������(� � � � � �2�C�C�P�M�M�B�B�B� ����������e�e�o�e�e�a�w�������w���r�O�O�2�2�!� �� �  {   �     ��� �� ��XY� �YZSYNSY\SY^SY`SYVSYbSYTSYdSY	fSY
hSY� �Y�XY� �YjSYlSYnSYpSYrSYVS�uSS�u�R�   z       �xy   �� {         �   z       xy   �� {   (     
� �YDS�   z       
xy   �� {   "     �R�   z       xy      {   #     *� 
�   z       xy        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 0cfsecurity2ecfc129082770$funcGETUSEADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 
		 5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = java ?  coldfusion.server.ServiceFactory A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E getSecurityService I java/lang/Object K _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; M N
  O set (Ljava/lang/Object;)V Q R coldfusion/runtime/Variable T
 U S _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; W X
  Y isAdminSecurityEnabled [ 
	 ] java/lang/String _ getUseAdminPassword a metaData Ljava/lang/Object; c d	  e false g &coldfusion/runtime/AttributeCollection i name k access m public o output q hint s =Checks whether ColdFusion Administrator security is required. u 
Parameters w ([Ljava/lang/Object;)V  y
 j z 	getOutput ()Ljava/lang/String; this 2Lcfsecurity2ecfc129082770$funcGETUSEADMINPASSWORD; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       c d     | }  �   !     h�    �        ~     � }  �   !     b�    �        ~     � �  �  D     �-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-� >--� >-@B� HJ� L� P� V-6� :-� >--
� Z\� L� P�-^� :�    �   p    � ~      � � �    � � d    � � �    � � �    � � �    � � d    � 1 2    �  �    �  � 	   � " � 
 �   6    :  J  L  I  B  B  :  l  k  k  k  k   �   �   f     H� jY
� LYlSYbSYnSYpSYrSYhSYtSYvSYxSY	� LS� {� f�    �       H ~     � �  �         �    �        ~     � �  �   #     � `�    �        ~     � �  �   "     � f�    �        ~        �   #     *� 
�    �        ~         ����  - 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc $cfsecurity2ecfc129082770$funcSETSEED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    
SEEDLENGTH " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % SECURITY ' ACCESSMANAGER ) pageContext #Lcoldfusion/runtime/NeoPageContext; + ,	  - getOut ()Ljavax/servlet/jsp/JspWriter; / 0 javax/servlet/jsp/PageContext 2
 3 1 parent Ljavax/servlet/jsp/tagext/Tag; 5 6	  7 SEED 9 string ; getVariable  (I)Lcoldfusion/runtime/Variable; = > %coldfusion/runtime/ArgumentCollection @
 A ? _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; C D
  E 

         G _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V I J
  K _setCurrentLineNo (I)V M N
  O 	component Q CFIDE.adminapi.accessmanager S CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; U V coldfusion/runtime/CFPage X
 Y W set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] 
		 a java c  coldfusion.server.ServiceFactory e getSecurityService g java/lang/Object i _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; k l
  m _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; o p
  q checkRootAdminUser s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y Len (Ljava/lang/Object;)I { |
 Y } _Object (I)Ljava/lang/Object;  � coldfusion/runtime/Cast �
 � � _autoscalarize � p
  �@        _compare (Ljava/lang/Object;D)D � �
  � (Z)Ljava/lang/Object;  �
 � � _boolean (Ljava/lang/Object;)Z � �
 � �@@      %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � WRONGSEEDLENGTH � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � setSeed � 
	 � metaData Ljava/lang/Object; � �	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint �  Sets the ColdFusion server seed. � 
Parameters � HINT � Server seed. � TYPE � NAME � seed � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this &Lcfsecurity2ecfc129082770$funcSETSEED; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw12 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �     � �  �   !     հ    �        � �    � �  �   !     Ͱ    �        � �    � �  �  �    �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:-� .� 4:-� 8:*:<� B� F:-H� L-H� P-RT� Z� `-b� L-I� P--I� P-df� Zh� j� n� `-b� L-K� P--� rt� j� nW
-L� P-� vY:S� z� ~� �� `-
� � �� ��|� �Y� �� W-
� � �� ��t|� �� �� F-� �� �� �:-O� P�� ���-�� �� ��� �� �� �� ˙ �-Q� P--� r�� jY-� vY:S� zS� nW-϶ L�    �   �   � � �    �    � �   �   �   �   �	 �   � 5 6   � 
   � 
 	  � "
 
  � '
   � )
   � 9
   �    � (  F [ H d H f H c H c H [ H v I � I � I � I ~ I ~ I v I � K � K � K � L � L � L � L � L � M � M � M � M � M � M � M � M � M1 O O N � MY Qg QX QX Q � J    �   �     ��� �� �� �Y
� jY�SY�SY�SY�SY�SY�SY�SY�SY�SY	� jY� �Y� jY�SY�SY�SY<SY�SY�SY�SY�S� �SS� �� ӱ    �       � � �     �         �    �        � �     �   (     
� vY:S�    �       
 � �     �   "     � Ӱ    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc -cfsecurity2ecfc129082770$funcSETADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 PASSWORD 7 string 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q setAdminPassword s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y 
	 { metaData Ljava/lang/Object; } ~	   false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � +Sets the ColdFusion Administrator password. � 
Parameters � HINT � Administrator password. � TYPE � NAME � password � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this /Lcfsecurity2ecfc129082770$funcSETADMINPASSWORD; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       } ~     � �  �   !     ��    �        � �    � �  �   !     t�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J->� N-PR� X� ^-`� J
-?� N--?� N-bd� Xf� h� l� ^-`� J-A� N--� pr� h� lW-B� N--
� pt� hY-� vY8S� zS� lW-|� J�    �   �    � � �     � � �    � � ~    � � �    � � �    � � �    � � ~    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   Z   < S > \ > ^ > [ > [ > S > n ? ~ ? � ? } ? v ? v ? n ? � A � A � A � B � B � B � B � @  �   �   �     �� �Y
� hY�SYtSY�SY�SY�SY�SY�SY�SY�SY	� hY� �Y� hY�SY�SY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� vY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 5cfsecurity2ecfc129082770$funcSETENABLESANDBOXSECURITY  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 ENABLE 7 boolean 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkAdminRoles q %enterprise,coldfusion.sandboxsecurity s setSandboxSecurityEnabled u java/lang/String w _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; y z
  { _boolean (Ljava/lang/Object;)Z } ~ coldfusion/runtime/Cast �
 �  CREATEDEFAULTSANDBOXES � &(Ljava/lang/String;)Ljava/lang/Object; m �
  � createDefaultSandboxes � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 
	 � setEnableSandboxSecurity � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � -Specifies whether to enable sandbox security. � 
Parameters � HINT � True or False � TYPE � NAME � enable � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 7Lcfsecurity2ecfc129082770$funcSETENABLESANDBOXSECURITY; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  8    "-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J-;� N-PR� X� ^-`� J
-<� N--<� N-bd� Xf� h� l� ^-`� J-=� N--� pr� hYtS� lW-`� J-?� N--
� pv� hY-� xY8S� |S� lW-� xY8S� |� �� -B� N-�� ��-� h� �W-�� J�    �   �   " � �    " � �   " � �   " � �   " � �   " � �   " � �   " 3 4   "  �   "  � 	  " " � 
  " ' �   " 7 �  �   z  9 S; ]; _; \; \; S; o< �< �< �< x< x< o< �= �= �= �= �= �? �? �? �? �@BBBA �@ �>  �   �   �     �� �Y� hY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� hY� �Y� hY�SY�SY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� xY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 3cfsecurity2ecfc129082770$funcSETLOGINUSERIDREQUIRED  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 ISUSERIDREQUIRED 7 boolean 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 
		
         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q setAdminUserIdRequired s _autoscalarize u n
  v 
		
	 x java/lang/String z setLoginUserIdRequired | metaData Ljava/lang/Object; ~ 	  � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � hint � 4Sets whether or not a user id is required for login. � 
Parameters � TYPE � NAME � isUserIdRequired � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 5Lcfsecurity2ecfc129082770$funcSETLOGINUSERIDREQUIRED; LocalVariableTable Code getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       ~      � �  �   !     ��    �        � �    � �  �   !     }�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J-5� N-PR� X� ^-`� J
-6� N--6� N-bd� Xf� h� l� ^-`� J-7� N--� pr� h� lW-`� J-8� N--
� pt� hY-� wS� lW-y� J�    �   �    � � �     � � �    � �     � � �    � � �    � � �    � �     � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   ^   2 S 5 \ 5 ^ 5 [ 5 [ 5 S 5 n 6 ~ 6 � 6 } 6 v 6 v 6 n 6 � 7 � 7 � 7 � 7 � 8 � 8 � 8 � 8 � 8  �   �   �     u� �Y
� hY�SY}SY�SY�SY�SY�SY�SY�SY�SY	� hY� �Y� hY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       u � �    � �  �         �    �        � �    � �  �   (     
� {Y8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -` 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc /cfsecurity2ecfc129082770$funcSETSECURITYSANDBOX  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    WEBAPP " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % SECURITY ' ACCESSMANAGER ) DIR + pageContext #Lcoldfusion/runtime/NeoPageContext; - .	  / getOut ()Ljavax/servlet/jsp/JspWriter; 1 2 javax/servlet/jsp/PageContext 4
 5 3 parent Ljavax/servlet/jsp/tagext/Tag; 7 8	  9 	DIRECTORY ; string = getVariable  (I)Lcoldfusion/runtime/Variable; ? @ %coldfusion/runtime/ArgumentCollection B
 C A _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; E F
  G SANDBOX I array K 
		 M _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V O P
  Q / S set (Ljava/lang/Object;)V U V coldfusion/runtime/Variable X
 Y W java/lang/String [ _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; ] ^
  _ _setCurrentLineNo (I)V a b
  c 	component e CFIDE.adminapi.accessmanager g CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; i j coldfusion/runtime/CFPage l
 m k java o  coldfusion.server.ServiceFactory q getSecurityService s java/lang/Object u _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; w x
  y _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; { |
  } checkAdminRoles  coldfusion.sandboxsecurity � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � DirectoryExists (Ljava/lang/String;)Z � �
 m � CONTEXTS � _resolve � ^
  � _autoscalarize � |
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 m � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � arguments.sandbox � 	IsDefined � �
 m � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_ALREADY_EXISTS � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � GETDEFAULTSECURITYSANDBOX � { �
  � getDefaultSecuritySandbox � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � _LhsResolve � ^
  � _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � /* � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � GetPageContext %()Lcoldfusion/runtime/NeoPageContext; � �
 m � getServletContext � getRealPath � /CFIDE/ � '(Ljava/lang/Object;Ljava/lang/Object;)D � 
  	/WEB-INF/ SETDEFAULTFILEPERMISSION setDefaultFilePermission ERROR_INVALIDDIRECTORY	 
	 setSecuritySandbox metaData Ljava/lang/Object;	  void false &coldfusion/runtime/AttributeCollection name access public output 
returntype! hint# 5Creates a security sandbox for a specified directory.% 
Parameters' HINT) Specifies a sandbox directory.+ TYPE- NAME/ 	directory1 REQUIRED3 true5 ([Ljava/lang/Object;)V 7
8 aThe sandbox array object, which is an array of structures with each structure being a permission.: sandbox< No> 	getOutput ()Ljava/lang/String; this 1Lcfsecurity2ecfc129082770$funcSETSECURITYSANDBOX; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw26 !Lcoldfusion/tagext/lang/ThrowTag; throw27 LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �      	 @A E   "     �   D       BC   FA E   "     �   D       BC   GA E   "     �   D       BC   HI E  � 	   V-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:-� 0� 6:-� ::*<>� D� H:*JL� D� H:-N� R
T� Z-� \Y<S� `� Z-q� d-fh� n� Z-r� d--r� d-pr� nt� v� z� Z-t� d--� ~�� vY�S� zW-u� d--� \Y<S� `� �� ��-w� d--� \Y�S� �-
� �� �� �-� �� �� �� �Y� �� W-w� d-�� ��� �� �� Q-� �� �� �:-y� d�� ���-̶ ϸ ��� Ӷ �� �� ޙ ��h-{� d-�� �� -� \YJS� `� Z� (-� d-� ��-� vY-� �S� � Z-� \Y�S� �� vY-
� �SY-� �S-� �� �-� \Y<S� `� ��~� �Y� �� OW-� \Y<S� `-�� d--�� d--�� d-� ��� v� z�� vY�S� z��~� �Y� �� PW-� \Y<S� `-�� d--�� d--�� d-� ��� v� z�� vYS� z��~� �� �� &-�� d-� �-� vY-� �S� �W� H-� �� �� �:-�� d�� ���-
� ϸ ��� Ӷ �� �� ޙ �-� R�   D   �   VBC    VJK   VL   VMN   VOP   VQR   VS   V 7 8   V T   V T 	  V "T 
  V 'T   V )T   V +T   V ;T   V IT   VUV   VWV X  � c j tn vn vn {o }o }o �q �q �q �q �q �r �r �r �r �r �r �t �t �t �t �u �u �uwwww(w(wwwGwFwFwFwFwwzyWyWx�{�{�}�}�}�|������~�~�{����������'���;�a�Y�v�Q�;�;������������������������������z�zwv)���� �u tm Y  E       ��� �� ��Y� vYSYSYSYSY SYSY"SYSY$SY	&SY
(SY� vY�Y� vY*SY,SY.SY>SY0SY2SY4SY6S�9SY�Y� vY*SY;SY.SYLSY0SY=SY4SY?S�9SS�9��   D       �BC   Z[ E         �   D       BC   \] E   -     � \Y<SYJS�   D       BC   ^_ E   "     ��   D       BC      E   #     *� 
�   D       BC        ����  - 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc )cfsecurity2ecfc129082770$funcSETENABLERDS  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 FLAG 5 boolean 7 getVariable  (I)Lcoldfusion/runtime/Variable; 9 : %coldfusion/runtime/ArgumentCollection <
 = ; _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; ? @
  A 

         C _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V E F
  G _setCurrentLineNo (I)V I J
  K 	component M CFIDE.adminapi.accessmanager O CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; Q R coldfusion/runtime/CFPage T
 U S set (Ljava/lang/Object;)V W X coldfusion/runtime/Variable Z
 [ Y 
		 ] _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; _ `
  a checkRootAdminUser c java/lang/Object e _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; g h
  i checkAdminRoles k 
standalone m *coldfusion/runtime/TransientVariableHolder o &(Lcoldfusion/runtime/NeoPageContext;)V  q
 p r _autoscalarize t `
  u _boolean (Ljava/lang/Object;)Z w x coldfusion/runtime/Cast z
 { y ENABLERDSSERVLET } &(Ljava/lang/String;)Ljava/lang/Object; _ 
  � enableRDSServlet � 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � DISABLERDSSERVLET � disableRDSServlet � unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; � � coldfusion/runtime/NeoException �
 � � t0 [Ljava/lang/String; java/lang/String � any � � �	  � findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I � �
 � � ex � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 p � unbind � 
 p � 
	 � setEnableRDS � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � +Specifies whether to enable or disable RDS. � 
Parameters � HINT � Specify true or false. � TYPE � NAME � flag � REQUIRED � true � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this +Lcfsecurity2ecfc129082770$funcSETENABLERDS; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t12 ,Lcoldfusion/runtime/TransientVariableHolder; t13 #Lcoldfusion/runtime/AbortException; t14 Ljava/lang/Exception; __cfcatchThrowable1 Ljava/lang/Throwable; t16 t17 LineNumberTable !coldfusion/runtime/AbortException � java/lang/Exception � java/lang/Throwable � <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �    � �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �    X-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:*68� >� B:-D� H
- �� L-NP� V� \-^� H- �� L--
� bd� f� jW-^� H- �� L--
� bl� fYnS� jW-^� H� pY-� *� s:-� v� |� %- ¶ L-~� ��-� f� �W� - ƶ L-�� ��-� f� �W� M� S:�:� �:� �� ��                  �� �� �� � :� �:� ��-�� H�  � � � � � � � � �= � �:= �=B= �  �   �   X � �    X � �   X � �   X � �   X � �   X � �   X � �   X 1 2   X  �   X  � 	  X " � 
  X 5 �   X � �   X � �   X � �   X � �   X � �   X � �  �   z   � K � U � W � T � T � K � o � n � n � n � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  �   �   �     �� �Y�S� �� �Y� fY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� fY� �Y� fY�SY�SY�SY8SY�SY�SY�SY�S� �SS� ճ ��    �       � � �    � �  �         �    �        � �    �   �   (     
� �Y6S�    �       
 � �     �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 3cfsecurity2ecfc129082770$funcCREATEDEFAULTSANDBOXES  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ACCESSMANAGER " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % pageContext #Lcoldfusion/runtime/NeoPageContext; ' (	  ) getOut ()Ljavax/servlet/jsp/JspWriter; + , javax/servlet/jsp/PageContext .
 / - parent Ljavax/servlet/jsp/tagext/Tag; 1 2	  3 

         5 _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V 7 8
  9 _setCurrentLineNo (I)V ; <
  = 	component ? CFIDE.adminapi.accessmanager A CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; C D coldfusion/runtime/CFPage F
 G E set (Ljava/lang/Object;)V I J coldfusion/runtime/Variable L
 M K 
		 O _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; Q R
  S checkAdminRoles U java/lang/Object W coldfusion.sandboxsecurity Y _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; [ \
  ] *coldfusion/runtime/TransientVariableHolder _ &(Lcoldfusion/runtime/NeoPageContext;)V  a
 ` b SETSECURITYSANDBOX d &(Ljava/lang/String;)Ljava/lang/Object; Q f
  g setSecuritySandbox i /* k 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; m n
  o unwrap ,(Ljava/lang/Throwable;)Ljava/lang/Throwable; q r coldfusion/runtime/NeoException t
 u s t0 [Ljava/lang/String; java/lang/String y any { w x	  } findThrowableTarget +(Ljava/lang/Throwable;[Ljava/lang/String;)I  �
 u � ex � bind '(Ljava/lang/String;Ljava/lang/Object;)V � �
 ` � unbind � 
 ` � GetPageContext %()Lcoldfusion/runtime/NeoPageContext; � �
 G � getServletContext � getRealPath � /CFIDE/ � t1 � x	  � 	/WEB-INF/ � t2 � x	  � 
		
	 � createDefaultSandboxes � metaData Ljava/lang/Object; � �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � jCreates the default sandboxes needed to secure the ColdFusion Administrator and the WEB-INF system folder. � 
Parameters � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 5Lcfsecurity2ecfc129082770$funcCREATEDEFAULTSANDBOXES; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t11 ,Lcoldfusion/runtime/TransientVariableHolder; t12 #Lcoldfusion/runtime/AbortException; t13 Ljava/lang/Exception; __cfcatchThrowable4 Ljava/lang/Throwable; t15 t16 t17 t18 t19 __cfcatchThrowable5 t21 t22 t23 t24 t25 __cfcatchThrowable6 t27 t28 LineNumberTable !coldfusion/runtime/AbortException � java/lang/Exception � java/lang/Throwable � <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       w x    � x    � x    � �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �  �    d-� +� � :+� !,� :	+#� &:
-� *� 0:-� 4:-6� :
-� >-@B� H� N-P� :-� >--
� TV� XYZS� ^W-P� :� `Y-� *� c:-� >-e� hj-� XYlS� pW� L� R:�:� v:� ~� ��                �� �� �� � :� �:� ��� `Y-� *� c:-� >-e� hj-� XY-� >--� >--� >-� ��� X� ^�� XY�S� ^S� pW� M� S:�:� v:� �� ��                  �� �� �� � :� �:� ��� `Y-� *� c:-�� >-e� hj-� XY-�� >--�� >--�� >-� ��� X� ^�� XY�S� ^S� pW� M� S:�:� v:� �� ��                  �� �� �� � :� �:� ��-�� :�  � � � � � � � � � � � � � � � � � � � �WZ �W_ �W� �Z�� ���� ��
 �� ��I �
FI �INI �  �  $   d � �    d � �   d � �   d � �   d � �   d � �   d � �   d 1 2   d  �   d  � 	  d " � 
  d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �   d � �  �   � % � :� D� F� C� C� :� ^� l� ]� ]� ]� �� �� �� �� �� {��4�,�I�$���� �������������������� {�  �   �   �     x� zY|S� ~� zY|S� �� zY|S� �� �Y� XY�SY�SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� XS� �� ��    �       x � �    � �  �         �    �        � �    � �  �   #     � z�    �        � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -{ 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc $cfsecurity2ecfc129082770$funcSETUSER  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 USERNAME 7 string 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C PASSWORD E get (I)Ljava/lang/Object; G H
 ? I DESCRIPTION K   M put 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; O P
 ? Q 	SANDBOXES S _setCurrentLineNo (I)V U V
  W ArrayNew (I)Ljava/util/List; Y Z coldfusion/runtime/CFPage \
 ] [ array _ ROLES a ALLOWRDSACCESS c false e boolean g ALLOWADMINACCESS i ALLOWADMINAPIACCESS k SERVICES m 		
         o _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V q r
  s 	component u CFIDE.adminapi.accessmanager w CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; y z
 ] { set (Ljava/lang/Object;)V } ~ coldfusion/runtime/Variable �
 �  

         � java �  coldfusion.server.ServiceFactory � getSecurityService � java/lang/Object � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 
		
		 � _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; � �
  � checkRootAdminUser � 
		
		
		 � _autoscalarize � �
  � ArrayLen (Ljava/lang/Object;)I � �
 ] � 1 � _double (Ljava/lang/String;)D � � coldfusion/runtime/Cast �
 � � _Object (D)Ljava/lang/Object; � �
 � � I � bindPageVariable P(Ljava/lang/String;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable; � �
  � 
			 � &(Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; � �
  � IsSimpleValue (Ljava/lang/Object;)Z � �
 ] � 
				 � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � cfthrow � message � 2The roles argument can contain only simple values. � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � type � cfadminapivalidationerror � setType � 
 � � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 
		 � CFLOOP � checkRequestTimeout � 
  � _checkCondition (DDD)Z � �
  � setAuthorizedUser � java/lang/String  _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object;
  
		
	 setUser metaData Ljava/lang/Object;
	  void &coldfusion/runtime/AttributeCollection name access public output 
returntype hint Add or Update a new user. 
Parameters  HINT" %Specifies the username for this user.$ TYPE& NAME( username* REQUIRED, true. ([Ljava/lang/Object;)V 0
1 %Specifies the password for this user.3 password5 DEFAULT7 $Specifies a description of the user.9 description; [runtime expression]= $Sandboxes user to allowed to access.? 	sandboxesA %Administrative roles assigned to userC rolesE =Specifies whether or not RDS access is allowed for this user.G allowrdsaccessI XSpecifies whether or not CF Administrator and Admin API access is allowed for this user.K allowadminaccessM CSpecifies whether or not Admin API access is allowed for this user.O allowadminapiaccessQ $Services  user is allowed to access.S servicesU 	getOutput ()Ljava/lang/String; this &Lcfsecurity2ecfc129082770$funcSETUSER; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; t21 D t23 t25 t27 throw52 !Lcoldfusion/tagext/lang/ThrowTag; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1       � �   
   	 WX \   !     f�   [       YZ   ]X \   "     �   [       YZ   ^X \   "     	�   [       YZ   _` \  �    �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:*F:� @� D:� J� LN� RW*L:� @� D:� J� T-J� X-� ^� RW*T`� @� D:� J� b-K� X-� ^� RW*b`� @� D:� J� df� RW*dh� @� D:� J� jf� RW*jh� @� D:� J� lf� RW*lh� @� D:� J� n-O� X-� ^� RW*n`� @� D:-p� t-P� X-vx� |� �-�� t
-Q� X--Q� X-��� |�� �� �� �-�� t-S� X--� ��� �� �W-�� t9-V� X-� �� ��9�� �9� �:-�+� �:� �� �-�� t-W� X--�� �� �� ��� W-¶ t-� �� �� �:-X� X���� ޶ ����� ޶ �� �� � �-�� t-�� tc\9� �:� ��� �� ���_-�� t-]� X--
� ��	� �Y-�Y8S�SY-�YFS�SY-�YLS�SY-�YjS�SY-�YdS�SY-�YlS�SY-�YTS�SY-�YbS�SY-�YnS�S� �W-� t�   [     �YZ    �ab   �c   �de   �fg   �hi   �j   � 3 4   � k   � k 	  � "k 
  � 'k   � 7k   � Ek   � Kk   � Sk   � ak   � ck   � ik   � kk   � mk   �lm   �nm   �om   �pk   �qr s   � = F jI �J �J �J �K �K �K �LM:NiOhOhO�P�P�P�P�P�P�Q�Q�Q�Q�Q�Q�Q�S�S�S�S�V�V�V�V
V=W:W:W:W:W:WrX�XVX:W�V�V�]�] ^_$`6aHb[cnd�e�]�]�\ t  \      Ƹ ̳ λY� �YSY	SYSYSYSYfSYSYSYSY	SY
!SY	� �Y�Y� �Y#SY%SY'SY:SY)SY+SY-SY/S�2SY�Y� �Y#SY4SY'SY:SY)SY6SY-SY/S�2SY�Y
� �Y'SY:SY8SYNSY-SYfSY#SY:SY)SY	<S�2SY�Y
� �Y'SY`SY8SY>SY-SYfSY#SY@SY)SY	BS�2SY�Y
� �Y'SY`SY8SY>SY-SYfSY#SYDSY)SY	FS�2SY�Y
� �Y'SYhSY8SYfSY-SYfSY#SYHSY)SY	JS�2SY�Y
� �Y'SYhSY8SYfSY-SYfSY#SYLSY)SY	NS�2SY�Y
� �Y'SYhSY8SYfSY-SYfSY#SYPSY)SY	RS�2SY�Y
� �Y'SY`SY8SY>SY-SYfSY#SYTSY)SY	VS�2SS�2��   [      YZ   uv \         �   [       YZ   wx \   T     6	�Y8SYFSYLSYTSYbSYdSYjSYlSYnS�   [       6YZ   yz \   "     ��   [       YZ      \   #     *� 
�   [       YZ        ����  - � 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 0cfsecurity2ecfc129082770$funcSETUSEADMINPASSWORD  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    SECURITY " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % ACCESSMANAGER ' pageContext #Lcoldfusion/runtime/NeoPageContext; ) *	  + getOut ()Ljavax/servlet/jsp/JspWriter; - . javax/servlet/jsp/PageContext 0
 1 / parent Ljavax/servlet/jsp/tagext/Tag; 3 4	  5 USEADMINPASSWORD 7 boolean 9 getVariable  (I)Lcoldfusion/runtime/Variable; ; < %coldfusion/runtime/ArgumentCollection >
 ? = _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; A B
  C 

         E _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V G H
  I _setCurrentLineNo (I)V K L
  M 	component O CFIDE.adminapi.accessmanager Q CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; S T coldfusion/runtime/CFPage V
 W U set (Ljava/lang/Object;)V Y Z coldfusion/runtime/Variable \
 ] [ 
		 _ java a  coldfusion.server.ServiceFactory c getSecurityService e java/lang/Object g _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; i j
  k _get 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; m n
  o checkRootAdminUser q setAdminSecurityEnabled s java/lang/String u _resolveAndAutoscalarize D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; w x
  y 
	 { setUseAdminPassword } metaData Ljava/lang/Object;  �	  � void � false � &coldfusion/runtime/AttributeCollection � name � access � public � output � 
returntype � hint � @Specifies whether ColdFusion Administrator security is required. � 
Parameters � HINT � True or False � TYPE � NAME � useAdminPassword � REQUIRED � Yes � ([Ljava/lang/Object;)V  �
 � � 	getOutput ()Ljava/lang/String; this 2Lcfsecurity2ecfc129082770$funcSETUSEADMINPASSWORD; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata ()Ljava/lang/Object; 1        �   	  � �  �   !     ��    �        � �    � �  �   !     ��    �        � �    � �  �   !     ~�    �        � �    � �  �  �     �-� +� � :+� !,� :	+#� &:
+(� &:-� ,� 2:-� 6:*8:� @� D:-F� J-%� N-PR� X� ^-`� J
-&� N--&� N-bd� Xf� h� l� ^-`� J-(� N--� pr� h� lW-)� N--
� pt� hY-� vY8S� zS� lW-|� J�    �   �    � � �     � � �    � � �    � � �    � � �    � � �    � � �    � 3 4    �  �    �  � 	   � " � 
   � ' �    � 7 �  �   Z   # S % \ % ^ % [ % [ % S % n & ~ & � & } & v & v & n & � ( � ( � ( � ) � ) � ) � ) � '  �   �   �     �� �Y� hY�SY~SY�SY�SY�SY�SY�SY�SY�SY	�SY
�SY� hY� �Y� hY�SY�SY�SY:SY�SY�SY�SY�S� �SS� �� ��    �       � � �    � �  �         �    �        � �    � �  �   (     
� vY8S�    �       
 � �    � �  �   "     � ��    �        � �       �   #     *� 
�    �        � �        ����  -� 
SourceFile QC:\dev\ColdFusion\cf9_u2_final_hotfix\cfusion\wwwroot\CFIDE\adminapi\security.cfc 2cfsecurity2ecfc129082770$funcSETDISABLEDDATASOURCE  coldfusion/runtime/UDFMethod  <init> ()V  
  	 com.adobe.coldfusion.*  bindImportPath (Ljava/lang/String;)V   coldfusion/runtime/CfJspPage 
   coldfusion/util/Key  	ARGUMENTS Lcoldfusion/util/Key;  	   bindInternal F(Lcoldfusion/util/Key;Ljava/lang/Object;)Lcoldfusion/runtime/Variable;   coldfusion/runtime/LocalScope 
   THIS  	    ALLDSNS " 1(Ljava/lang/String;)Lcoldfusion/runtime/Variable;  $
  % DB ' WEBAPP ) PERMISSIONS + KEY - DISABLEDDSNS / SECURITY 1 ACCESSMANAGER 3 ADDDB 5 pageContext #Lcoldfusion/runtime/NeoPageContext; 7 8	  9 getOut ()Ljavax/servlet/jsp/JspWriter; ; < javax/servlet/jsp/PageContext >
 ? = parent Ljavax/servlet/jsp/tagext/Tag; A B	  C 	DIRECTORY E getVariable  (I)Lcoldfusion/runtime/Variable; G H %coldfusion/runtime/ArgumentCollection J
 K I _validateArg a(Ljava/lang/String;ZLjava/lang/String;Lcoldfusion/runtime/Variable;)Lcoldfusion/runtime/Variable; M N
  O 
DATASOURCE Q 
		 S _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V U V
  W / Y set (Ljava/lang/Object;)V [ \ coldfusion/runtime/Variable ^
 _ ] _setCurrentLineNo (I)V a b
  c ArrayNew (I)Ljava/util/List; e f coldfusion/runtime/CFPage h
 i g true k   m GETDISABLEDDATASOURCES o _get &(Ljava/lang/String;)Ljava/lang/Object; q r
  s getDisabledDatasources u java/lang/Object w _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object; y z
  { 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object; } ~
   	component � CFIDE.adminapi.accessmanager � CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object; � �
 i � java �  coldfusion.server.ServiceFactory � getSecurityService � _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � q z
  � checkAdminRoles � coldfusion.sandboxsecurity � java/lang/String � CONTEXTS � _resolve D(Lcoldfusion/runtime/Variable;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _arrayGetAt 8(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; � �
  � _Map #(Ljava/lang/Object;)Ljava/util/Map; � � coldfusion/runtime/Cast �
 � � _resolveAndAutoscalarize � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � �
 � � StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z � �
 i � %class$coldfusion$tagext$lang$ThrowTag Ljava/lang/Class; coldfusion.tagext.lang.ThrowTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/lang/ThrowTag � throw � setCalledName �  coldfusion/tagext/GenericTag �
 � � cfthrow � message � SANDBOX_NOT_FOUND � y r
  � _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; � �
  � 
setMessage � 
 � � 	hasEndTag (Z)V � �
 � � _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z � �
  � 9(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; � �
  � 	Duplicate &(Ljava/lang/Object;)Ljava/lang/Object; � �
 i � CFIDE.adminapi.datasource � getDatasources � <<All Datasources>> � _compare '(Ljava/lang/Object;Ljava/lang/String;)D � �
  � _Object (Z)Ljava/lang/Object; � �
 � � _boolean (Ljava/lang/Object;)Z � �
 � � DB_NOT_FOUND � I ArrayLen (Ljava/lang/Object;)I
 i (I)Ljava/lang/Object; �
 � _set '(Ljava/lang/String;Ljava/lang/Object;)V

  C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object; �
  CLASS 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �
  #coldfusion.sql.DataSourcePermission _List $(Ljava/lang/Object;)Ljava/util/List;
 � _int
 � ArrayDeleteAt (Ljava/util/List;I)Z 
 i! _double (Ljava/lang/Object;)D#$
 �% (D)Ljava/lang/Object; �'
 �( (Ljava/lang/Object;D)D �*
 + 1- StructDelete/ �
 i0 '(Ljava/lang/Object;Ljava/lang/Object;)D �2
 3 java/util/List5 iterator ()Ljava/util/Iterator;7869 java/util/Map; keySet ()Ljava/util/Set;=><? java/util/SetAB9 java/util/IteratorD next ()Ljava/lang/Object;FGEH 
PERMISSIONJ 	StructNew !()Lcoldfusion/util/FastHashtable;LM
 iN _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)VPQ
 R TARGETT ACTIONV ArrayAppend %(Ljava/util/List;Ljava/lang/Object;)ZXY
 iZ hasNext ()Z\]E^ _LhsResolve` �
 a _arraySetAt :(Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Object;)Vcd
 e 
	g setDisabledDatasourcei metaData Ljava/lang/Object;kl	 m voido &coldfusion/runtime/AttributeCollectionq names accessu publicw outputy 
returntype{ hint} -Disables use of a data source in the sandbox. 
Parameters� HINT� FSpecifies the sandbox directory for which the data source is disabled.� NAME� 	directory� REQUIRED� ([Ljava/lang/Object;)V �
r� 1Specifies the name of the data source to disable.� 
datasource� 	getOutput ()Ljava/lang/String; this 4Lcfsecurity2ecfc129082770$funcSETDISABLEDDATASOURCE; LocalVariableTable Code getReturnType getName runFunction �(Lcoldfusion/runtime/LocalScope;Ljava/lang/Object;Lcoldfusion/runtime/CFPage;Lcoldfusion/runtime/ArgumentCollection;)Ljava/lang/Object; __localScope Lcoldfusion/runtime/LocalScope; instance 
parentPage Lcoldfusion/runtime/CFPage; __arguments 'Lcoldfusion/runtime/ArgumentCollection; out Ljavax/servlet/jsp/JspWriter; value Lcoldfusion/runtime/Variable; throw41 !Lcoldfusion/tagext/lang/ThrowTag; throw42 t23 Ljava/util/Iterator; LineNumberTable <clinit> 	getAccess ()I getParamList ()[Ljava/lang/String; getMetadata 1       � �   kl   	 �� �   !     l�   �       ��   �� �   "     p�   �       ��   �� �   "     j�   �       ��   �� �  � 	   �-� +� � :+� !,� :	+#� &:
+(� &:+*� &:+,� &:+.� &:+0� &:+2� &:+4� &:+6� &:-� :� @:-� D:*F� L� P:*R� L� P:-T� XZ� `-h� d-� j� `l� `
n� `-k� d-p� tv-� xY-� |S� �� `n� `n� `-n� d-��� �� `-o� d--o� d-��� ��� x� �� `-q� d--� ��� xY�S� �W-s� d--� �Y�S� �-� |� �� �-� �YFS� �� �� ��� G-� �� �� �:-u� dɶ ���-Զ ָ �ɸ ڶ �� �� � �-y� d--� �Y�S� �� xY-� |SY-� |S� � � `-{� d-�� �� `
-|� d-|� d--� ��� x� �� � `-� |� ��~� �Y� �� /W-~� d--
� |� �-� �YRS� �� �� ��� �� �� H-� �� �� �:-�� dɶ ���- � ָ �ɸ ڶ �� �� � �--�� d-� |��	�� a---� ֶ� �� �YS�� ��� "-�� d--� |�-� ָ�"W--� ָ&g�)�-� ��,����-� �YRS� �� ���Y-.�� >-�� d--
� |� �--� ֶ� ��1W--� ָ&c�)�-� �-�� d-� |��	�4�t|����-�� d--
� |� �-� �YRS� �� ��1W:-
� |�6� -
� |��: :� -
� |� ��@ �C :� ~�I :� `-K-�� d�O�-K� �YS�S-K� �YUS-� |�S-K� �YWSn�S-�� d--� |�-K� ֶ[W�_ ��~-� �Y�S�b� xY-� |SY-� |S-� |�f-h� X�   �   �   ���    ���   ��l   ���   ���   ���   ��l   � A B   � �   � � 	  � "� 
  � '�   � )�   � +�   � -�   � /�   � 1�   � 3�   � 5�   � E�   � Q�   ���   ���   ��� �  � � c �g �g �g �h �h �h �h �i �i �i �j �j �j �k �k �k �k �k �l �l �l �m �m �m �n �n �n �n �noooooo4qBq3q3qQs`sQsQslslsPsPsPs�u�u�u�tPs�y�y�y�y�y�y�y�y{{{{{'|&|&|&|&||<~B~<~<~^~^~g~g~]~]~]~]~<~�����<~�����������������#�#��������5�5�?�5�5�1�G�N���W�f�t�t�p���������������������������������������p�������������
��)�\�\�Q�p�p�b�����v�������������������Q�
�p�W������������� �f �  �   �     ��� �� ��rY� xYtSYjSYvSYxSYzSYlSY|SYpSY~SY	�SY
�SY� xY�rY� xY�SY�SY�SY�SY�SYlS��SY�rY� xY�SY�SY�SY�SY�SYlS��SS���n�   �       ���   �� �         �   �       ��   �� �   -     � �YFSYRS�   �       ��   �G �   "     �n�   �       ��      �   #     *� 
�   �       ��        