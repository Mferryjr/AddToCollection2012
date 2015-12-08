#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Nimbus Logo.ico
#AutoIt3Wrapper_Outfile=Y:\AutoIT\apps\MoveToOU\Move to OU-Prod.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=Moves a PC account to a selected OU.
#AutoIt3Wrapper_Res_Fileversion=2015.12.7.0
#AutoIt3Wrapper_Res_LegalCopyright=(c) 2015 Hillsborough County ITS (jrs)
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=asInvoker
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <Constants.au3>
#Include <Misc.au3>
#Include <ad.au3>

Opt ( 'MustDeclareVars', 1 )
Opt ( "GUICoordMode", 1 )

if _Singleton ( @ScriptName , 1 ) = 0 Then
	Exit
EndIf

Local $ScriptName = StringLeft ( @ScriptName , (StringLen ( @ScriptName ) - 4) )
Local $MoveButton, $CancelButton, $group_1, $group_2
Local $radio_00, $radio_01, $radio_02, $radio_03, $radio_04, $radio_05, $radio_06, $radio_07, $radio_08, $radio_09
Local $radio_10, $radio_11, $radio_12, $radio_13, $radio_14, $radio_15, $radio_16, $radio_17, $radio_18, $radio_19
Local $radio_20, $radio_21, $radio_22, $radio_23, $radio_24, $radio_25, $radio_26, $radio_27, $radio_28, $radio_29
Local $radio_30, $radio_31, $radio_32, $radio_33, $radio_34, $radio_35, $radio_36, $radio_37, $radio_38, $radio_39
Local $radio_40, $radio_41, $radio_42, $radio_43, $radio_44, $radio_45, $radio_46, $radio_47, $radio_48, $radio_49
Local $radio_50, $radio_51, $radio_52, $radio_53, $radio_54, $radio_55, $radio_56, $radio_57, $radio_58, $radio_59
Local $radio_60, $radio_61, $radio_62, $radio_63, $radio_64, $radio_65, $radio_66, $radio_67, $radio_68, $radio_69
Local $radio_70, $radio_71, $radio_72, $radio_73, $radio_74, $radio_75, $radio_76, $radio_77, $radio_78, $radio_79
Local $radio_80, $radio_81, $radio_82, $radio_83, $radio_84, $radio_85, $radio_86, $radio_87, $radio_88, $radio_89
Local $radio_90, $radio_91, $radio_92, $radio_93, $radio_94, $radio_95, $radio_96, $radio_97, $radio_98, $radio_99
Local $radio_100, $radio_101, $radio_102, $radio_103, $radio_104, $radio_105, $radio_106, $radio_107, $radio_108, $radio_109
Local $radio_110, $radio_111, $radio_112, $radio_113, $radio_114, $radio_115, $radio_116, $radio_117, $radio_118, $radio_119
Local $radio_120, $radio_121, $radio_122, $radio_123, $radio_124, $radio_125, $radio_126, $radio_127, $radio_128, $radio_129
Local $radio_T1, $radio_T2, $Type
Local $msg, $GUI_PCN, $GetHostname, $Server , $GetServer, $sObject
Local $HostName, $FQDN, $ButtonState, $OU, $FQOU, $MoveIt
Local $RID, $RID1, $Saying
local $Member, $MembershipQuery, $result

_FileInstaller ( )
_MakeGUI ( )
_Main ( )

