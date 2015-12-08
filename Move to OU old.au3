#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=Nimbus Logo.ico
#AutoIt3Wrapper_Outfile=Z:\Automate\app\Move to OU.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Description=Moves a PC account to a selected OU.
#AutoIt3Wrapper_Res_Fileversion=2012.4.12.0
#AutoIt3Wrapper_Res_LegalCopyright=(c) 2009 Hillsborough County ITS (jrs)
#AutoIt3Wrapper_Res_Language=1033
#AutoIt3Wrapper_Res_requestedExecutionLevel=asInvoker
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <Constants.au3>
#Include <Misc.au3>

Opt ( 'MustDeclareVars', 1 )
Opt ( "GUICoordMode", 1 )

if _Singleton ( @ScriptName , 1 ) = 0 Then
	Exit
EndIf

Local $ScriptName = StringLeft ( @ScriptName , (StringLen ( @ScriptName ) - 4) )
Local $MoveButton, $CancelButton, $group_1
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
Local $group_2, $radio_T1, $radio_T2, $Type
Local $msg, $GUI_PCN, $GetHostname, $Server , $GetServer
Local $HostName, $FQDN, $ButtonState, $OU, $FQOU, $MoveIt
Local $RID, $RID1, $Saying

_FileInstaller ( )
_MakeGUI ( )
_Main ( )