Func _Main ( )
	Do
		$Server = ""
		$msg = GUIGetMsg ( )

		If GUICtrlRead (	$radio_00	) = 1 Then $OU = "OU=County Center,OU=911 Administration,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_01	) = 1 Then $OU = "OU=Pinebrooke,OU=Affordable Housing,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_02	) = 1 Then $OU = "OU=County Center,OU=Aging Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_03	) = 1 Then $OU = "OU=Remote Sites,OU=Aging Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_04	) = 1 Then $OU = "OU=440 Falkenburg Rd,OU=Animal Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_05	) = 1 Then $OU = "OU=County Center,OU=BOCC,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_06	) = 1 Then $OU = "OU=County Center,OU=Budget,OU=Business and Support Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_07	) = 1 Then $OU = "OU=Lake Magdalene,OU=Child Care Licensing,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_08	) = 1 Then $OU = "OU=Childrens Board,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_09	) = 1 Then $OU = "OU=Lake Magdalene,OU=Childrens Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_10	) = 1 Then $OU = "OU=County Center,OU=Citizen Boards Support,OU=Consumer and Veterans Affairs,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_11	) = 1 Then $OU = "OU=County Center,OU=Citizen and Communications Support,OU=Chief Administrative Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_12	) = 1 Then $OU = "OU=County Center,OU=Civil Service,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_13	) = 1 Then $OU = "OU=Pinebrooke,OU=Code Enforcement,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_14	) = 1 Then $OU = "OU=County Center,OU=Communications,OU=Chief Administrative Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_15	) = 1 Then $OU = "OU=139th Avenue,OU=Consumer Protection,OU=Consumer and Veterans Affairs,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_16	) = 1 Then $OU = "OU=County Center,OU=County Administrator,DC=hcbocc,DC=ad"

		If GUICtrlRead (	$radio_17	) = 1 Then $OU = "OU=County Center,OU=County Attorney,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_20	) = 1 Then $OU = "OU=County Center,OU=Criminal Justice,OU=Business and Support Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_21	) = 1 Then $OU = "OU=County Center,OU=Development Services,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_22	) = 1 Then $OU = "OU=South Shore,OU=Development Services,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_23	) = 1 Then $OU = "OU=County Center,OU=Economic Development,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_24	) = 1 Then $OU = "OU=SBIC,OU=Economic Development,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_25	) = 1 Then $OU = "OU=EOC,OU=Emergency Dispatch,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_26	) = 1 Then $OU = "OU=EOC,OU=Emergency Management,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_27	) = 1 Then $OU = "OU=700 Twiggs,OU=Equal Opportunity,OU=Chief Administrative Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_28	) = 1 Then $OU = "OU=County Center,OU=Enterprise Solutions and Quality Assurance,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_29	) = 1 Then $OU = "OU=COOP,OU=Extension Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_30	) = 1 Then $OU = "OU=County Center,OU=Facilities Management,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_31	) = 1 Then $OU = "OU=Fire Marshall,OU=Fire Rescue,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_32	) = 1 Then $OU = "OU=Fire Rescue,OU=Fire Rescue,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_33	) = 1 Then $OU = "OU=Fire Stations,OU=Fire Rescue,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_34	) = 1 Then $OU = "OU=County Center,OU=Fiscal and Support Services - IDS,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_35	) = 1 Then $OU = "OU=County Center,OU=Fiscal and Support Services - PSCS,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"

		If GUICtrlRead (	$radio_36	) = 1 Then $OU = "OU=410 78th Street,OU=Fleet Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_37	) = 1 Then $OU = "OU=Remote Sites,OU=Fleet Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_40	) = 1 Then $OU = "OU=County Center,OU=Grants and Quality Assurance,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_41	) = 1 Then $OU = "OU=Main Site,OU=Guardian Ad Litem,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_42	) = 1 Then $OU = "OU=3639 Waters Ave,OU=Head Start,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_43	) = 1 Then $OU = "OU=Remote Sites,OU=Head Start,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_44	) = 1 Then $OU = "OU=County Center,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_45	) = 1 Then $OU = "OU=Lee Davis,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_46	) = 1 Then $OU = "OU=Plant City,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_47	) = 1 Then $OU = "OU=Remote Sites,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_50	) = 1 Then $OU = "OU=Ruskin,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_51	) = 1 Then $OU = "OU=UCRC,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_52	) = 1 Then $OU = "OU=West Tampa,OU=Health Care Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_53	) = 1 Then $OU = "OU=County Center,OU=Homeless Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_54	) = 1 Then $OU = "OU=County Center,OU=Human Resources,OU=Chief Administrative Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_55	) = 1 Then $OU = "OU=County Center,OU=Information and Technology Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_56	) = 1 Then $OU = "OU=Sabal Park,OU=Information and Technology Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"

		If GUICtrlRead (	$radio_57	) = 1 Then $OU = "OU=Internal Performance Auditor,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_60	) = 1 Then $OU = "OU=501 Kennedy,OU=Law Library,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_61	) = 1 Then $OU = "OU=Library,OU=Library Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_62	) = 1 Then $OU = "OU=Medexam,OU=Medical Examiner,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_63	) = 1 Then $OU = "OU=County Center,OU=Office of Community Affairs,OU=Chief Administrative Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_64	) = 1 Then $OU = "OU=County Center,OU=Operations and Legislative Affairs,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_65	) = 1 Then $OU = "OU=Pinebrooke,OU=Parks Recreation and Conservation,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_66	) = 1 Then $OU = "OU=Remote Sites,OU=Parks Recreation and Conservation,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_67	) = 1 Then $OU = "OU=County Center,OU=Procurement Services,OU=Business and Support Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_68	) = 1 Then $OU = "OU=Main Site,OU=Public Transportation,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_69	) = 1 Then $OU = "OU=BSOC,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_70	) = 1 Then $OU = "OU=Central Hillsborough,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_71	) = 1 Then $OU = "OU=Dellwood,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_72	) = 1 Then $OU = "OU=Falkenburg,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_73	) = 1 Then $OU = "OU=Fawn Ridge,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_74	) = 1 Then $OU = "OU=Lake Park,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_75	) = 1 Then $OU = "OU=Lithia,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_76	) = 1 Then $OU = "OU=Mobley,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_80	) = 1 Then $OU = "OU=North Line Maintenance,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_81	) = 1 Then $OU = "OU=Premiere,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_82	) = 1 Then $OU = "OU=Remote Sites,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"

		If GUICtrlRead (	$radio_83	) = 1 Then $OU = "OU=RiverOaks,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_84	) = 1 Then $OU = "OU=South Line Maintenance,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_85	) = 1 Then $OU = "OU=South Shore,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_86	) = 1 Then $OU = "OU=Teco Rd,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_87	) = 1 Then $OU = "OU=Twiggs,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_88	) = 1 Then $OU = "OU=Valrico,OU=Public Utilities,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_89	) = 1 Then $OU = "OU=County Center,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_90	) = 1 Then $OU = "OU=CountyWide Service Unit,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_91	) = 1 Then $OU = "OU=East Service Unit,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_92	) = 1 Then $OU = "OU=Mosquito Control,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_93	) = 1 Then $OU = "OU=South Service Unit,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_94	) = 1 Then $OU = "OU=Specialized Services,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_95	) = 1 Then $OU = "OU=Traffic Service Unit,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_100	) = 1 Then $OU = "OU=West Service Unit,OU=Public Works,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_101	) = 1 Then $OU = "OU=County Center,OU=Real Estate,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_102	) = 1 Then $OU = "OU=Survey Office,OU=Real Estate,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_103	) = 1 Then $OU = "OU=Warehouse,OU=Real Estate,OU=Infrastructure and Development Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_104	) = 1 Then $OU = "OU=County Center,OU=Risk Management and Safety,OU=Business and Support Services,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_105	) = 1 Then $OU = "OU=County Center,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_106	) = 1 Then $OU = "OU=Lee Davis,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"

		If GUICtrlRead (	$radio_107	) = 1 Then $OU = "OU=Plant City,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_110	) = 1 Then $OU = "OU=Remote Sites,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_111	) = 1 Then $OU = "OU=Ruskin,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_112	) = 1 Then $OU = "OU=UCRC,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_113	) = 1 Then $OU = "OU=West Tampa,OU=Social Services,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_114	) = 1 Then $OU = "OU=County Center,OU=Strategic Planning and Grants Mgmt,OU=Chief Financial Officer,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_115	) = 1 Then $OU = "OU=Lee Davis,OU=Sunshine Line,OU=Family and Aging Services,OU=Public Safety and Community Services,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_116	) = 1 Then $OU = "OU=County Center,OU=THHI,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_117	) = 1 Then $OU = "OU=Pauls Drive,OU=Veterans Affairs,OU=Consumer and Veterans Affairs,DC=hcbocc,DC=ad"

;~		If GUICtrlRead (	$radio_123	) = 1 Then $OU = "OU=IE Kiosks,OU=Kiosks,DC=hcbocc,DC=ad"
		If GUICtrlRead (	$radio_124	) = 1 Then $OU = "OU=Really Defunct,OU=Defunct Computer Accounts,DC=hcbocc,DC=ad"

		If GUICtrlRead ( $radio_T1 ) = 1 Then $Type = "OU=Desktops,"
		If GUICtrlRead ( $radio_T2 ) = 1 Then $Type = "OU=Laptops,"

		If GUICtrlRead ( $radio_124 ) = 1 Then $Type = ""
;~		If GUICtrlRead ( $radio_123 ) = 1 Then $Type = ""

		If $msg = $MoveButton Then MoveIt ( )
		If $msg = $CancelButton Then Exit

		Sleep ( 100 )
	Until $msg = $GUI_EVENT_CLOSE
EndFunc

Func _MakeGUI ( )
	GUICreate ( $ScriptName, 1100 , 640 , Default , Default )
	;~									Distance from		left, top,    Width , Height
		$MoveButton = 	GUICtrlCreateButton	( "Move", 		790 , 32 , 		100 ,  30 )
		$CancelButton = GUICtrlCreateButton	( "Exit", 		899 , 32 , 		100 ,  30 )
		$group_1 = 		GUICtrlCreateGroup 	( "Type", 		 30 , 22 , 		170 ,  50 )
		$group_2 = 		GUICtrlCreateGroup 	( "Pick an OU",  30 , 90 , 	   1000 , 530 )
	GUICtrlCreateLabel 						( "Enter PCN:", 300 , 42 ,  Default	, Default )
		$GUI_PCN = 		GUICtrlCreateInput 	( ""          , 360 , 38 ,      300 ,  20 )
	GUIStartGroup ( )
		$radio_T1 = GUICtrlCreateRadio ( "Desktop",  50 , 42 , 60 , 20 )
		$radio_T2 = GUICtrlCreateRadio ( "Laptop" , 120 , 42 , 70 , 20 )

	GUIStartGroup ( )
		$radio_00	=	GUICtrlCreateRadio ( "911 Administration" ,	50,	110	-1,	-1 )
		$radio_01	=	GUICtrlCreateRadio ( "Affordable Housing" ,	50,	140	-1,	-1 )
		$radio_02	=	GUICtrlCreateRadio ( "Aging Svcs - CC" ,	50,	170	-1,	-1 )
		$radio_03	=	GUICtrlCreateRadio ( "Aging Svcs - Remote" ,	50,	200,	-1,	-1 )
		$radio_04	=	GUICtrlCreateRadio ( "Animal Svcs" ,	50,	230,	-1,	-1 )
		$radio_05	=	GUICtrlCreateRadio ( "BOCC" ,	50,	260,	-1,	-1 )
		$radio_06	=	GUICtrlCreateRadio ( "Budget" ,	50,	290,	-1,	-1 )
		$radio_07	=	GUICtrlCreateRadio ( "Child Care Licensing" ,	50,	320,	-1,	-1 )
		$radio_08	=	GUICtrlCreateRadio ( "Childrens  Board" ,	50,	350,	-1,	-1 )
		$radio_09	=	GUICtrlCreateRadio ( "Childrens Services" ,	50,	380,	-1,	-1 )
		$radio_10	=	GUICtrlCreateRadio ( "Citizen Boards" ,	50,	410,	-1,	-1 )
		$radio_11	=	GUICtrlCreateRadio ( "Citizen and Comm. Support" ,	50,	440,	-1,	-1 )
		$radio_12	=	GUICtrlCreateRadio ( "Civil Service" ,	50,	470,	-1,	-1 )
		$radio_13	=	GUICtrlCreateRadio ( "Code Enforcement" ,	50,	500,	-1,	-1 )
		$radio_14	=	GUICtrlCreateRadio ( "Communications" ,	50,	530,	-1,	-1 )
		$radio_15	=	GUICtrlCreateRadio ( "Consumer Protection" ,	50,	560,	-1,	-1 )
		$radio_16	=	GUICtrlCreateRadio ( "County Administrator" ,	50,	590,	-1,	-1 )

		$radio_17	=	GUICtrlCreateRadio ( "County Attorney" ,	200,	110	-1,	-1 )
		$radio_20	=	GUICtrlCreateRadio ( "Criminal Justice" ,	200,	140	-1,	-1 )
		$radio_21	=	GUICtrlCreateRadio ( "Dev Svcs - CC" ,	200,	170	-1,	-1 )
		$radio_22	=	GUICtrlCreateRadio ( "Dev Svcs - South Shore" ,	200,	200,	-1,	-1 )
		$radio_23	=	GUICtrlCreateRadio ( "Economic Dev - CC" ,	200,	230,	-1,	-1 )
		$radio_24	=	GUICtrlCreateRadio ( "Economic Dev - SBIC" ,	200,	260,	-1,	-1 )
		$radio_25	=	GUICtrlCreateRadio ( "Emergency Dispatch - EOC" ,	200,	290,	-1,	-1 )
		$radio_26	=	GUICtrlCreateRadio ( "Emergency MGMT - EOC" ,	200,	320,	-1,	-1 )
		$radio_27	=	GUICtrlCreateRadio ( "Equal Opportunity" ,	200,	350,	-1,	-1 )
		$radio_28	=	GUICtrlCreateRadio ( "ESQA" ,	200,	380,	-1,	-1 )
		$radio_29	=	GUICtrlCreateRadio ( "Extension Svcs" ,	200,	410,	-1,	-1 )
		$radio_30	=	GUICtrlCreateRadio ( "Facilities Management" ,	200,	440,	-1,	-1 )
		$radio_31	=	GUICtrlCreateRadio ( "Fire Marshall" ,	200,	470,	-1,	-1 )
		$radio_32	=	GUICtrlCreateRadio ( "Fire Rescue" ,	200,	500,	-1,	-1 )
		$radio_33	=	GUICtrlCreateRadio ( "Fire Stations" ,	200,	530,	-1,	-1 )
		$radio_34	=	GUICtrlCreateRadio ( "FSS - IDS" ,	200,	560,	-1,	-1 )
		$radio_35	=	GUICtrlCreateRadio ( "FSS - PSCS" ,	200,	590,	-1,	-1 )

		$radio_36	=	GUICtrlCreateRadio ( "Fleet - HQ" ,	350,	110	-1,	-1 )
		$radio_37	=	GUICtrlCreateRadio ( "Fleet - Remote" ,	350,	140	-1,	-1 )
		$radio_40	=	GUICtrlCreateRadio ( "Grants and Quality Assurance" ,	350,	170	-1,	-1 )
		$radio_41	=	GUICtrlCreateRadio ( "Guardian Ad Litem"  ,	350,	200,	-1,	-1 )
		$radio_42	=	GUICtrlCreateRadio ( "Head Start - Main" ,	350,	230,	-1,	-1 )
		$radio_43	=	GUICtrlCreateRadio ( "Head Start - Remote" ,	350,	260,	-1,	-1 )
		$radio_44	=	GUICtrlCreateRadio ( "Health Care Svc - CC" ,	350,	290,	-1,	-1 )
		$radio_45	=	GUICtrlCreateRadio ( "Health Care Svc - Lee Davis" ,	350,	320,	-1,	-1 )
		$radio_46	=	GUICtrlCreateRadio ( "Health Care Svc - Plant City" ,	350,	350,	-1,	-1 )
		$radio_47	=	GUICtrlCreateRadio ( "Health Care Svc - Remote" ,	350,	380,	-1,	-1 )
		$radio_50	=	GUICtrlCreateRadio ( "Health Care Svc - Ruskin" ,	350,	410,	-1,	-1 )
		$radio_51	=	GUICtrlCreateRadio ( "Health Care Svc - UCRC" ,	350,	440,	-1,	-1 )
		$radio_52	=	GUICtrlCreateRadio ( "Health Care Svc - West Tampa" ,	350,	470,	-1,	-1 )
		$radio_53	=	GUICtrlCreateRadio ( "Homeless" ,	350,	500,	-1,	-1 )
		$radio_54	=	GUICtrlCreateRadio ( "Human Resources" ,	350,	530,	-1,	-1 )
		$radio_55	=	GUICtrlCreateRadio ( "ITS - CC" ,	350,	560,	-1,	-1 )
		$radio_56	=	GUICtrlCreateRadio ( "ITS - Sabal Park" ,	350,	590,	-1,	-1 )

		$radio_57	=	GUICtrlCreateRadio ( "Internal Performance Auditor" ,	530,	110	-1,	-1 )
		$radio_60	=	GUICtrlCreateRadio ( "Law Library" ,	530,	140	-1,	-1 )
		$radio_61	=	GUICtrlCreateRadio ( "Library Svcs - Main Library" ,	530,	170	-1,	-1 )
		$radio_62	=	GUICtrlCreateRadio ( "Medical Examiner" ,	530,	200,	-1,	-1 )
		$radio_63	=	GUICtrlCreateRadio ( "Office of Community Affairs" ,	530,	230,	-1,	-1 )
		$radio_64	=	GUICtrlCreateRadio ( "Ops. and Legislative Affairs" ,	530,	260,	-1,	-1 )
		$radio_65	=	GUICtrlCreateRadio ( "Parks - Pinebrooke" ,	530,	290,	-1,	-1 )
		$radio_66	=	GUICtrlCreateRadio ( "Parks - Remote" ,	530,	320,	-1,	-1 )
		$radio_67	=	GUICtrlCreateRadio ( "Procurement" ,	530,	350,	-1,	-1 )
		$radio_68	=	GUICtrlCreateRadio ( "Public Transportation" ,	530,	380,	-1,	-1 )
		$radio_69	=	GUICtrlCreateRadio ( "PUD - BSOC" ,	530,	410,	-1,	-1 )
		$radio_70	=	GUICtrlCreateRadio ( "PUD - Central Hillsborough" ,	530,	440,	-1,	-1 )
		$radio_71	=	GUICtrlCreateRadio ( "PUD - Dellwood" ,	530,	470,	-1,	-1 )
		$radio_72	=	GUICtrlCreateRadio ( "PUD - Falkenburg" ,	530,	500,	-1,	-1 )
		$radio_73	=	GUICtrlCreateRadio ( "PUD - Fawn Ridge" ,	530,	530,	-1,	-1 )
		$radio_74	=	GUICtrlCreateRadio ( "PUD - Lake Park" ,	530,	560,	-1,	-1 )
		$radio_75	=	GUICtrlCreateRadio ( "PUD - Lithia" ,	530,	590,	-1,	-1 )
		$radio_76	=	GUICtrlCreateRadio ( "PUD - Mobley" ,	530,	500,	-1,	-1 )
		$radio_80	=	GUICtrlCreateRadio ( "PUD - North Line" ,	530,	530,	-1,	-1 )
		$radio_81	=	GUICtrlCreateRadio ( "PUD - Premiere" ,	530,	560,	-1,	-1 )
		$radio_82	=	GUICtrlCreateRadio ( "PUD - Remote Sites" ,	530,	590,	-1,	-1 )

		$radio_83	=	GUICtrlCreateRadio ( "PUD - RiverOaks" ,	690,	110,	-1,	-1 )
		$radio_84	=	GUICtrlCreateRadio ( "PUD - South Line" ,	690,	140,	-1,	-1 )
		$radio_85	=	GUICtrlCreateRadio ( "PUD - South Shore" ,	690,	170,	-1,	-1 )
		$radio_86	=	GUICtrlCreateRadio ( "PUD - Teco Rd" ,	690,	200,	-1,	-1 )
		$radio_87	=	GUICtrlCreateRadio ( "PUD - Twiggs" ,	690,	230,	-1,	-1 )
		$radio_88	=	GUICtrlCreateRadio ( "PUD - Valrico" ,	690,	260,	-1,	-1 )
		$radio_89	=	GUICtrlCreateRadio ( "PW - CC" ,	690,	290,	-1,	-1 )
		$radio_90	=	GUICtrlCreateRadio ( "PW - CountyWide Service Unit" ,	690,	320,	-1,	-1 )
		$radio_91	=	GUICtrlCreateRadio ( "PW - East Service Unit" ,	690,	350,	-1,	-1 )
		$radio_92	=	GUICtrlCreateRadio ( "PW - Mosquito Control" ,	690,	380,	-1,	-1 )
		$radio_93	=	GUICtrlCreateRadio ( "PW - South Service Unit" ,	690,	410,	-1,	-1 )
		$radio_94	=	GUICtrlCreateRadio ( "PW - Specialized Svcs" ,	690,	440,	-1,	-1 )
		$radio_95	=	GUICtrlCreateRadio ( "PW - Traffic Service Unit" ,	690,	470,	-1,	-1 )
		$radio_100	=	GUICtrlCreateRadio ( "PW - West Service Unit" ,	690,	500,	-1,	-1 )
		$radio_101	=	GUICtrlCreateRadio ( "Real Estate - CC" ,	690,	530,	-1,	-1 )
		$radio_102	=	GUICtrlCreateRadio ( "Real Estate - Survey" ,	690,	560,	-1,	-1 )
		$radio_103	=	GUICtrlCreateRadio ( "Real Estate - Warehouse" ,	690,	590,	-1,	-1 )

		$radio_104	=	GUICtrlCreateRadio ( "Risk Mgmt and Safety" ,	875,	110,	-1,	-1 )
		$radio_105	=	GUICtrlCreateRadio ( "Social Svcs - CC" ,	875,	140,	-1,	-1 )
		$radio_106	=	GUICtrlCreateRadio ( "Social Svcs - Lee Davis" ,	875,	170,	-1,	-1 )
		$radio_107	=	GUICtrlCreateRadio ( "Social Svcs - Plant City" ,	875,	200,	-1,	-1 )
		$radio_110	=	GUICtrlCreateRadio ( "Social Svcs - Remote" ,	875,	230,	-1,	-1 )
		$radio_111	=	GUICtrlCreateRadio ( "Social Svcs - Ruskin" ,	875,	260,	-1,	-1 )
		$radio_112	=	GUICtrlCreateRadio ( "Social Svcs - UCRC" ,	875,	290,	-1,	-1 )
		$radio_113	=	GUICtrlCreateRadio ( "Social Svcs - West Tampa" ,	875,	320,	-1,	-1 )
		$radio_114	=	GUICtrlCreateRadio ( "Strategic Planning - CC" ,	875,	350,	-1,	-1 )
		$radio_115	=	GUICtrlCreateRadio ( "Sunshine Line" ,	875,	380,	-1,	-1 )
		$radio_116	=	GUICtrlCreateRadio ( "THHI" ,	875,	410,	-1,	-1 )
		$radio_117	=	GUICtrlCreateRadio ( "Veterans Affairs" ,	875,	440,	-1,	-1 )

		$radio_124	= 	GUICtrlCreateRadio ( "Disabled + Really Defunct", 	875,	590,	-1,	-1 )


	;~	$radio_123	=	GUICtrlCreateRadio ( "Kiosk", 	875,	560,	-1,	-1 ) ;~ Deprecated for command and control

	GUICtrlSetState ( $MoveButton, $GUI_FOCUS + $GUI_DEFBUTTON )
	GUISetState ( )