Func _Main ( )
	Do
		$Server = ""
		$msg = GUIGetMsg ( )

		If GUICtrlRead ( $radio_00 ) = 1 Then
			$OU = "OU=County Center,OU=911 Administration,DC=hcbocc,DC=ad"
			$Server = "e911"
		ElseIf GUICtrlRead ( $radio_01 ) = 1 Then
			$OU = "OU=Pinebrooke,OU=Affordable Housing Office,DC=hcbocc,DC=ad"
			$Server = "HOUSING"
		ElseIf GUICtrlRead ( $radio_02 ) = 1 Then
			$OU = "OU=Brandon,OU=Aging Services,DC=hcbocc,DC=ad"
			$Server = "AS-BRANDON"
		ElseIf GUICtrlRead ( $radio_03 ) = 1 Then
			$OU = "OU=County Center,OU=Aging Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_04 ) = 1 Then
			$OU = "OU=Headstart,OU=Aging Services,DC=hcbocc,DC=ad"
			$Server = "HEADSTART"
		ElseIf GUICtrlRead ( $radio_05 ) = 1 Then
			$OU = "OU=Remote Sites,OU=Aging Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_06 ) = 1 Then
			$OU = "OU=WestShore,OU=Aging Services,DC=hcbocc,DC=ad"
			$Server = "AS-WESTSHORE"
		ElseIf GUICtrlRead ( $radio_07 ) = 1 Then
			$OU = "OU=Falkenburg,OU=Animal Services,DC=hcbocc,DC=ad"
			$Server = "HCAS"
		ElseIf GUICtrlRead ( $radio_08 ) = 1 Then
			$OU = "OU=County Center,OU=BOCC,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_09 ) = 1 Then
			$OU = "OU=Child Care Licensing,OU=Childrens Services,DC=hcbocc,DC=ad"
			$Server = "CS-LAKEMAG"
		ElseIf GUICtrlRead ( $radio_10 ) = 1 Then
			$OU = "OU=Haven Poe,OU=Childrens Services,DC=hcbocc,DC=ad"
			$Server = "CS-HPOE"
		ElseIf GUICtrlRead ( $radio_11 ) = 1 Then
			$OU = "OU=HeadStart,OU=Childrens Services,DC=hcbocc,DC=ad"
			$Server = "HEADSTART"
		ElseIf GUICtrlRead ( $radio_12 ) = 1 Then
			$OU = "OU=Remote Computers,OU=HeadStart,OU=Childrens Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_13 ) = 1 Then
			$OU = "OU=Lake Magdalene,OU=Childrens Services,DC=hcbocc,DC=ad"
			$Server = "CS-LAKEMAG"
		ElseIf GUICtrlRead ( $radio_14 ) = 1 Then
			$OU = "OU=County Center,OU=Citizen Boards,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_15 ) = 1 Then
			$OU = "OU=County Center,OU=Citizens Action Center,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_20 ) = 1 Then
			$OU = "OU=County Center,OU=Civil Service,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_21 ) = 1 Then
			$OU = "OU=Pinebrooke,OU=Code Enforcement,DC=hcbocc,DC=ad"
			$Server = "HOUSING"
		ElseIf GUICtrlRead ( $radio_22 ) = 1 Then
			$OU = "OU=County Center,OU=Communications,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_23 ) = 1 Then
			$OU = "OU=Consumer Protection,DC=hcbocc,DC=ad"
			$Server = "Housing"
		ElseIf GUICtrlRead ( $radio_24 ) = 1 Then
			$OU = "OU=County Center,OU=County Administrator,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_25 ) = 1 Then
			$OU = "OU=County Center,OU=County Attorney,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_26 ) = 1 Then
			$OU = "OU=Main Site,OU=County Extension,DC=hcbocc,DC=ad"
			$Server = "COOP"
		ElseIf GUICtrlRead ( $radio_27 ) = 1 Then
			$OU = "OU=Criminal Justice,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_28 ) = 1 Then
			$OU = "OU=County Center,OU=Debt Management,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_29 ) = 1 Then
			$OU = "OU=County Center,OU=Economic Development,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_30 ) = 1 Then
			$OU = "OU=SBIC,OU=Economic Development,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_31 ) = 1 Then
			$OU = "OU=Headquarters,OU=Emergency Operations Center,DC=hcbocc,DC=ad"
			$Server = "EOC"
		ElseIf GUICtrlRead ( $radio_32 ) = 1 Then
			$OU = "OU=700 Twiggs,OU=Equal Opportunity,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_33 ) = 1 Then
			$OU = "OU=Fire Marshall,OU=Fire Rescue,DC=hcbocc,DC=ad"
			$Server = "FIRE-RESCUE"
		ElseIf GUICtrlRead ( $radio_34 ) = 1 Then
			$OU = "OU=Fire Rescue,OU=Fire Rescue,DC=hcbocc,DC=ad"
			$Server = "FIRE-RESCUE"
		ElseIf GUICtrlRead ( $radio_35 ) = 1 Then
			$OU = "OU=Headquarters,OU=Fleet,DC=hcbocc,DC=ad"
			$Server = "FLEETMGMT"
		ElseIf GUICtrlRead ( $radio_40 ) = 1 Then
			$OU = "OU=Remote Sites,OU=Fleet,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_41 ) = 1 Then
			$OU = "OU=Main Site,OU=Guardian Ad Litem,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_42 ) = 1 Then
			$OU = "OU=County Center,OU=Health and Social Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_43 ) = 1 Then
			$OU = "OU=Headstart,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HEADSTART"
		ElseIf GUICtrlRead ( $radio_44 ) = 1 Then
			$OU = "OU=Lee Davis,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-LD"
		ElseIf GUICtrlRead ( $radio_45 ) = 1 Then
			$OU = "OU=MidTown,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-MT"
		ElseIf GUICtrlRead ( $radio_46 ) = 1 Then
			$OU = "OU=Plant City,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-PC"
		ElseIf GUICtrlRead ( $radio_47 ) = 1 Then
			$OU = "OU=Ruskin,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-RUSKIN"
		ElseIf GUICtrlRead ( $radio_48 ) = 1 Then
			$OU = "OU=Sunshine Line,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-LD"
		ElseIf GUICtrlRead ( $radio_49 ) = 1 Then
			$OU = "OU=Fiscal and Support Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_50 ) = 1 Then
			$OU = "OU=UCRC,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-UCRC"
		ElseIf GUICtrlRead ( $radio_51 ) = 1 Then
			$OU = "OU=Veterans Affairs,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-VET"
		ElseIf GUICtrlRead ( $radio_52 ) = 1 Then
			$OU = "OU=West Tampa,OU=Health and Social Services,DC=hcbocc,DC=ad"
			$Server = "HSS-WT"
		ElseIf GUICtrlRead ( $radio_53 ) = 1 Then
			$OU = "OU=County Center,OU=Human Resources,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_54 ) = 1 Then
			$OU = "OU=Safety,OU=Human Resources,DC=hcbocc,DC=ad"
			$Server = "SABALPARK-DC1"
		ElseIf GUICtrlRead ( $radio_55 ) = 1 Then
			$OU = "OU=Internal Performance Auditor,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_60 ) = 1 Then
			$OU = "OU=County Center,OU=Information and Technology Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_61 ) = 1 Then
			$OU = "OU=SabalPark,OU=Information and Technology Services,DC=hcbocc,DC=ad"
			$Server = "SABALPARK-DC1"
		ElseIf GUICtrlRead ( $radio_62 ) = 1 Then
			$OU = "OU=501 Kennedy,OU=Law Library,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_63 ) = 1 Then
			$OU = "OU=County Center,OU=Legislative Delegation,DC=hcbocc,DC=ad"