EndFunc

Func MoveIt ( )
	If $Server = "" Then
		$GetServer = Run ( "dsquery.exe server -hasfsmo pdc -o rdn" , @SystemDir , @SW_HIDE , $STDOUT_CHILD )
		ProcessWaitClose ( $GetServer )
		$Server = StdoutRead ( $GetServer )
		$Server = StringTrimRight ( $Server , 2 )
	EndIf

	;~ User presses 'Move Button', start sanity checks
	If $msg = $MoveButton Then
		$GetHostname = GUICtrlRead ( $GUI_PCN )
		If StringLen ( $GetHostname ) < 6 Then
			_Error ( "PCN must contain at least 6 characters." )
			Return
		EndIf

		;~ Check #1, Was "Desktop" or "Laptop" selected? If not, error, return to the top ofthe function
		If GUICtrlRead ( $radio_T1 ) = 4 Then ;
			If GUICtrlRead ( $radio_T2 ) = 4 Then
				_Error ( "PC type (desktop or laptop) must be selected." )
				Return
			EndIf
		EndIf
		;~ Check #2: Was an OU selected? If not, return
		If $OU = "" Then
			_Error ( "An OU must be selected." )
			Return
		EndIf

		;~ Get the Fully-Qualified Domain Name of the PC from the Domain controller *Needs more notes, not sure what's happening*
		$FQDN = Run ( "dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1", @SystemDir , @SW_HIDE , 2 )
		ProcessWaitClose ( $FQDN )
		While 1
			$HostName = StdoutRead ( $FQDN )
			If @error Then ExitLoop
			If Not $HostName = 0 Then ExitLoop
		WEnd

		If $HostName = "" then
			$GetServer = Run ( "dsquery.exe server -hasfsmo pdc -o rdn" , @SystemDir , @SW_HIDE , $STDOUT_CHILD )
			ProcessWaitClose ( $GetServer )
			$Server = StdoutRead ( $GetServer )
			$Server = StringTrimRight ( $Server , 2 )