;~ 		ElseIf GUICtrlRead ( $radio_64 ) = 1 Then
;~ 			$OU = "OU=Main Library,OU=Library Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_65 ) = 1 Then
			$OU = "OU=County Center,OU=Management and Budget,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_66 ) = 1 Then
			$OU = "OU=Medexam,OU=Medical Examiner,DC=hcbocc,DC=ad"
			$Server = "MEDEXAM"
		ElseIf GUICtrlRead ( $radio_67 ) = 1 Then
			$OU = "OU=Headquarters,OU=Parks,DC=hcbocc,DC=ad"
			$Server = "HOUSING"
		ElseIf GUICtrlRead ( $radio_68 ) = 1 Then
			$OU = "OU=Remote Sites,OU=Parks,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_69 ) = 1 Then
			$OU = "OU=County Center,OU=Planning and Growth Management,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_70 ) = 1 Then
			$OU = "OU=South County,OU=Planning and Growth Management,DC=hcbocc,DC=ad"
			$Server = "PGM-SC"
		ElseIf GUICtrlRead ( $radio_71 ) = 1 Then
			$OU = "OU=County Center,OU=Procurement Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_72 ) = 1 Then
			$OU = "OU=Main Site,OU=Public Transportation,DC=hcbocc,DC=ad"
			$Server = "PUBLICTRANS"
		ElseIf GUICtrlRead ( $radio_73 ) = 1 Then
			$OU = "OU=Central Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-CENTRAL"
		ElseIf GUICtrlRead ( $radio_74 ) = 1 Then
			$OU = "OU=Chapman,OU=Public Works,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_75 ) = 1 Then
			$OU = "OU=County Center,OU=Public Works,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_80 ) = 1 Then
			$OU = "OU=Countywide Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-CTYWD"
		ElseIf GUICtrlRead ( $radio_81 ) = 1 Then
			$OU = "OU=East Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-EAST"
		ElseIf GUICtrlRead ( $radio_82 ) = 1 Then
			$OU = "OU=Mosqito Control,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-MOSQUITO"
		ElseIf GUICtrlRead ( $radio_83 ) = 1 Then
			$OU = "OU=South Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-SOUTH"
		ElseIf GUICtrlRead ( $radio_84 ) = 1 Then
			$OU = "OU=Traffic Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-TRAFFIC"
		ElseIf GUICtrlRead ( $radio_85 ) = 1 Then
			$OU = "OU=West Service Unit,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "PW-WEST"
		ElseIf GUICtrlRead ( $radio_86 ) = 1 Then
			$OU = "OU=Warehouse,OU=Public Works,DC=hcbocc,DC=ad"
			$Server = "WAREHOUSE"
		ElseIf GUICtrlRead ( $radio_87 ) = 1 Then
			$OU = "OU=County Center,OU=Real Estate,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_88 ) = 1 Then
			$OU = "OU=Facilities,OU=Real Estate,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_89 ) = 1 Then
			$OU = "OU=Park Planning & Design,OU=Real Estate,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_90 ) = 1 Then
			$OU = "OU=Remote Sites,OU=Real Estate,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_91 ) = 1 Then
			$OU = "OU=Survey Office,OU=Real Estate,DC=hcbocc,DC=ad"
			$Server = "Warehouse"
		ElseIf GUICtrlRead ( $radio_92 ) = 1 Then
			$OU = "OU=Warehouse,OU=Real Estate,DC=hcbocc,DC=ad"
			$Server = "WAREHOUSE"
		ElseIf GUICtrlRead ( $radio_93 ) = 1 Then
			$OU = "OU=Section 8,DC=hcbocc,DC=ad"
			$Server = "HEADSTART"
;~ 		ElseIf GUICtrlRead ( $radio_94 ) = 1 Then
;~ 			$OU = "OU=County Center,OU=Security,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_95 ) = 1 Then
			$OU = "OU=County Center,OU=Solid Waste,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_100 ) = 1 Then
			$OU = "OU=Remote Sites,OU=Solid Waste,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_101 ) = 1 Then
			$OU = "OU=BSOC,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-BSOC"
		ElseIf GUICtrlRead ( $radio_102 ) = 1 Then
			$OU = "OU=Central Hillsborough,OU=Water Resource Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_103 ) = 1 Then
			$OU = "OU=County Center,OU=Water Resource Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_104 ) = 1 Then
			$OU = "OU=Falkenburg,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-FALKENBURG"
		ElseIf GUICtrlRead ( $radio_105 ) = 1 Then
			$OU = "OU=Fawn Ridge,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-FAWNRIDGE"
		ElseIf GUICtrlRead ( $radio_106 ) = 1 Then
			$OU = "OU=Lab,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-LAB"
		ElseIf GUICtrlRead ( $radio_107 ) = 1 Then
			$OU = "OU=Lake Park,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-LAKEPARK"
		ElseIf GUICtrlRead ( $radio_108 ) = 1 Then
			$OU = "OU=Lithia,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-LITHIA"
		ElseIf GUICtrlRead ( $radio_109 ) = 1 Then
			$OU = "OU=Mobley,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-MOBLEY"
		ElseIf GUICtrlRead ( $radio_110 ) = 1 Then
			$OU = "OU=North,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-NORTH"
		ElseIf GUICtrlRead ( $radio_111 ) = 1 Then
			$OU = "OU=NorthWest,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-NW"
		ElseIf GUICtrlRead ( $radio_112 ) = 1 Then
			$OU = "OU=RiverOaks,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-RIVEROAKS"
		ElseIf GUICtrlRead ( $radio_113 ) = 1 Then
			$OU = "OU=South,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-SOUTH"
		ElseIf GUICtrlRead ( $radio_114 ) = 1 Then
			$OU = "OU=South Shore,OU=Water Resource Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_115 ) = 1 Then
			$OU = "OU=Teco Rd,OU=Water Resource Services,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_120 ) = 1 Then
			$OU = "OU=Twiggs,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-TWIGGS"
		ElseIf GUICtrlRead ( $radio_121 ) = 1 Then
			$OU = "OU=Valrico,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WRS-VALRICO"
		ElseIf GUICtrlRead ( $radio_122 ) = 1 Then
			$OU = "OU=Warehouse,OU=Water Resource Services,DC=hcbocc,DC=ad"
			$Server = "WAREHOUSE"
		ElseIf GUICtrlRead ( $radio_123 ) = 1 Then
			$OU = "OU=Really Defunct,OU=Defunct Computer Accounts,DC=hcbocc,DC=ad"
		ElseIf GUICtrlRead ( $radio_124 ) = 1 Then
			$OU = "OU=IE Kiosks,OU=Kiosks,DC=hcbocc,DC=ad"
		EndIf

		If GUICtrlRead ( $radio_T1 ) = 1 Then $Type = "OU=Desktops,"
		If GUICtrlRead ( $radio_T2 ) = 1 Then $Type = "OU=Laptops,"

		If GUICtrlRead ( $radio_124 ) = 1 Then $Type = ""
		If GUICtrlRead ( $radio_123 ) = 1 Then $Type = ""
		If GUICtrlRead ( $radio_12  ) = 1 Then $Type = ""

		LyricChooser ( )

		If $msg = $MoveButton Then MoveIt ( )
		If $msg = $CancelButton Then Exit

		Sleep ( 100 )
	Until $msg = $GUI_EVENT_CLOSE