;~ 			$FQDN = Run ( @ComSpec & " /c dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1", @SystemDir , @SW_HIDE , 2 )
			$FQDN = Run ( "dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1", @SystemDir , @SW_HIDE , 2 )
			ProcessWaitClose ( $FQDN )
			While 1
				$HostName = StdoutRead ( $FQDN )
				If @error Then ExitLoop
				If Not $HostName = 0 Then ExitLoop
			WEnd
		EndIf

;~ 		MsgBox ( 0 , $ScriptName , $HostName ) ;~ Diag message box

		If $HostName = "" Then
			_Error ( "A variable turned up empty which means the DC does not know about the PC." & @CRLF & "It's possible that the PC was deleted from hcbocc.ad, or was never joined.       " & @CRLF & "Double check the PCN." )
			Return
		EndIf

		$FQOU = StringFormat ( '"%s%s"', $Type, $OU )
;~		MsgBox ( 0, $ScriptName , $FQOU )

		$Hostname = StringTrimLeft ( $Hostname , 1 )
		$Hostname = StringTrimRight ( $Hostname , 3 )

;~ 		MsgBox ( 0 , $ScriptName , $HostName ) ;~ Diag message box

		If MsgBox ( 262180, $ScriptName, "Do the following?" & @CRLF & "Move:" & @CRLF & '"' & $HostName & '"' & @CRLF & "To:" & @CRLF & $FQOU & @CRLF & @CRLF & "(" & "using " & $Server & ")" ) = 6 Then
			$MoveIt = RunWait ( @ComSpec & " /c for /f ""delims=;"" %A in ('@dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1^') do dsmove.exe %A -newparent " & $FQOU & " -server " & $Server & "", @SystemDir , @SW_HIDE )
			$MoveIt =     Run ( @ComSpec & " /c for /f ""delims=;"" %A in ('@dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1^') do for /f %B in ('@dsquery.exe server -o rdn^') do dsmove.exe %A -newparent " & $FQOU & " -server %B", @SystemDir , @SW_HIDE )

			ProgressOn ( "Move to OU", "Please wait while stuff happens..." )

			;For $i = 1 To 100 Step 1.5
					;Sleep ( 500 )
					;ProgressSet ( $i, $Saying[$RID] )
					;If Not ProcessExists ( $MoveIt ) Then ExitLoop
				;Next

			RunWait ( "dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1|dsmod.exe computer -disabled no ", @SystemDir , @SW_HIDE )
;~			MsgBox ( 0 , $ScriptName , $HostName ) ;~ Diag message box
			If GUICtrlRead ( $radio_124 ) = 1 Then $MoveIt = Run ( @ComSpec & " /c for /f %B in ( '@dsquery.exe server -o rdn' ) do dsmod.exe computer """ &  $HostName & """ -disabled yes -s %B" , @SystemDir , @SW_HIDE )
			ProcessWaitClose ( $MoveIt )
			ProgressSet ( 100, "", "" )
			Sleep ( 1000 )
			ProcessWaitClose ( $MoveIt )
			ProgressOff ( )

			MsgBox ( 262208, $ScriptName , "Move complete!               " & @CRLF & "(" & "The new Hostname is: " & $Hostname & ")"  )
		EndIf
	EndIf
EndFunc

Func _FileInstaller ( )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsquery.exe" , @SystemDir & "\dsquery.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsmove.exe" , @SystemDir & "\dsmove.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsmod.exe" , @SystemDir & "\dsmod.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsget.exe" , @SystemDir & "\dsget.exe", 0 )
EndFunc

Func _Error ( $ErrorReason )
	ProgressOff ( )
	MsgBox ( 4096 , $ScriptName , "Holy Mackerel" & @CRLF & @CRLF & "This is the problem: " & @CRLF & @CRLF & $ErrorReason )
	Return
EndFunc


Func _MembershipQuery ( )
 	$MembershipQuery = Run ( @ComSpec & ' /c dsget.exe group "CN=RootOUAdmins,CN=Users,DC=hcbocc,DC=ad" -members | find /i "' & @UserName & '"', @SystemDir , @SW_HIDE, $STDOUT_CHILD )
 	ProcessWaitClose ( $MembershipQuery )

 	While 1
 		$Member = StdoutRead ( $MembershipQuery )
 		Sleep ( 500 )
 		If @error Then ExitLoop
 		If Not $Member = 0 Then ExitLoop

 	WEnd
 	$result = StringInStr($Member, @UserName, 0)
 	If $result <= 1 Then
 		MsgBox ( 262160, "Well, crap!", "You can't use this." & @CRLF & @CRLF & "You don't appear to be in the RootOUAdmins group." & @CRLF & @CRLF & $Member )
 		Exit
 	EndIf
EndFunc

;~ Revision history
;~  23 Jul 2009 	First build
;~  03 Aug 2009 	Changed to query the site DC instead of CTYCTR-DC1/2
;~  ** Sep 2009 	Added "RootOU Admin" check
;~  04 Jan 2010 	Removed defunct OUs and added new OUs
;~  06 Jan 2010 	Added progress bar; Happy birthday, Reina!
;~  07 Jan 2010 	Added some eye candy while processing
;~  11 Jan 2010 	Added missing OU for Headstart Remote
;~	22 Jan 2010		Recompiled under AutoIt 3.3.4.0
;~ 	26 Jan 2010 	Added missing OU for Criminal Justice, re-numbered all OUs
;~ 	27 Jan 2010 	Changed PW-Chapman's $server to CTYCTR-DC1
;~ 	01 Feb 2010 	Changed default to CTYCTR-DC1 if the selected DC doesn't know about the PC
;~ 					Fixed PCs not being disabled when going to Defunct
;~ 	09 Feb 2010 	Updated "kiosk" OU
;~  11 Mar 2010 	Updated "Survey" OU
;~  15 Mar 2010 	Added a line to move the pc by its own server first
;~ 	31 Mar 2010 	Removed more defunct OUs and added new OUs
;~  09 Jun 2010 	Fixed early completion with certain sites
;~  28 Mar 2011 	Made CTYCTR-DC3 the new default
;~  25 Jul 2011 	Re-enable PC accounts if not going to "Really Defunct"
;~  17 Aug 2011 	Removed (Commented) group membership check.
;~ 	28 Nov 2011 	Added _Singleton ( ) to prevent multilaunch
;~ 					Moved LyricChooser, MembershipQuery, FileInstaller to their own functions
;~ 	09 Dec 2011 	Added some error checking for minimum PCN length and not picking a type
;~ 					Moved the heavy lifting out into Func MoveIt ( )
;~ 	22 Mar 2012 	DSMOD disable now uses the site DC instead of the default
;~ 					Moved Func _MakeGUI () out of Func _Main ()
;~ 	 				Added Func _Error () and redirected all error dialogs to it
;~ 	 				Default DC is now based on dsquery "hasfsmo" property
;~  				Simplified removing $Type info from certain OUs (kiosk, defunct)
;~  12 Apr 2012 	Fixed PCs not being disabled when added to "Really Defunct"
;~ 	09 May 2012 	Really fixed PCs not being disabled when added to "Really Defunct"
;~ 					DSMOD disable now uses all DCs
;~ 	19 Dec 2012 	New OU structure. Ugh.
;~ 	20 Dec 2012 	Fixed line lengths/spacing with new OU names
;~	17 Nov 2015		Begin OU cleanup, change Output location, updated OU list
;~  07 Dec 2015		More OU and cosmetic changes, removed lyricChooser, code cleanup