EndFunc


Func _MakeGUI ( )

	GUICreate ( $ScriptName, 1024 , 640 , Default , Default )
		$MoveButton = 	GUICtrlCreateButton	( "Move", 		790 , 32 , 		100 ,  30 )
		$CancelButton = GUICtrlCreateButton	( "Exit", 		899 , 32 , 		100 ,  30 )
		$group_1 = 		GUICtrlCreateGroup 	( "Type", 		 30 , 10 , 		180 ,  70 )
		$group_2 = 		GUICtrlCreateGroup 	( "Pick an OU",  30 , 90 , 		970 , 530 )
	GUICtrlCreateLabel 						( "Enter PCN:", 300 , 42 ,  Default	, Default )
		$GUI_PCN = 		GUICtrlCreateInput 	( ""          , 360 , 38 ,      300 ,  20 )
	GUIStartGroup ( )
		$radio_T1 = GUICtrlCreateRadio ( "Desktop",  50 , 40 , 60 , 20 )
		$radio_T2 = GUICtrlCreateRadio ( "Laptop" , 120 , 40 , 70 , 20 )

	GUIStartGroup ( )
		$radio_00	=	GUICtrlCreateRadio ( "911 Admin",	50,	110,	160,	20 )
		$radio_01	=	GUICtrlCreateRadio ( "Affordable Housing Office",	50,	140,	160,	20 )
		$radio_02	=	GUICtrlCreateRadio ( "Aging Svc - Brandon",	50,	170,	160,	20 )
		$radio_03	=	GUICtrlCreateRadio ( "Aging Svc - CtyCtr",	50,	200,	160,	20 )
		$radio_04	=	GUICtrlCreateRadio ( "Aging Svc - Headstart",	50,	230,	160,	20 )
		$radio_05	=	GUICtrlCreateRadio ( "Aging Svc - Remote",	50,	260,	160,	20 )
		$radio_06	=	GUICtrlCreateRadio ( "Aging Svc - WestShore",	50,	290,	160,	20 )
		$radio_07	=	GUICtrlCreateRadio ( "Animal Svc",	50,	320,	160,	20 )
		$radio_08	=	GUICtrlCreateRadio ( "BOCC",	50,	350,	160,	20 )
		$radio_09	=	GUICtrlCreateRadio ( "Childrens Svc - CCL",	50,	380,	160,	20 )
		$radio_10	=	GUICtrlCreateRadio ( "Childrens Svc - Haven Poe",	50,	410,	160,	20 )
		$radio_11	=	GUICtrlCreateRadio ( "Childrens Svc - HeadStart",	50,	440,	160,	20 )
		$radio_12	=	GUICtrlCreateRadio ( "CS - HeadStart Remote",	50,	470,	160,	20 )
		$radio_13	=	GUICtrlCreateRadio ( "Childrens Svc - Lake Mag",	50,	500,	160,	20 )
		$radio_14	=	GUICtrlCreateRadio ( "Citizen Boards",	50,	530,	160,	20 )
		$radio_15	=	GUICtrlCreateRadio ( "Citizens Action Center",	50,	560,	160,	20 )
		$radio_20	=	GUICtrlCreateRadio ( "Civil Service",	50,	590,	160,	20 )
		$radio_21	=	GUICtrlCreateRadio ( "Code Enforcement",	210,	110,	140,	20 )
		$radio_22	=	GUICtrlCreateRadio ( "Communications",	210,	140,	140,	20 )
		$radio_23	=	GUICtrlCreateRadio ( "Consumer Protection",	210,	170,	140,	20 )
		$radio_24	=	GUICtrlCreateRadio ( "County Administrator",	210,	200,	140,	20 )
		$radio_25	=	GUICtrlCreateRadio ( "County Attorney",	210,	230,	140,	20 )
		$radio_26	=	GUICtrlCreateRadio ( "County Extension",	210,	260,	140,	20 )
		$radio_27	=	GUICtrlCreateRadio ( "Criminal Justice",	210,	290,	140,	20 )
		$radio_28	=	GUICtrlCreateRadio ( "Debt Management",	210,	320,	140,	20 )
		$radio_29	=	GUICtrlCreateRadio ( "Economic Dev",	210,	350,	140,	20 )
		$radio_30	=	GUICtrlCreateRadio ( "Economic Dev SBIC",	210,	380,	140,	20 )
		$radio_31	=	GUICtrlCreateRadio ( "EOC",	210,	410,	140,	20 )
		$radio_32	=	GUICtrlCreateRadio ( "Equal Opportunity",	210,	440,	140,	20 )
		$radio_33	=	GUICtrlCreateRadio ( "Fire Marshall",	210,	470,	140,	20 )
		$radio_34	=	GUICtrlCreateRadio ( "Fire Rescue",	210,	500,	140,	20 )
		$radio_49	=	GUICtrlCreateRadio ( "Fiscal && Support Services",	210,	530,	140,	20 )
		$radio_35	=	GUICtrlCreateRadio ( "Fleet",	210,	560,	140,	20 )
		$radio_40	=	GUICtrlCreateRadio ( "Fleet Remote",	210,	590,	140,	20 )
		$radio_42	=	GUICtrlCreateRadio ( "HSS CtyCtr",	370,	110,	140,	20 )
		$radio_43	=	GUICtrlCreateRadio ( "HSS Headstart",	370,	140,	140,	20 )
		$radio_44	=	GUICtrlCreateRadio ( "HSS Lee Davis",	370,	170,	140,	20 )
		$radio_45	=	GUICtrlCreateRadio ( "HSS MidTown",	370,	200,	140,	20 )
		$radio_46	=	GUICtrlCreateRadio ( "HSS Plant City",	370,	230,	140,	20 )
		$radio_47	=	GUICtrlCreateRadio ( "HSS Ruskin",	370,	260,	140,	20 )
		$radio_48	=	GUICtrlCreateRadio ( "HSS Sunshine Line",	370,	290,	140,	20 )
		$radio_41	=	GUICtrlCreateRadio ( "Guardian Ad Litem",	370,	320,	140,	20 )
		$radio_50	=	GUICtrlCreateRadio ( "HSS UCRC",	370,	350,	140,	20 )
		$radio_51	=	GUICtrlCreateRadio ( "HSS Veterans Affairs",	370,	380,	140,	20 )
		$radio_52	=	GUICtrlCreateRadio ( "HSS West Tampa",	370,	410,	140,	20 )
		$radio_53	=	GUICtrlCreateRadio ( "HR CtyCtr",	370,	440,	140,	20 )
		$radio_54	=	GUICtrlCreateRadio ( "HR Safety",	370,	470,	140,	20 )
		$radio_55	=	GUICtrlCreateRadio ( "Internal Perf Auditor",	370,	500,	140,	20 )
		$radio_60	=	GUICtrlCreateRadio ( "ITS CtyCtr",	370,	530,	140,	20 )
		$radio_61	=	GUICtrlCreateRadio ( "ITS SabalPark",	370,	560,	140,	20 )
		$radio_62	=	GUICtrlCreateRadio ( "Law Library",	370,	590,	140,	20 )
		$radio_63	=	GUICtrlCreateRadio ( "Legislative Delegation",	530,	110,	140,	20 )
	;~ 	$radio_64	=	GUICtrlCreateRadio ( "Library Services",	530,	110,	140,	20 )
		$radio_65	=	GUICtrlCreateRadio ( "Management and Budget",	530,	140,	140,	20 )
		$radio_66	=	GUICtrlCreateRadio ( "Medical Examiner",	530,	170,	140,	20 )
		$radio_67	=	GUICtrlCreateRadio ( "Parks HQ",	530,	200,	140,	20 )
		$radio_68	=	GUICtrlCreateRadio ( "Parks Remote Sites",	530,	230,	140,	20 )
		$radio_69	=	GUICtrlCreateRadio ( "PGM CtyCtr",	530,	260,	140,	20 )
		$radio_70	=	GUICtrlCreateRadio ( "PGM South County",	530,	290,	140,	20 )
		$radio_71	=	GUICtrlCreateRadio ( "Procurement Services",	530,	320,	140,	20 )
		$radio_72	=	GUICtrlCreateRadio ( "Public Transportation",	530,	350,	140,	20 )
		$radio_73	=	GUICtrlCreateRadio ( "Public Works Central",	530,	380,	140,	20 )
		$radio_74	=	GUICtrlCreateRadio ( "Public Works Chapman",	530,	410,	140,	20 )
		$radio_75	=	GUICtrlCreateRadio ( "Public Works CtyCtr",	530,	440,	140,	20 )
		$radio_80	=	GUICtrlCreateRadio ( "Public Works Countywide",	530,	470,	140,	20 )
		$radio_81	=	GUICtrlCreateRadio ( "Public Works East",	530,	500,	140,	20 )
		$radio_82	=	GUICtrlCreateRadio ( "Public Works Mosquito",	530,	530,	140,	20 )
		$radio_83	=	GUICtrlCreateRadio ( "Public Works South",	530,	560,	140,	20 )
		$radio_84	=	GUICtrlCreateRadio ( "Public Works Traffic",	530,	590,	140,	20 )
		$radio_85	=	GUICtrlCreateRadio ( "Public Works Warehouse",	690,	110,	140,	20 )
		$radio_86	=	GUICtrlCreateRadio ( "Public Works West",	690,	140,	140,	20 )
		$radio_87	=	GUICtrlCreateRadio ( "Real Estate CtyCtr",	690,	170,	140,	20 )
		$radio_88	=	GUICtrlCreateRadio ( "Real Estate Facilities",	690,	200,	140,	20 )
		$radio_89	=	GUICtrlCreateRadio ( "Real Estate Park Planning",	690,	230,	140,	20 )
		$radio_90	=	GUICtrlCreateRadio ( "Real Estate Remote Sites ",	690,	260,	140,	20 )
		$radio_91	=	GUICtrlCreateRadio ( "Real Estate Survey ",	690,	290,	140,	20 )
		$radio_92	=	GUICtrlCreateRadio ( "Real Estate Warehouse ",	690,	320,	140,	20 )
		$radio_93	=	GUICtrlCreateRadio ( "Section 8",	690,	350,	140,	20 )
	;~ 	$radio_94	=	GUICtrlCreateRadio ( "Security",	690,	350,	140,	20 )
		$radio_95	=	GUICtrlCreateRadio ( "Solid Waste CtyCtr",	690,	380,	140,	20 )
		$radio_100	=	GUICtrlCreateRadio ( "Solid Waste Remote ",	690,	410,	140,	20 )
		$radio_101	=	GUICtrlCreateRadio ( "WRS BSOC",	690,	440,	140,	20 )
		$radio_102	=	GUICtrlCreateRadio ( "WRS Central ",	690,	470,	140,	20 )
		$radio_103	=	GUICtrlCreateRadio ( "WRS CtyCtr",	690,	500,	140,	20 )
		$radio_104	=	GUICtrlCreateRadio ( "WRS Falkenburg",	690,	530,	140,	20 )
		$radio_105	=	GUICtrlCreateRadio ( "WRS Fawn Ridge",	690,	560,	140,	20 )
		$radio_106	=	GUICtrlCreateRadio ( "WRS Lab",	690,	590,	140,	20 )
		$radio_107	=	GUICtrlCreateRadio ( "WRS Lake Park",	850,	110,	140,	20 )
		$radio_108	=	GUICtrlCreateRadio ( "WRS Lithia",	850,	140,	140,	20 )
		$radio_109	=	GUICtrlCreateRadio ( "WRS Mobley",	850,	170,	140,	20 )
		$radio_110	=	GUICtrlCreateRadio ( "WRS North",	850,	200,	140,	20 )
		$radio_111	=	GUICtrlCreateRadio ( "WRS NorthWest",	850,	230,	140,	20 )
		$radio_112	=	GUICtrlCreateRadio ( "WRS RiverOaks",	850,	260,	140,	20 )
		$radio_113	=	GUICtrlCreateRadio ( "WRS South",	850,	290,	140,	20 )
		$radio_114	=	GUICtrlCreateRadio ( "WRS South Shore",	850,	320,	140,	20 )
		$radio_115	=	GUICtrlCreateRadio ( "WRS Teco Rd",	850,	350,	140,	20 )
		$radio_120	=	GUICtrlCreateRadio ( "WRS Twiggs",	850,	380,	140,	20 )
		$radio_121	=	GUICtrlCreateRadio ( "WRS Valrico",	850,	410,	140,	20 )
		$radio_122	=	GUICtrlCreateRadio ( "WRS Warehouse",	850,	440,	140,	20 )
		$radio_123	=	GUICtrlCreateRadio ( "Really Defunct",	850,	590,	140,	20 )
		$radio_124	=	GUICtrlCreateRadio ( "Kiosk",	850,	560,	140,	21 )

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

	If $msg = $MoveButton Then
		$GetHostname = GUICtrlRead ( $GUI_PCN )
		If StringLen ( $GetHostname ) < 6 Then
			_Error ( "PCN must contain at least 6 characters." )
			Return
		EndIf
		If GUICtrlRead ( $radio_T1 ) = 4 Then
			If GUICtrlRead ( $radio_T2 ) = 4 Then
				_Error ( "PC type (desktop or laptop) must be selected." )
				Return
			EndIf
		EndIf
		If $OU = "" Then
			_Error ( "An OU must be selected." )
			Return
		EndIf

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

;~ 		MsgBox ( 0 , $ScriptName , $HostName )

		If $HostName = "" Then
			_Error ( "A variable turned up empty which means the DC does not know about the PC." & @CRLF & "It's possible that the PC was deleted from hcbocc.ad, or was never joined.       " & @CRLF & "Double check the PCN." )
			Return
		EndIf

		$FQOU = StringFormat ( '"%s%s"', $Type, $OU )

		$Hostname = StringTrimLeft ( $Hostname , 1 )
		$Hostname = StringTrimRight ( $Hostname , 3 )

;~ 		MsgBox ( 0 , $ScriptName , $HostName )

		If MsgBox ( 262180, $ScriptName, "Move the following?" & @CRLF & @CRLF & '"' & $HostName & '"' & @CRLF & @CRLF & "(" & "using " & $Server & ")" ) = 6 Then
			$MoveIt = RunWait ( @ComSpec & " /c for /f ""delims=;"" %A in ('@dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1^') do dsmove.exe %A -newparent " & $FQOU & " -server " & $Server & "", @SystemDir , @SW_HIDE )
			$MoveIt =     Run ( @ComSpec & " /c for /f ""delims=;"" %A in ('@dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1^') do for /f %B in ('@dsquery.exe server -o rdn^') do dsmove.exe %A -newparent " & $FQOU & " -server %B", @SystemDir , @SW_HIDE )

			ProgressOn ( "Move to OU", "Please wait while stuff happens..." )

			For $i = 1 To 100 Step 1.5
				Sleep ( 500 )
				ProgressSet ( $i, $Saying[$RID] )
				If Not ProcessExists ( $MoveIt ) Then ExitLoop
			Next

			RunWait ( "dsquery.exe computer domainroot -name *" & $GetHostname & "* -s " & $Server & " -limit 1|dsmod.exe computer -disabled no ", @SystemDir , @SW_HIDE )
			If GUICtrlRead ( $radio_123 ) = 1 Then $MoveIt = Run ( @ComSpec & " /c for /f %B in ( '@dsquery.exe server -o rdn' ) do dsmod computer """ &  $HostName & """ -disabled yes -s %B" , @SystemDir , @SW_HIDE )
			ProcessWaitClose ( $MoveIt )

			ProgressSet ( 100, "", "" )
			Sleep ( 1000 )
			ProcessWaitClose ( $MoveIt )
			ProgressOff ( )

			MsgBox ( 262208, $ScriptName , "Move complete!                " )
		EndIf
	EndIf
EndFunc

Func LyricChooser ( )
	Dim $Saying[32]
	$RID = Random ( 0, 28, 1 )
	$Saying[0] = '"You''re the reason I feel pain. It feels so good to ' & @CRLF & 'feel again." -- Nirvana, Verse Chorus Verse'
	$Saying[1] = '"More coffee for me boss, ''cause I''m not as messed' & @CRLF & ' up as I want to be!" --TMBG, Hearing Aid'
	$Saying[2] = '"My girl, my girl, don''t lie to me. Tell me, where did' & @CRLF & 'you sleep last night?" --Folk Song, "In the Pines"'
	$Saying[3] = '"In the pines, in the pines, where the sun don''t ever ' & @CRLF & 'shine and I shiver the whole night through."' & @CRLF & ' --Folk Song, "In the Pines"'
	$Saying[4] = '"We could plant a house, we could build a tree. I don''t' & @CRLF & ' even care, we could have all three," she said.' & @CRLF & ' --Nirvana, Breed'
	$Saying[5] = '"She''s actual size but she seems much bigger to me" ' & @CRLF & '--TMBG, Actual Size'
	$Saying[6] = '"I find it hard.. it''s hard to find. Oh well, whatever. ' & @CRLF & ' Nevermind." --Nirvana, Smells Like Teen Spirit'
	$Saying[7] = '"Isn''t it funny how everything works out? ''I guess the ' & @CRLF & ' joke''s on me,'' she said." --NIN, Down in it'
	$Saying[8] = '"I know someday you''ll have a beautiful life. I know ' & @CRLF & ' you''ll be the sun in someone else''s sky. Why ' & @CRLF & 'can''t it be mine?" -- Pearl Jam, Black'
	$Saying[9] = '"I was up above it. Now I''m down in it." ' & @CRLF & ' --NIN, Down in it'
	$Saying[10] = '"I got this friend you see who makes me feel, and I' & @CRLF & ' wanted more than I could steal."  --Nirvana, Lounge Act'
	$Saying[11] = '"And the children still cry, ''Mine''s a 99!''" ' & @CRLF & ' --KLF, Justified and Ancient'
	$Saying[12] = '"No more tears as we roam through the years." ' & @CRLF & ' --KLF, No More Tears'
	$Saying[13] = '"A woman came up to me and said, ''I''d like to' & @CRLF & ' poison your mind, with wrong ideas that appeal to you, ' & @CRLF & 'though I am not unkind.''" --TMBG, Whistling in the Dark'
	$Saying[14] = '"Sweeter than sour, getting thinner by the hour,' & @CRLF & ' falling fast, and I''m running out of gas..." ' & @CRLF & ' --Better Than Ezra, Extra Ordinary'
	$Saying[15] = '"Won''t you believe it? It''s just my luck! No recess!"' & @CRLF & ' --Nirvana, School'
	$Saying[16] = '"Not enough time for all that I want for you. Not enough ' & @CRLF & ' time for every kiss, every touch" ' & @CRLF & ' --InXS, Not Enough Time'
	$Saying[17] = '"If I could just be everything and everyone to you, this ' & @CRLF & ' life would just be so easy." ' & @CRLF & ' --InXS, Not Enough Time'
	$Saying[18] = '"I''m just sitting in my car and waiting for my girl." ' & @CRLF & ' --System of a Down, Hypnotize'
	$Saying[19] = '"I don''t know what to do when she makes me sad. But I ' & @CRLF & ' won''t let it build up inside of me." ' & @CRLF & ' --Slipknot, Vermillion Part 2.'
	$Saying[20] = '"It was only a kiss. It was only a kiss!"' & @CRLF & ' --The Killers, Mr Brightside'
	$Saying[21] = '"I can taste you on my lips and smell you in my clothes." ' & @CRLF & ' --Butthole Surfers, Pepper'
	$Saying[22] = '"I don''t believe that anybody feels the way I do about ' & @CRLF & ' you now." --Oasis, Wonderwall'
	$Saying[23] = '"How many special people change? How many lives are ' & @CRLF & ' living strange?" --Oasis, Champange Supernova'
	$Saying[24] = '"They travel the world in their ice-cream van. They''ve ' & @CRLF & ' voyaged to the bottom of time." ' & @CRLF & ' --KLF, Justified and Ancient'
	$Saying[25] = '"Whatever tomorrow brings, I''l be there with open arms ' & @CRLF & ' and open eyes" --Incubus, Drive'
	$Saying[26] = '"Count the arms and legs and heads and then divide' & @CRLF & ' by five"  -- TMBG, Certain People I Could Name'
	$Saying[27] = '"Why don''t you ask the kids at Tiananmen Square"' & @CRLF & '  --System of a Down, Hypnotize'
	$Saying[28] = '"Your flows are so dumb, it''s like your''re '& @CRLF &' rapping by numbers"' & @CRLF & '  --Optimus Rhyme, Reel Estate'
EndFunc

Func _FileInstaller ( )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsquery.exe" , @SystemDir & "\dsquery.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsmove.exe" , @SystemDir & "\dsmove.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsmod.exe" , @SystemDir & "\dsmod.exe", 0 )
	FileInstall ( "Y:\AutoIt\Source Code\Move To OU\dsget.exe" , @SystemDir & "\dsget.exe", 0 )
EndFunc

Func _Error ( $ErrorReason )
	ProgressOff ( )
	MsgBox ( 4096 , $ScriptName , "Crap!" & @CRLF & @CRLF & "This is the problem: " & @CRLF & @CRLF & $ErrorReason )
	Return
EndFunc


Func MembershipQuery ( )
;~ 	$MembershipQuery = Run ( @ComSpec & ' /c dsget.exe group "CN=RootOUAdmins,CN=Users,DC=hcbocc,DC=ad" -members | find /i "' & @UserName & '"', @SystemDir , @SW_HIDE, $STDOUT_CHILD )
;~ 	ProcessWaitClose ( $MembershipQuery )

;~ 	While 1
;~ 		$Member = StdoutRead ( $MembershipQuery )
;~ 		Sleep ( 500 )
;~ 		If @error Then ExitLoop
;~ 		If Not $Member = 0 Then ExitLoop

;~ 	WEnd
;~ 	$result = StringInStr($Member, @UserName, 0)
;~ 	If $result <= 1 Then
;~ 		MsgBox ( 262160, "Well, crap!", "You can't use this." & @CRLF & @CRLF & "You don't appear to be in the RootOUAdmins group." & @CRLF & @CRLF & $Member )
;~ 		Exit
;~ 	EndIf
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