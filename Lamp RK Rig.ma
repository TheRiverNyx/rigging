//Maya ASCII 2024 scene
//Name: Lamp RK Rig.ma
//Last modified: Tue, Mar 26, 2024 01:17:28 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "RedshiftOptions" -nodeType "RedshiftPostEffects" "redshift4maya" "3.5.24";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.5.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "AB4D31C2-4DB9-499A-04E5-5B9EFC8DB43F";
createNode transform -s -n "persp";
	rename -uid "73FBE9ED-41F8-7E07-8DD6-0394479F91B3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 155.09065540218825 90.98730372955923 67.948860994472938 ;
	setAttr ".r" -type "double3" -23.138352731622511 3665.7999999991548 3.879453481245832e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F849EABA-4B83-78E5-B66B-AA98D0DBAB2B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 180.72201985733733;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "96E98BAB-4669-C187-998B-FBB7519C8362";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5D40D916-451E-C76A-CDA9-B0B387C42A20";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "1F496DC3-423E-7848-DBDA-ABB0D7AE98A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1A6EE7D0-4E0F-20D6-9C5A-91827643F11E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "ED9DAB15-4FDE-FDA4-3624-B2900FB218E4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2220EA8C-4A1D-BE49-3F7D-26B5D4E0BC1C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "Lamp_Asset";
	rename -uid "9496686B-47DB-C565-4CBE-BFA3823E503E";
createNode transform -n "Joints" -p "Lamp_Asset";
	rename -uid "62895385-494B-986F-51ED-AB9E43A168B0";
createNode joint -n "ROOT" -p "Joints";
	rename -uid "D79BFB50-44B5-D873-B86E-69A84D454685";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "Arm_Base_RK_JNT" -p "ROOT";
	rename -uid "1513AF8A-4915-4B26-41AE-8EBA54E170E6";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.762867317940234 49.014194356126517 89.820994717503183 ;
	setAttr ".radi" 2;
createNode joint -n "Arm_Upper_RK_JNT" -p "Arm_Base_RK_JNT";
	rename -uid "AFCA027C-4CA9-7847-BB50-EE8BC1BD5701";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.076975387266219816 0.092689802329720863 99.306054703927899 ;
	setAttr ".radi" 2;
createNode joint -n "Arm_Head_RK_JNT" -p "Arm_Upper_RK_JNT";
	rename -uid "610B3A0F-4778-64AC-93D2-89A22E0A4E70";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 2;
createNode parentConstraint -n "Arm_Head_RK_JNT_parentConstraint1" -p "Arm_Head_RK_JNT";
	rename -uid "5968C67E-4681-2EC7-0E4A-ABA9CE05C1BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Head_FK_JNTW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Head_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 5.3290705182007514e-15 3.5527136788005009e-15 
		-6.2450045135165055e-17 ;
	setAttr ".tg[1].tot" -type "double3" 3.5527136788005009e-15 1.0658141036401503e-14 
		4.8485521153551758e-16 ;
	setAttr ".tg[1].tor" -type "double3" -0.063354847470272188 0.067856720590517297 
		7.1635660930203756e-05 ;
	setAttr ".rst" -type "double3" 16.506432485064138 -7.1054273576010019e-15 2.6664434549239502e-14 ;
	setAttr ".rsrr" -type "double3" 6.2120327107229309e-18 6.2120208622334327e-18 3.3675496802584103e-37 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_Head_RK_JNT_scaleConstraint1" -p "Arm_Head_RK_JNT";
	rename -uid "DEF61433-4351-5A8A-C635-61B42B8D4D86";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Head_FK_JNTW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Head_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_Upper_RK_JNT_parentConstraint1" -p "Arm_Upper_RK_JNT";
	rename -uid "09384D81-461A-C263-C519-CA81B89F9D2B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Upper_FK_JNTW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Upper_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -1.1102230246251565e-16 3.5527136788005009e-15 
		-4.9439619065339002e-17 ;
	setAttr ".tg[0].tor" -type "double3" -1.2424041724466862e-17 1.2424041724466865e-17 
		9.2105342135857194e-16 ;
	setAttr ".tg[1].tot" -type "double3" 1.1576149501535404e-05 -2.0637617311081158e-05 
		0.019548946270814774 ;
	setAttr ".tg[1].tor" -type "double3" -0.063354847470272133 0.067856720590517255 
		7.1635660934497156e-05 ;
	setAttr ".lr" -type "double3" -6.8967285907033745e-34 -1.2424041724466862e-17 6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 15.240328793090768 -2.6645352591003757e-15 3.3410774147313305e-15 ;
	setAttr ".rsrr" -type "double3" 2.5236334752823316e-18 -7.0975023254074437e-41 3.2227891436147567e-21 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_Upper_RK_JNT_scaleConstraint1" -p "Arm_Upper_RK_JNT";
	rename -uid "BDA7087E-42E7-5ADB-E65E-8C8A2CAE6878";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Upper_FK_JNTW0" -dv 1 -min 0 
		-at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Upper_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode parentConstraint -n "Arm_Base_RK_JNT_parentConstraint1" -p "Arm_Base_RK_JNT";
	rename -uid "EA738B0E-48AC-D0EC-9C32-BEA6A57CFA25";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Base_FK_JNTW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Base_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" 0 4.4408920985006262e-16 3.4694469519536142e-18 ;
	setAttr ".tg[0].tor" -type "double3" -1.2424041724466865e-17 0 9.5416640443905535e-15 ;
	setAttr ".tg[1].tot" -type "double3" 0 0 3.4694469519536142e-18 ;
	setAttr ".tg[1].tor" -type "double3" -0.056718800250022704 -0.073493851524693801 
		0.00015685692032516363 ;
	setAttr ".lr" -type "double3" 0 0 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 0.029943972826004032 2.8126814365386963 0.00075564580038156495 ;
	setAttr ".rsrr" -type "double3" 4.4139062980501586e-32 7.9513867036587919e-16 6.3611093629270335e-15 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode scaleConstraint -n "Arm_Base_RK_JNT_scaleConstraint1" -p "Arm_Base_RK_JNT";
	rename -uid "8E29A040-4C0D-6A74-234B-C3B09B00BC3A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Base_FK_JNTW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "Arm_Base_IK_JNTW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "Arm_Base_IK_JNT" -p "ROOT";
	rename -uid "08088A28-45F2-5F31-CECE-AEB5504B8BEB";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.762867317940234 49.014194356126517 89.820994717503183 ;
	setAttr ".radi" 1.6;
createNode joint -n "Arm_Upper_IK_JNT" -p "Arm_Base_IK_JNT";
	rename -uid "BB9F3294-406B-C115-3875-739956C73CBF";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 15.24032879309077 -3.6892842848663148e-15 3.3919599890525071e-15 ;
	setAttr ".r" -type "double3" 1.5636395790751617e-29 8.611475376904121e-18 -9.6578819789065499e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.076975387266219816 0.092689802329720863 99.306054703927899 ;
	setAttr ".radi" 1.6;
createNode joint -n "Arm_Head_IK_JNT" -p "Arm_Upper_IK_JNT";
	rename -uid "857213AF-4ED6-130F-A136-89A5A7C2090A";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".t" -type "double3" 16.506432485064135 -9.8575000836683205e-15 2.6690455401379154e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.6;
createNode orientConstraint -n "Arm_Head_IK_JNT_orientConstraint1" -p "Arm_Head_IK_JNT";
	rename -uid "162FD63F-4718-E98F-6405-988C01B40295";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Head_IK_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.06335484747030283 0.067856720590493483 7.1635660928825464e-05 ;
	setAttr ".rsrr" -type "double3" -0.06335484747030283 0.067856720590493483 7.1635660928825464e-05 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector1" -p "Arm_Upper_IK_JNT";
	rename -uid "C92F384A-4E6F-DB9C-FB3B-A1B9FB8CF14B";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode parentConstraint -n "Arm_Base_IK_JNT_parentConstraint1" -p "Arm_Base_IK_JNT";
	rename -uid "162CACA1-4721-6BCE-56FB-5DA39A42F27B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_IK_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 89.762867317940234 49.014194356126509 89.820994717503183 ;
	setAttr ".lr" -type "double3" -6.6208594470752375e-31 -7.9513867036587919e-15 9.5416640443905503e-15 ;
	setAttr ".rst" -type "double3" 0.029943972826004028 2.8126814365386963 0.00075564580038141923 ;
	setAttr ".rsrr" -type "double3" -6.6208594470752375e-31 -7.9513867036587919e-15 
		9.5416640443905503e-15 ;
	setAttr -k on ".w0";
createNode joint -n "Base_JNT" -p "ROOT";
	rename -uid "6F8FD0A5-43BA-CAC9-E19F-27BF18378DF3";
	setAttr ".t" -type "double3" 0.83959364891052246 2.8142037391662598 -6.0857208161735343e-11 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode orientConstraint -n "Base_JNT_orientConstraint1" -p "Base_JNT";
	rename -uid "8500388F-478D-2BD5-9253-5590E93DFC28";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "Arm_Base_FK_JNT" -p "ROOT";
	rename -uid "F4073167-4497-D2AC-F6A6-3785FDD740CE";
	setAttr ".v" no;
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 0.029943972826004028 2.8126814365386963 0.00075564580038141923 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 89.762867317940234 49.014194356126517 89.820994717503183 ;
	setAttr ".radi" 1.236568723978192;
createNode joint -n "Arm_Upper_FK_JNT" -p "Arm_Base_FK_JNT";
	rename -uid "EA3FD1B3-4B81-7E94-1590-3DACEB2F154A";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 15.24032879309077 -3.6892842848663148e-15 3.3919599890525071e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -0.076975387266219816 0.092689802329720863 99.306054703927899 ;
	setAttr ".radi" 1.3007314469832854;
createNode joint -n "Arm_Head_FK_JNT" -p "Arm_Upper_FK_JNT";
	rename -uid "F2868760-4EF8-5969-6DAA-A290B01C7DA7";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".t" -type "double3" 16.506432485064135 -9.8575000836683205e-15 2.6690455401379154e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".radi" 1.3007314469832854;
createNode orientConstraint -n "Arm_Head_FK_JNT_orientConstraint1" -p "Arm_Head_FK_JNT";
	rename -uid "E91ACBFB-44BB-A48F-4A3F-95A2D0851389";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Head_FK_CTRLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "Arm_Upper_FK_JNT_orientConstraint1" -p "Arm_Upper_FK_JNT";
	rename -uid "A518B0AC-46E7-982A-1448-FB9EC1AF6BD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Upper_FK_CTRLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 1.1729071890504502e-15 1.6151254241806917e-15 1.9085386313588878e-14 ;
	setAttr ".rsrr" -type "double3" 1.2138677016108017e-15 1.6151254241806917e-15 1.9085425934937763e-14 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "Arm_Base_FK_JNT_orientConstraint1" -p "Arm_Base_FK_JNT";
	rename -uid "DBADFBF3-4139-B6E2-E97B-358BF7D9827A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Base_FK_CTRLW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -4.4139062980501586e-31 -7.9513867036587919e-15 6.3611093629270335e-15 ;
	setAttr ".rsrr" -type "double3" -4.4139062980501586e-31 -7.9513867036587919e-15 
		6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode transform -n "Controls" -p "Lamp_Asset";
	rename -uid "DA015D3B-47CF-0732-49A0-CA85CB1FB2A5";
createNode transform -n "Transform_CTRL_GRP" -p "Controls";
	rename -uid "F08BEBAD-4E0D-44FF-2EA2-B79A71712F1C";
createNode transform -n "Transform_CTRL" -p "Transform_CTRL_GRP";
	rename -uid "8749F231-4FCC-5BEC-6E40-9B80231A9F02";
	addAttr -ci true -sn "ArmIKFK" -ln "ArmIKFK" -min 0 -max 1 -at "double";
	setAttr -k on ".ArmIKFK" 1;
createNode nurbsCurve -n "Transform_CTRLShape" -p "Transform_CTRL";
	rename -uid "E4618146-4962-70DA-F4B8-CA8AE8A2F908";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".cc" -type "nurbsCurve" 
		1 4 0 no 3
		5 0 1 2 3 4
		5
		-14.975999951060979 0 14.975999951060979
		14.975999951060979 0 14.975999951060979
		14.975999951060979 0 -14.975999951060979
		-14.975999951060979 0 -14.975999951060979
		-14.975999951060979 0 14.975999951060979
		;
createNode transform -n "Arm_Base_FK_CTRL_GRP" -p "Transform_CTRL";
	rename -uid "9AB0F2C1-486B-9FD4-1285-EDA184275E08";
	setAttr ".t" -type "double3" 0.029943972826004028 2.8126814365386963 0.00075564580038141923 ;
	setAttr ".r" -type "double3" 89.762867317940234 49.014194356126509 89.820994717503183 ;
createNode transform -n "Arm_Base_FK_CTRL" -p "Arm_Base_FK_CTRL_GRP";
	rename -uid "F1BB3CD2-4FB6-6BFE-406C-19B9C3C2DCFF";
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 0 3.4694469519536142e-18 ;
	setAttr ".sp" -type "double3" -2.2204460492503131e-16 0 3.4694469519536142e-18 ;
createNode nurbsCurve -n "Arm_Base_FK_CTRLShape" -p "Arm_Base_FK_CTRL";
	rename -uid "740E0DE8-4B71-1F57-1AED-60923D5A425C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".tw" yes;
createNode transform -n "Arm_Upper_FK_CTRL_GRP" -p "Arm_Base_FK_CTRL";
	rename -uid "91466BCD-48BB-091C-FDCC-D1AB44EE1CD3";
	setAttr ".t" -type "double3" 15.240328793090764 -4.8849813083506888e-15 3.4069969068184491e-15 ;
	setAttr ".r" -type "double3" -0.076975387266218637 0.092689802329722487 99.306054703927899 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "Arm_Upper_FK_CTRL" -p "Arm_Upper_FK_CTRL_GRP";
	rename -uid "FBBC4272-4060-A608-28FC-F7B3033B2B67";
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 0 8.6736173798840355e-18 ;
	setAttr ".sp" -type "double3" -1.1102230246251565e-16 0 8.6736173798840355e-18 ;
createNode nurbsCurve -n "Arm_Upper_FK_CTRLShape" -p "Arm_Upper_FK_CTRL";
	rename -uid "A2DD04FD-4751-C704-A007-E38EABE4109E";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1216264444579238e-16 1.8317549929315842 -1.8317549929315844
		-1.5862193296687081e-16 1.5862193296687081e-16 -2.5904927539484786
		-1.1216264444579235e-16 -1.8317549929315842 -1.8317549929315839
		-8.222989015536909e-33 -2.5904927539484794 -1.3429160181142961e-16
		1.1216264444579235e-16 -1.8317549929315842 1.8317549929315842
		1.5862193296687091e-16 -2.5949143088213773e-16 2.5904927539484799
		1.1216264444579235e-16 1.8317549929315842 1.8317549929315839
		2.163121699280472e-32 2.5904927539484794 3.5326458221040084e-16
		-1.1216264444579238e-16 1.8317549929315842 -1.8317549929315844
		-1.5862193296687081e-16 1.5862193296687081e-16 -2.5904927539484786
		-1.1216264444579235e-16 -1.8317549929315842 -1.8317549929315839
		;
createNode transform -n "Arm_Head_FK_CTRL_GRP" -p "Arm_Upper_FK_CTRL";
	rename -uid "6817C5AD-4FAB-EB51-565D-31934C168907";
	setAttr ".t" -type "double3" 16.506432485064138 -1.4210854715202004e-14 2.7153626569464961e-14 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999978 1 ;
createNode transform -n "Arm_Head_FK_CTRL" -p "Arm_Head_FK_CTRL_GRP";
	rename -uid "235F64E0-44CB-0A2F-94E3-0EA3C8588718";
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 -1.6479873021779667e-17 ;
	setAttr ".sp" -type "double3" 1.7763568394002505e-15 -7.1054273576010019e-15 -1.6479873021779667e-17 ;
createNode nurbsCurve -n "Arm_Head_FK_CTRLShape" -p "Arm_Head_FK_CTRL";
	rename -uid "B3A080BC-41A1-72EB-60C7-3FB1548920AB";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.1216264444579238e-16 1.8317549929315842 -1.8317549929315844
		-1.5862193296687081e-16 1.5862193296687081e-16 -2.5904927539484786
		-1.1216264444579235e-16 -1.8317549929315842 -1.8317549929315839
		-8.222989015536909e-33 -2.5904927539484794 -1.3429160181142961e-16
		1.1216264444579235e-16 -1.8317549929315842 1.8317549929315842
		1.5862193296687091e-16 -2.5949143088213773e-16 2.5904927539484799
		1.1216264444579235e-16 1.8317549929315842 1.8317549929315839
		2.163121699280472e-32 2.5904927539484794 3.5326458221040084e-16
		-1.1216264444579238e-16 1.8317549929315842 -1.8317549929315844
		-1.5862193296687081e-16 1.5862193296687081e-16 -2.5904927539484786
		-1.1216264444579235e-16 -1.8317549929315842 -1.8317549929315839
		;
createNode transform -n "Main_IK_CTRL_GRP" -p "Transform_CTRL";
	rename -uid "147B3519-4F00-FE0E-A46B-BE824DE564C9";
createNode transform -n "IK_CTRL_GRP" -p "Main_IK_CTRL_GRP";
	rename -uid "5875CB01-4AB9-7591-8069-43B36000024D";
	setAttr ".t" -type "double3" 1.4971725942336533e-10 23.353960174309503 1.1946200186076918 ;
createNode transform -n "IK_CTRL" -p "IK_CTRL_GRP";
	rename -uid "497943C8-410D-A376-F211-0B861E20B658";
createNode nurbsCurve -n "IK_CTRLShape" -p "IK_CTRL";
	rename -uid "9683B864-4CA4-9CC5-D34A-35BE6BAF435A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".tw" yes;
	setAttr ".oclr" -type "float3" 0.025773196 0.025773196 0.025773196 ;
createNode ikHandle -n "ikHandle1" -p "IK_CTRL";
	rename -uid "99DA634E-4E78-3CF2-EEFD-10AD6715C404";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.3877787807814457e-17 0 -1.7763568394002505e-15 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "ikHandle1_poleVectorConstraint1" -p "ikHandle1";
	rename -uid "DD25DAF0-4396-66BC-1EC1-1AB526A1C360";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "PV_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.031228847801685305 9.9956567287445086 -20.504498817492276 ;
	setAttr -k on ".w0";
createNode transform -n "Head_IK_CTRL_GRP" -p "IK_CTRL";
	rename -uid "D1C641AA-4E61-0243-E86C-35B7547FF9AC";
	setAttr ".t" -type "double3" -8.3266726846886741e-17 3.5527136788005009e-15 3.5527136788005009e-15 ;
	setAttr ".r" -type "double3" 89.567977683322681 -50.290879116304723 90.332356414768952 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999989 ;
createNode transform -n "Head_IK_CTRL" -p "Head_IK_CTRL_GRP";
	rename -uid "78DF78E7-45D1-C6F9-EEED-97A7543C9C3D";
	setAttr ".rp" -type "double3" 0 -7.1054273576010019e-15 6.0715321659188248e-18 ;
	setAttr ".sp" -type "double3" 0 -7.1054273576010019e-15 6.0715321659188248e-18 ;
createNode nurbsCurve -n "Head_IK_CTRLShape" -p "Head_IK_CTRL";
	rename -uid "9930B6E5-4B4B-F9C0-A529-B6A1A56AAC42";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "ARM_PV_CTRL_GRP" -p "Main_IK_CTRL_GRP";
	rename -uid "41CB0705-4145-A457-6B2C-EA87D4750774";
	setAttr ".t" -type "double3" 0.061172820627689334 12.808338165283205 -11.503743171691893 ;
createNode transform -n "PV_OFFSET_GRP" -p "ARM_PV_CTRL_GRP";
	rename -uid "36B6BA04-4638-C4B6-D979-50B39EF41548";
	setAttr ".t" -type "double3" 0 0 -9 ;
createNode transform -n "PV_CTRL" -p "PV_OFFSET_GRP";
	rename -uid "ED3B6D64-465C-F21C-F9F0-5A86C28430FE";
	setAttr ".r" -type "double3" 90 0 0 ;
createNode nurbsCurve -n "PV_CTRLShape" -p "PV_CTRL";
	rename -uid "95C3A63C-4B7C-7965-C491-A59AABE4E228";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.0092017497511509994 5.6344466896510046e-19 -0.0092017497511509803
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.0092017497511509613 5.6344466896510046e-19 -0.0092017497511509803
		-1.1081941875543881 3.5177356190060272e-33 -5.7448982375248304e-17
		-0.0092017497511509613 -5.6344466896510046e-19 0.0092017497511509803
		-1.1100856969603225e-16 -6.7857323231109171e-17 1.1081941875543884
		0.0092017497511509994 -5.6344466896510046e-19 0.0092017497511509803
		1.1081941875543881 -9.2536792101100989e-33 1.511240500779959e-16
		0.0092017497511509994 5.6344466896510046e-19 -0.0092017497511509803
		6.7857323231109122e-17 6.7857323231109122e-17 -1.1081941875543877
		-0.0092017497511509613 5.6344466896510046e-19 -0.0092017497511509803
		;
	setAttr ".oclr" -type "float3" 0.025773196 0.025773196 0.025773196 ;
createNode transform -n "Base_IK_CTRL_GRP" -p "Main_IK_CTRL_GRP";
	rename -uid "106218FC-487D-EF5F-8196-17A30688741D";
	setAttr ".t" -type "double3" 0.029943972826004028 2.8126814365386963 0.00075564580038141923 ;
createNode transform -n "Base_IK_CTRL" -p "Base_IK_CTRL_GRP";
	rename -uid "47271CB1-4B36-145A-D59D-F399A2B83301";
createNode nurbsCurve -n "Base_IK_CTRLShape" -p "Base_IK_CTRL";
	rename -uid "2049C04D-439A-5D30-F566-0AA7D8FBC506";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		4.4017070086945278 2.6952681994911127e-16 -4.4017070086945278
		3.8116848419532417e-16 3.8116848419532417e-16 -6.2249537492885061
		-4.4017070086945278 2.6952681994911117e-16 -4.4017070086945269
		-6.2249537492885088 1.9759841529995932e-32 -3.2270270160757379e-16
		-4.4017070086945278 -2.6952681994911122e-16 4.4017070086945278
		-6.2355787450704033e-16 -3.8116848419532447e-16 6.2249537492885096
		4.4017070086945278 -2.6952681994911117e-16 4.4017070086945269
		6.2249537492885088 -5.1979811607576128e-32 8.4889474489732878e-16
		4.4017070086945278 2.6952681994911127e-16 -4.4017070086945278
		3.8116848419532417e-16 3.8116848419532417e-16 -6.2249537492885061
		-4.4017070086945278 2.6952681994911117e-16 -4.4017070086945269
		;
	setAttr ".oclr" -type "float3" 0.025773196 0.025773196 0.025773196 ;
createNode transform -n "Base_CTRL_GRP" -p "Transform_CTRL";
	rename -uid "69C3FBD0-49C2-6BE9-89C8-25B81C0A9339";
	setAttr ".t" -type "double3" 0.83959364891052246 2.8142037391662598 -6.0857208161735343e-11 ;
createNode transform -n "Base_CTRL" -p "Base_CTRL_GRP";
	rename -uid "778C5B46-4E69-365E-8776-D9A16864EE1D";
createNode nurbsCurve -n "Base_CTRLShape" -p "Base_CTRL";
	rename -uid "1BAF17DB-4A6F-18F9-7950-EABD8457EF41";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 11 ".cp[2:10]" -type "double3" 1.2413976507580236e-16 7.815970093361102e-14 
		2.0273562167023846 0 0 0 -1.2413976507580236e-16 7.815970093361102e-14 -2.0273562167025374 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode transform -n "Geometry" -p "Lamp_Asset";
	rename -uid "5BE1831D-4AA3-AD85-551F-40996B54DD03";
createNode transform -n "base_geo" -p "Geometry";
	rename -uid "BBEF4515-4247-1F20-AF46-6AAE5B6EF8EA";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 0 1.6517660569516075 0 ;
	setAttr ".sp" -type "double3" 0 1.6517660569516075 0 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "base_geoShape" -p "base_geo";
	rename -uid "26F58623-4F02-F956-AB05-56995A8EE035";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dsm" 2;
createNode mesh -n "base_geoShapeOrig" -p "base_geo";
	rename -uid "4EA8302A-4F32-F07E-E264-8D8CCB1B90B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "cluster1";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "cluster4";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 12 "e[121]" "e[125]" "e[128]" "e[131]" "e[134]" "e[137]" "e[140]" "e[143]" "e[146]" "e[149]" "e[152]" "e[155]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 247 ".uvst[0].uvsp[0:246]" -type "float2" 0.3958334 0.31474134
		 0.375 0.68619841 0.41666669 0.31474137 0.39583337 0.68619841 0.4375 0.3147414 0.41666669
		 0.68619841 0.45833337 0.31474137 0.4375 0.68619835 0.47916672 0.31474137 0.45833337
		 0.68619841 0.5 0.3147414 0.47916672 0.68619841 0.52083337 0.31474137 0.49999997 0.68619835
		 0.54166675 0.31474134 0.52083337 0.68619817 0.5625 0.31474164 0.54166669 0.68619841
		 0.58333337 0.31474134 0.5625 0.68619841 0.60416663 0.31474137 0.58333343 0.68619841
		 0.62499994 0.3147414 0.60416669 0.68619841 0.62178618 0.085311264 0.57031322 0.033839021
		 0.5 0.014998627 0.42968678 0.033839021 0.37821382 0.085311264 0.35937342 0.15562506
		 0.37821385 0.22593834 0.42968678 0.2774111 0.5 0.29625148 0.57031322 0.2774111 0.62178618
		 0.22593834 0.5 0.15000001 0.64062655 0.15562506 0.57031322 0.9649111 0.5 0.98375148
		 0.42968678 0.9649111 0.37821382 0.91343892 0.35937342 0.84312505 0.37821385 0.77281177
		 0.42968678 0.72133899 0.5 0.70249861 0.57031322 0.72133899 0.62178618 0.77281177
		 0.64062655 0.84312505 0.62178618 0.91343892 0.5 0.83749998 0.375 0.31474137 0.62499994
		 0.68619841 0.62499994 0.3125 0.63531649 0.078125 0.375 0.3125 0.578125 0.020933539
		 0.39583334 0.3125 0.5 0 0.41666669 0.3125 0.421875 0.020933539 0.43750003 0.3125
		 0.36468354 0.078125 0.45833337 0.3125 0.34375 0.15625 0.47916672 0.3125 0.36468354
		 0.234375 0.50000006 0.3125 0.421875 0.29156646 0.52083337 0.3125 0.5 0.3125 0.54166669
		 0.3125 0.578125 0.29156646 0.5625 0.3125 0.63531649 0.234375 0.58333331 0.3125 0.65625
		 0.15625 0.60416663 0.3125 0.375 0.68843985 0.63531649 0.921875 0.62499994 0.68843985
		 0.39583334 0.68843985 0.578125 0.97906649 0.41666669 0.68843985 0.5 1 0.43750003
		 0.68843985 0.421875 0.97906649 0.45833337 0.68843985 0.36468354 0.921875 0.47916672
		 0.68843985 0.34375 0.84375 0.50000006 0.68843985 0.36468354 0.765625 0.52083337 0.68843985
		 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875 0.5625 0.68843985 0.578125 0.70843351
		 0.58333331 0.68843985 0.63531649 0.765625 0.65625 0.84375 0.60416663 0.68843985 0.62499994
		 0.53807896 0.62469339 0.68843979 0.60444194 0.6834718 0.60416663 0.53807908 0.37527531
		 0.68347186 0.375 0.53807896 0.39583334 0.53807902 0.39552683 0.68843985 0.39610866
		 0.6834718 0.41666669 0.53807908 0.41636014 0.68843979 0.416942 0.6834718 0.4375 0.53807896
		 0.43719348 0.68843979 0.43777537 0.68347186 0.45833337 0.53807896 0.45802686 0.68843985
		 0.45860869 0.6834718 0.47916672 0.53807908 0.47886017 0.68843979 0.47944203 0.6834718
		 0.50000006 0.53807896 0.49969354 0.68843979 0.50027537 0.68347186 0.52083337 0.53807902
		 0.52052683 0.68843985 0.52110869 0.6834718 0.54166669 0.53807908 0.54136014 0.68843979
		 0.541942 0.6834718 0.5625 0.53807896 0.56219345 0.68843979 0.56277531 0.68347186
		 0.58333331 0.53807896 0.58302683 0.68843985 0.58360863 0.6834718 0.60386008 0.68843979
		 0.62692481 0.91664249 0.5732801 0.97028726 0.5 0.83749998 0.5 0.98992252 0.42671993
		 0.97028726 0.37307519 0.91664249 0.35343987 0.84336239 0.37307519 0.77008235 0.42671993
		 0.71643758 0.5 0.69680226 0.5732801 0.71643758 0.62692481 0.77008235 0.64656013 0.84336239
		 0.57746351 0.022026401 0.63417071 0.078733593 0.5 0.15000001 0.5 0.0012701154 0.42253652
		 0.022026401 0.36582932 0.078733593 0.34507304 0.15619707 0.36582932 0.23366056 0.42253652
		 0.29036775 0.5 0.31112403 0.57746351 0.29036775 0.63417071 0.23366056 0.65492696
		 0.15619707 0.375 0.33505559 0.39583334 0.33505559 0.41666669 0.33505568 0.43750003
		 0.33505559 0.45833337 0.33505559 0.47916672 0.33505568 0.50000006 0.33505559 0.52083337
		 0.33505559 0.54166669 0.33505568 0.5625 0.33505559 0.58333331 0.33505559 0.60416663
		 0.33505568 0.62499994 0.33505559 0.63531649 0.078125 0.65625 0.15625 0.62499994 0.3125
		 0.60416663 0.3125 0.375 0.3125 0.39583334 0.3125 0.578125 0.020933539 0.41666669
		 0.3125 0.5 0 0.43750003 0.3125 0.421875 0.020933539 0.45833337 0.3125 0.36468354
		 0.078125 0.47916672 0.3125 0.34375 0.15625 0.50000006 0.3125 0.36468354 0.234375
		 0.52083337 0.3125 0.421875 0.29156646 0.54166669 0.3125 0.5 0.3125 0.5625 0.3125
		 0.578125 0.29156646 0.58333331 0.3125 0.63531649 0.234375 0.50000006 0.3125 0.52083337
		 0.3125 0.52083337 0.68555015 0.50000006 0.68555015 0.54166669 0.3125 0.5625 0.3125
		 0.56250006 0.68555015 0.54166669 0.68555015 0.58333331 0.3125 0.60416663 0.3125 0.60416663
		 0.68555015 0.58333331 0.68555015 0.5 0.15000001 0.47916672 0.3125 0.34479091 0.83966649
		 0.5 0.83221531 0.47916672 0.3125 0.47916675 0.68555015 0.65625 0.15625 0.60456699
		 0.68434912 0.5 0.8325904 0.35045809 0.83845323 0.36929849 0.76828945 0.42453945 0.71283531
		 0.5 0.69282889 0.57546055 0.71283525 0.63070154 0.76828945 0.64954191 0.83845329
		 0.34375 0.84375 0.36468354 0.765625 0.47916672 0.68843985 0.50000006 0.68843985 0.421875
		 0.70843351 0.52083337 0.68843985 0.5 0.6875 0.54166669 0.68843985 0.578125 0.70843351
		 0.5625 0.68843985 0.63531649 0.765625 0.58333331 0.68843985 0.65625 0.84375 0.60416663
		 0.68843985 0.5 0.83749998 0.60416663 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 168 ".vt";
	setAttr ".vt[0:165]"  -0.83959353 2.8142035 0 0.83959353 2.8142035 0 -0.82829142 2.87411952 -0.10481718
		 -0.83959353 2.87411952 -0.10481718 -0.83959353 2.86812878 -0.09433651 -0.82829142 2.91798115 -0.060516223
		 -0.83959353 2.91798115 -0.060516223 -0.83959353 2.90760422 -0.054465219 -0.82829142 2.9340353 0
		 -0.83959353 2.9340353 0 -0.83959353 2.9220531 0 -0.82829142 2.91798115 0.060516223
		 -0.83959353 2.91798115 0.060516223 -0.83959353 2.90760422 0.054465219 -0.82829142 2.87411952 0.10481718
		 -0.83959353 2.87411952 0.10481718 -0.83959353 2.86812878 0.09433651 -0.82829142 2.8142035 0.12103245
		 -0.83959353 2.8142035 0.12103245 -0.83959353 2.8142035 0.10893044 -0.82829142 2.7542882 0.10481718
		 -0.83959353 2.7542882 0.10481718 -0.83959353 2.76027918 0.09433651 -0.82829142 2.71042681 0.060516223
		 -0.83959353 2.71042681 0.060516223 -0.83959353 2.72080302 0.054465219 -0.82829142 2.69437242 0
		 -0.83959353 2.69437242 0 -0.83959353 2.70635414 0 -0.82829142 2.71042681 -0.060516223
		 -0.83959353 2.71042681 -0.060516223 -0.83959353 2.72080302 -0.054465219 -0.82829142 2.7542882 -0.10481718
		 -0.83959353 2.7542882 -0.10481718 -0.83959353 2.76027918 -0.09433651 -0.82829142 2.8142035 -0.12103245
		 -0.83959353 2.8142035 -0.12103245 -0.83959353 2.8142035 -0.10893044 0.82829154 2.87411952 -0.10481718
		 0.83959353 2.87411952 -0.10481718 0.83959353 2.86812878 -0.09433651 0.82829154 2.91798115 -0.060516223
		 0.83959353 2.91798115 -0.060516223 0.83959353 2.90760422 -0.054465219 0.82829154 2.9340353 0
		 0.83959353 2.9340353 0 0.83959353 2.9220531 0 0.82829154 2.91798115 0.060516223 0.83959353 2.91798115 0.060516223
		 0.83959353 2.90760422 0.054465219 0.82829154 2.87411952 0.10481718 0.83959353 2.87411952 0.10481718
		 0.83959353 2.86812878 0.09433651 0.82829154 2.8142035 0.12103245 0.83959353 2.8142035 0.12103245
		 0.83959353 2.8142035 0.10893044 0.82829154 2.7542882 0.10481718 0.83959353 2.7542882 0.10481718
		 0.83959353 2.76027918 0.09433651 0.82829154 2.71042681 0.060516223 0.83959353 2.71042681 0.060516223
		 0.83959353 2.72080302 0.054465219 0.82829154 2.69437242 0 0.83959353 2.69437242 0
		 0.83959353 2.70635414 0 0.82829154 2.71042681 -0.060516223 0.83959353 2.71042681 -0.060516223
		 0.83959353 2.72080302 -0.054465219 0.82829154 2.7542882 -0.10481718 0.83959353 2.7542882 -0.10481718
		 0.83959353 2.76027918 -0.09433651 0.82829154 2.8142035 -0.12103245 0.83959353 2.8142035 -0.12103245
		 0.83959353 2.8142035 -0.10893044 0 0 0 0 1.3098855 0 -3.45999241 0.7674275 -5.99288321
		 -3.12223363 1.3098855 -5.40786743 -5.99288321 0.7674275 -3.45999241 -5.40786743 1.3098855 -3.12223363
		 -6.91998482 0.76742738 0 -6.24446726 1.3098855 0 -5.99288321 0.7674275 3.45999241
		 -5.40786743 1.3098855 3.12223363 -3.45999241 0.7674275 5.99288321 -3.12223363 1.3098855 5.40786743
		 0 0.76742738 6.91998482 0 1.3098855 6.24446726 3.45999241 0.7674275 5.99288321 3.12223363 1.3098855 5.40786743
		 5.99288321 0.7674275 3.45999241 5.40786743 1.3098855 3.12223363 6.91998482 0.76742738 0
		 6.24446726 1.3098855 0 5.99288321 0.7674275 -3.45999241 5.40786743 1.3098855 -3.12223363
		 3.45999241 0.7674275 -5.99288321 3.12223363 1.3098855 -5.40786743 0 0.76742738 -6.91998482
		 0 1.3098855 -6.24446726 -3.62605667 0 -6.28051424 -3.65702271 0 -6.33414936 -3.63732171 0.046153635 -6.30002642
		 -6.28051424 0 -3.62605667 -6.33414936 0 -3.65702271 -6.30002642 0.046153642 -3.63732171
		 -7.25211334 0 0 -7.31404543 0 0 -7.27464342 0.046153646 0 -6.28051424 0 3.62605667
		 -6.33414936 0 3.65702271 -6.30002642 0.046153635 3.63732171 -3.62605667 0 6.28051424
		 -3.65702271 0 6.33414936 -3.63732171 0.046153642 6.30002642 0 0 7.25211334 0 0 7.31404543
		 0 0.046153646 7.27464342 3.62605667 0 6.28051424 3.65702271 0 6.33414936 3.63732171 0.046153635 6.30002642
		 6.28051424 0 3.62605667 6.33414936 0 3.65702271 6.30002642 0.046153642 3.63732171
		 7.25211334 0 0 7.31404543 0 0 7.27464342 0.046153646 0 6.28051424 0 -3.62605667 6.33414936 0 -3.65702271
		 6.30002642 0.046153635 -3.63732171 3.62605667 0 -6.28051424 3.65702271 0 -6.33414936
		 3.63732171 0.046153642 -6.30002642 0 0 -7.25211334 0 0 -7.31404543 0 0.046153646 -7.27464342
		 0.066573218 1.14255559 0.67510784 0.40412712 1.14255559 0.58466047 0.65123373 1.14255559 0.33755392
		 0.7416811 1.14255559 0 0.65123373 1.14255559 -0.33755392 0.40412712 1.14255559 -0.58466047
		 0.066573218 1.14255559 -0.67510784 0.066573218 1.14255559 3.2976258e-34 0.088813052 3.30353212 0.64612436
		 0.066573218 3.30353212 0.67510784 0.066573218 3.28191447 0.67510784 0.39261496 3.30353212 0.56472075
		 0.40412712 3.30353212 0.58466047 0.40412712 3.28191447 0.58466047 0.63129395 3.30353212 0.32604173
		 0.65123373 3.30353212 0.33755392 0.65123373 3.28191447 0.33755392 0.71865666 3.30353212 0
		 0.7416811 3.30353212 0 0.7416811 3.28191447 0 0.63129395 3.30353212 -0.32604173 0.65123373 3.30353212 -0.33755392
		 0.65123373 3.28191447 -0.33755392 0.39261496 3.30353212 -0.56472075 0.40412712 3.30353212 -0.58466047
		 0.40412712 3.28191447 -0.58466047 0.088813052 3.30353212 -0.64612436 0.066573218 3.30353212 -0.67510784
		 0.066573218 3.28191447 -0.67510784 0.088813052 3.30353212 -3.1311181e-18;
	setAttr ".vt[166:167]" 0.066573218 3.30353212 0 0.066573218 3.28191447 0;
	setAttr -s 346 ".ed";
	setAttr ".ed[0:165]"  2 5 0 5 41 0 41 38 0 38 2 0 5 8 0 8 44 0 44 41 0 8 11 0
		 11 47 0 47 44 0 11 14 0 14 50 0 50 47 0 14 17 0 17 53 0 53 50 0 17 20 0 20 56 0 56 53 0
		 20 23 0 23 59 0 59 56 0 23 26 0 26 62 0 62 59 0 26 29 0 29 65 0 65 62 0 29 32 0 32 68 0
		 68 65 0 32 35 0 35 71 0 71 68 0 35 2 0 38 71 0 7 4 0 4 0 0 0 7 0 10 7 0 0 10 0 13 10 0
		 0 13 0 16 13 0 0 16 0 19 16 0 0 19 0 22 19 0 0 22 0 25 22 0 0 25 0 28 25 0 0 28 0
		 31 28 0 0 31 0 34 31 0 0 34 0 37 34 0 0 37 0 4 37 0 40 43 0 43 1 0 1 40 0 43 46 0
		 46 1 0 46 49 0 49 1 0 49 52 0 52 1 0 52 55 0 55 1 0 55 58 0 58 1 0 58 61 0 61 1 0
		 61 64 0 64 1 0 64 67 0 67 1 0 67 70 0 70 1 0 70 73 0 73 1 0 73 40 0 2 3 0 3 6 0 6 5 0
		 3 4 0 7 6 0 6 9 0 9 8 0 10 9 0 9 12 0 12 11 0 13 12 0 12 15 0 15 14 0 16 15 0 15 18 0
		 18 17 0 19 18 0 18 21 0 21 20 0 22 21 0 21 24 0 24 23 0 25 24 0 24 27 0 27 26 0 28 27 0
		 27 30 0 30 29 0 31 30 0 30 33 0 33 32 0 34 33 0 33 36 0 36 35 0 37 36 0 3 36 0 38 39 0
		 39 72 0 72 71 0 39 40 0 73 72 0 39 42 0 42 43 0 41 42 0 42 45 0 45 46 0 44 45 0 45 48 0
		 48 49 0 47 48 0 48 51 0 51 52 0 50 51 0 51 54 0 54 55 0 53 54 0 54 57 0 57 58 0 56 57 0
		 57 60 0 60 61 0 59 60 0 60 63 0 63 64 0 62 63 0 63 66 0 66 67 0 65 66 0 66 69 0 69 70 0
		 68 69 0 69 72 0 76 77 0 77 99 0 99 98 0 98 76 0 76 78 0 78 79 0 79 77 0 78 80 0 80 81 0
		 81 79 0;
	setAttr ".ed[166:331]" 80 82 0 82 83 0 83 81 0 82 84 0 84 85 0 85 83 0 84 86 0
		 86 87 0 87 85 0 86 88 0 88 89 0 89 87 0 88 90 0 90 91 0 91 89 0 90 92 0 92 93 0 93 91 0
		 92 94 0 94 95 0 95 93 0 94 96 0 96 97 0 97 95 0 96 98 0 99 97 0 79 75 0 75 77 0 81 75 0
		 83 75 0 85 75 0 87 75 0 89 75 0 91 75 0 93 75 0 95 75 0 97 75 0 99 75 0 103 100 0
		 100 74 0 74 103 0 106 103 0 74 106 0 109 106 0 74 109 0 112 109 0 74 112 0 115 112 0
		 74 115 0 118 115 0 74 118 0 121 118 0 74 121 0 124 121 0 74 124 0 127 124 0 74 127 0
		 130 127 0 74 130 0 133 130 0 74 133 0 100 133 0 102 105 0 105 78 0 76 102 0 105 108 0
		 108 80 0 108 111 0 111 82 0 111 114 0 114 84 0 114 117 0 117 86 0 117 120 0 120 88 0
		 120 123 0 123 90 0 123 126 0 126 92 0 126 129 0 129 94 0 129 132 0 132 96 0 132 135 0
		 135 98 0 135 102 0 100 101 0 101 134 0 134 133 0 101 102 0 135 134 0 101 104 0 104 105 0
		 103 104 0 104 107 0 107 108 0 106 107 0 107 110 0 110 111 0 109 110 0 110 113 0 113 114 0
		 112 113 0 113 116 0 116 117 0 115 116 0 116 119 0 119 120 0 118 119 0 119 122 0 122 123 0
		 121 122 0 122 125 0 125 126 0 124 125 0 125 128 0 128 129 0 127 128 0 128 131 0 131 132 0
		 130 131 0 131 134 0 137 138 0 138 152 0 152 149 0 149 137 0 139 140 0 140 158 0 158 155 0
		 155 139 0 141 142 0 142 164 0 164 161 0 161 141 0 143 136 0 136 146 0 146 167 0 167 143 0
		 136 137 0 149 146 0 138 139 0 155 152 0 140 141 0 161 158 0 142 143 0 167 164 0 165 144 0
		 144 147 0 147 150 0 150 165 0 150 153 0 153 156 0 156 165 0 156 159 0 159 162 0 162 165 0
		 144 145 0 145 148 0 148 147 0 145 146 0 149 148 0 148 151 0 151 150 0 152 151 0 151 154 0
		 154 153 0;
	setAttr ".ed[332:345]" 155 154 0 154 157 0 157 156 0 158 157 0 157 160 0 160 159 0
		 161 160 0 160 163 0 163 162 0 164 163 0 163 166 0 166 165 0 167 166 0 145 166 0;
	setAttr -s 684 ".n";
	setAttr ".n[0:165]" -type "float3"  0 0.50374186 -0.86385423 0 0.71062148
		 -0.70357448 0 0.71062148 -0.70357448 0 0.5037418 -0.86385423 0 0.96656716 -0.25641361
		 0 1 0 0 1 0 0 0.9665671 -0.25641361 0 1 0 0 0.96656716 0.25641361 0 0.9665671 0.25641361
		 0 1 0 0 0.71062148 0.70357448 0 0.50374186 0.86385423 0 0.5037418 0.86385423 0 0.71062148
		 0.70357448 0 0.50374186 0.86385423 0 -1.1865978e-08 1 0 -1.1773276e-08 1 0 0.5037418
		 0.86385423 0 -1.1865978e-08 1 0 -0.50374597 0.8638519 0 -0.50374597 0.86385185 0
		 -1.1773276e-08 1 0 -0.50374597 0.8638519 0 -0.7106238 0.70357221 0 -0.7106238 0.70357227
		 0 -0.50374597 0.86385185 0 -0.96656489 0.25642225 0 -1 0 0 -1 0 0 -0.96656483 0.25642219
		 0 -1 0 0 -0.96656489 -0.25642225 0 -0.96656483 -0.25642219 0 -1 0 0 -0.7106238 -0.70357221
		 0 -0.50374597 -0.8638519 0 -0.50374597 -0.86385185 0 -0.7106238 -0.70357227 0 -0.50374597
		 -0.8638519 0 -1.1865978e-08 -1 0 -1.1773276e-08 -1 0 -0.50374597 -0.86385185 0 -1.1865978e-08
		 -1 0 0.50374186 -0.86385423 0 0.5037418 -0.86385423 0 -1.1773276e-08 -1 -1 -4.8056006e-07
		 0 -1 -4.7429683e-07 0 -1 1.2874679e-12 0 -1 0 0 -1 -4.8056006e-07 0 -1 1.2874679e-12
		 0 -0.99999994 0 0 -1 0 0 -1 1.2874679e-12 0 -1 0 0 -0.99999994 0 0 -1 1.2874679e-12
		 0 -1 0 0 -1 0 0 -1 1.2874679e-12 0 -1 4.7429955e-07 0 -1 0 0 -1 1.2874679e-12 0 -1
		 4.805612e-07 0 -1 4.7429955e-07 0 -1 1.2874679e-12 0 -1 0 0 -1 4.805612e-07 0 -1
		 1.2874679e-12 0 -1 0 0 -1 0 0 -1 1.2874679e-12 0 -1 0 0 -1 0 0 -1 1.2874679e-12 0
		 -1 0 0 -1 0 0 -1 1.2874679e-12 0 -1 -4.7429683e-07 0 -1 0 0 -1 1.2874679e-12 0 1
		 0 0 1 0 0 1 1.2874679e-12 0 1 0 0 1 0 0 1 1.2874679e-12 0 1 0 0 0.99999994 -4.8056e-07
		 0 1 1.2874679e-12 0 0.99999994 -4.8056e-07 0 1 -4.7429683e-07 0 1 1.2874679e-12 0
		 1 -4.7429683e-07 0 1 0 0 1 1.2874679e-12 0 1 0 0 1 0 0 1 1.2874679e-12 0 1 0 0 1
		 0 0 1 1.2874679e-12 0 1 0 0 1 0 0 1 1.2874679e-12 0 1 0 0 1 4.8056114e-07 0 1 1.2874679e-12
		 0 1 4.8056114e-07 0 1 4.742995e-07 0 1 1.2874679e-12 0 1 4.742995e-07 0 1 0 0 1 1.2874679e-12
		 0 1 0 0 1 0 0 1 1.2874679e-12 0 0 0.50374186 -0.86385423 0 0.50374407 -0.86385298
		 0 0.71062452 -0.70357144 0 0.71062148 -0.70357448 -1 0 0 -1 -4.7429683e-07 0 -1 -4.8056006e-07
		 0 -0.99999994 0 0 0 0.96656716 -0.25641361 0 0.96656674 -0.25641537 0 1 0 0 1 0 -0.99999994
		 0 0 -1 -4.8056006e-07 0 -1 0 0 -1 0 0 0 1 0 0 1 0 0 0.96656674 0.25641537 0 0.96656716
		 0.25641361 -1 0 0 -1 0 0 -0.99999994 0 0 -1 0 0 0 0.71062148 0.70357448 0 0.71062452
		 0.70357144 0 0.50374407 0.86385298 0 0.50374186 0.86385423 -1 0 0 -0.99999994 0 0
		 -1 0 0 -1 0 0 0 0.50374186 0.86385423 0 0.50374407 0.86385298 0 0.26123577 0.96527499
		 0 -1.1865978e-08 1 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 -1.1865978e-08 1 0 -0.26123983 0.96527398
		 0 -0.5037483 0.86385053 0 -0.50374597 0.8638519 -1 0 0 -1 0 0;
	setAttr ".n[166:331]" -type "float3"  -1 4.7429955e-07 0 -0.99999994 0 0 0
		 -0.50374597 0.8638519 0 -0.5037483 0.86385053 0 -0.71062589 0.70357007 0 -0.7106238
		 0.70357221 -0.99999994 0 0 -1 4.7429955e-07 0 -1 4.805612e-07 0 -1 0 0 0 -0.96656489
		 0.25642225 0 -0.96656471 0.2564227 0 -1 0 0 -1 0 -1 0 0 -1 4.805612e-07 0 -1 0 0
		 -0.99999994 0 0 0 -1 0 0 -1 0 0 -0.96656471 -0.2564227 0 -0.96656489 -0.25642225
		 -0.99999994 0 0 -1 0 0 -1 0 0 -1 0 0 0 -0.7106238 -0.70357221 0 -0.71062589 -0.70357007
		 0 -0.5037483 -0.86385053 0 -0.50374597 -0.8638519 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 -0.50374597
		 -0.8638519 0 -0.5037483 -0.86385053 0 -0.26123983 -0.96527398 0 -1.1865978e-08 -1
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 -4.7429683e-07 0 -1 0 0 -1 0 0 -1 0 0 0 0.50374407
		 -0.86385298 0 0.50374186 -0.86385423 0 -1.1865978e-08 -1 0 0.26123577 -0.96527499
		 0 0.5037418 -0.86385423 0 0.50374204 -0.86385405 0 0.26123485 -0.96527535 0 -1.1773276e-08
		 -1 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0.99999994 0 0 1 0 0 0 0.50374204 -0.86385405
		 0 0.5037418 -0.86385423 0 0.71062148 -0.70357448 0 0.71062195 -0.703574 1 0 0 0.99999994
		 0 0 1 0 0 1 0 0 0 0.96656597 -0.2564179 0 0.9665671 -0.25641361 0 1 0 0 1 0 1 0 0
		 1 0 0 1 0 0 0.99999994 -4.8056e-07 0 0 1 0 0 1 0 0 0.9665671 0.25641361 0 0.96656597
		 0.2564179 0.99999994 -4.8056e-07 0 1 0 0 1 0 0 1 -4.7429683e-07 0 0 0.71062195 0.703574
		 0 0.71062148 0.70357448 0 0.5037418 0.86385423 0 0.50374204 0.86385405 1 -4.7429683e-07
		 0 1 0 0 1 0 0 1 0 0 0 0.50374204 0.86385405 0 0.5037418 0.86385423 0 -1.1773276e-08
		 1 0 0.26123485 0.96527535 1 0 0 1 0 0 0.99999994 0 0 1 0 0 0 -0.26123881 0.96527421
		 0 -1.1773276e-08 1 0 -0.50374597 0.86385185 0 -0.50374621 0.86385161 1 0 0 0.99999994
		 0 0 1 0 0 1 0 0 0 -0.50374621 0.86385161 0 -0.50374597 0.86385185 0 -0.7106238 0.70357227
		 0 -0.71062326 0.70357275 1 0 0 1 0 0 1 0 0 1 0 0 0 -0.96656537 0.25642037 0 -0.96656483
		 0.25642219 0 -1 0 0 -1 0 1 0 0 1 0 0 1 0 0 1 4.8056114e-07 0 0 -1 0 0 -1 0 0 -0.96656483
		 -0.25642219 0 -0.96656537 -0.25642037 1 4.8056114e-07 0 1 0 0 1 0 0 1 4.742995e-07
		 0 0 -0.71062326 -0.70357275 0 -0.7106238 -0.70357227 0 -0.50374597 -0.86385185 0
		 -0.50374621 -0.86385161 1 4.742995e-07 0 1 0 0 1 0 0 1 0 0 0 -0.50374621 -0.86385161
		 0 -0.50374597 -0.86385185 0 -1.1773276e-08 -1 0 -0.26123881 -0.96527421 -0.39729759
		 0.60713947 -0.68813968 -0.093138561 0.98249727 -0.1613207 1.7528619e-09 0.98249727
		 -0.18627709 5.6090322e-08 0.60713947 -0.79459536 -0.093138561 0.98249727 -0.1613207
		 -0.39729759 0.60713947 -0.68813968 -0.68813968 0.60713947 -0.39729756 -0.16132073
		 0.98249727 -0.093138531 -0.16132073 0.98249727 -0.093138531 -0.68813968 0.60713947
		 -0.39729756 -0.79459518 0.60713941 -7.0112884e-09 -0.18627706 0.98249727 2.0108786e-08
		 -0.18627706 0.98249727 2.0108786e-08 -0.79459518 0.60713941 -7.0112884e-09 -0.68813968
		 0.60713947 0.39729759 -0.16132072 0.98249727 0.093138576 -0.16132072 0.98249727 0.093138576
		 -0.68813968 0.60713947 0.39729759 -0.39729759 0.60713947 0.68813968 -0.093138553
		 0.98249727 0.1613207;
	setAttr ".n[332:497]" -type "float3"  -0.093138553 0.98249727 0.1613207 -0.39729759
		 0.60713947 0.68813968 -4.9079027e-08 0.60713947 0.79459524 0 0.98249727 0.18627706
		 0 0.98249727 0.18627706 -4.9079027e-08 0.60713947 0.79459524 0.39729759 0.60713941
		 0.68813968 0.093138568 0.98249727 0.1613207 0.093138568 0.98249727 0.1613207 0.39729759
		 0.60713941 0.68813968 0.68813968 0.60713947 0.39729756 0.16132073 0.98249727 0.093138531
		 0.16132073 0.98249727 0.093138531 0.68813968 0.60713947 0.39729756 0.79459518 0.60713941
		 7.0112884e-09 0.18627706 0.98249727 -2.0108786e-08 0.18627706 0.98249727 -2.0108786e-08
		 0.79459518 0.60713941 7.0112884e-09 0.68813968 0.60713947 -0.39729759 0.16132072
		 0.98249727 -0.093138576 0.16132072 0.98249727 -0.093138576 0.68813968 0.60713947
		 -0.39729759 0.39729759 0.60713947 -0.68813968 0.093138553 0.98249727 -0.1613207 0.093138553
		 0.98249727 -0.1613207 0.39729759 0.60713947 -0.68813968 5.6090322e-08 0.60713947
		 -0.79459536 1.7528619e-09 0.98249727 -0.18627709 -0.093138561 0.98249727 -0.1613207
		 -0.16132073 0.98249727 -0.093138531 0 0.99999994 0 -0.16132073 0.98249727 -0.093138531
		 -0.18627706 0.98249727 2.0108786e-08 0 0.99999994 0 -0.18627706 0.98249727 2.0108786e-08
		 -0.16132072 0.98249727 0.093138576 0 0.99999994 0 -0.16132072 0.98249727 0.093138576
		 -0.093138553 0.98249727 0.1613207 0 0.99999994 0 -0.093138553 0.98249727 0.1613207
		 0 0.98249727 0.18627706 0 0.99999994 0 0 0.98249727 0.18627706 0.093138568 0.98249727
		 0.1613207 0 0.99999994 0 0.093138568 0.98249727 0.1613207 0.16132073 0.98249727 0.093138531
		 0 0.99999994 0 0.16132073 0.98249727 0.093138531 0.18627706 0.98249727 -2.0108786e-08
		 0 0.99999994 0 0.18627706 0.98249727 -2.0108786e-08 0.16132072 0.98249727 -0.093138576
		 0 0.99999994 0 0.16132072 0.98249727 -0.093138576 0.093138553 0.98249727 -0.1613207
		 0 0.99999994 0 0.093138553 0.98249727 -0.1613207 1.7528619e-09 0.98249727 -0.18627709
		 0 0.99999994 0 1.7528619e-09 0.98249727 -0.18627709 -0.093138561 0.98249727 -0.1613207
		 0 0.99999994 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 0 -0.44395706 0.46000904 -0.76895624 -0.76895636 0.46000895 -0.44395712
		 -0.68813968 0.60713947 -0.39729756 -0.39729759 0.60713947 -0.68813968 -0.76895636
		 0.46000895 -0.44395712 -0.88791436 0.46000877 -1.6454697e-08 -0.79459518 0.60713941
		 -7.0112884e-09 -0.68813968 0.60713947 -0.39729756 -0.88791436 0.46000877 -1.6454697e-08
		 -0.76895636 0.46000889 0.44395718 -0.68813968 0.60713947 0.39729759 -0.79459518 0.60713941
		 -7.0112884e-09 -0.76895636 0.46000889 0.44395718 -0.443957 0.46000904 0.7689563 -0.39729759
		 0.60713947 0.68813968 -0.68813968 0.60713947 0.39729759 -0.443957 0.46000904 0.7689563
		 -6.1705094e-08 0.4600091 0.88791424 -4.9079027e-08 0.60713947 0.79459524 -0.39729759
		 0.60713947 0.68813968 -6.1705094e-08 0.4600091 0.88791424 0.44395706 0.46000904 0.76895624
		 0.39729759 0.60713941 0.68813968 -4.9079027e-08 0.60713947 0.79459524 0.44395706
		 0.46000904 0.76895624 0.76895636 0.46000895 0.44395712 0.68813968 0.60713947 0.39729756
		 0.39729759 0.60713941 0.68813968 0.76895636 0.46000895 0.44395712 0.88791436 0.46000877
		 1.6454697e-08 0.79459518 0.60713941 7.0112884e-09 0.68813968 0.60713947 0.39729756
		 0.88791436 0.46000877 1.6454697e-08 0.76895636 0.46000889 -0.44395718 0.68813968
		 0.60713947 -0.39729759 0.79459518 0.60713941 7.0112884e-09 0.76895636 0.46000889
		 -0.44395718 0.443957 0.46000904 -0.7689563 0.39729759 0.60713947 -0.68813968 0.68813968
		 0.60713947 -0.39729759 0.443957 0.46000904 -0.7689563 6.6641505e-08 0.4600091 -0.88791424
		 5.6090322e-08 0.60713947 -0.79459536 0.39729759 0.60713947 -0.68813968 6.6641505e-08
		 0.4600091 -0.88791424 -0.44395706 0.46000904 -0.76895624 -0.39729759 0.60713947 -0.68813968
		 5.6090322e-08 0.60713947 -0.79459536 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.3802731 0.64928448
		 -0.65865177 -0.44395706 0.46000904 -0.76895624 6.6641505e-08 0.4600091 -0.88791424
		 0 0.64928597 -0.76054436 -0.44395706 0.46000904 -0.76895624 -0.3802731 0.64928448
		 -0.65865177 -0.65865195 0.64928412 -0.38027328 -0.76895636 0.46000895 -0.44395712
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.76895636 0.46000895 -0.44395712 -0.65865195 0.64928412
		 -0.38027328;
	setAttr ".n[498:663]" -type "float3"  -0.7605449 0.64928538 -1.0805225e-07
		 -0.88791436 0.46000877 -1.6454697e-08 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.88791436 0.46000877
		 -1.6454697e-08 -0.7605449 0.64928538 -1.0805225e-07 -0.65865189 0.64928401 0.38027331
		 -0.76895636 0.46000889 0.44395718 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.76895636 0.46000889
		 0.44395718 -0.65865189 0.64928401 0.38027331 -0.38027316 0.64928442 0.65865177 -0.443957
		 0.46000904 0.7689563 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -0.443957 0.46000904 0.7689563 -0.38027316
		 0.64928442 0.65865177 4.8023157e-08 0.64928603 0.76054442 -6.1705094e-08 0.4600091
		 0.88791424 0 -1 0 0 -1 0 0 -1 0 0 -1 0 -6.1705094e-08 0.4600091 0.88791424 4.8023157e-08
		 0.64928603 0.76054442 0.38027307 0.64928436 0.65865171 0.44395706 0.46000904 0.76895624
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0.44395706 0.46000904 0.76895624 0.38027307 0.64928436
		 0.65865171 0.65865195 0.64928412 0.38027328 0.76895636 0.46000895 0.44395712 0 -1
		 0 0 -1 0 0 -1 0 0 -1 0 0.76895636 0.46000895 0.44395712 0.65865195 0.64928412 0.38027328
		 0.7605449 0.64928538 1.0805225e-07 0.88791436 0.46000877 1.6454697e-08 0 -1 0 0 -1
		 0 0 -1 0 0 -1 0 0.88791436 0.46000877 1.6454697e-08 0.7605449 0.64928538 1.0805225e-07
		 0.65865189 0.64928401 -0.38027331 0.76895636 0.46000889 -0.44395718 0 -1 0 0 -1 0
		 0 -1 0 0 -1 0 0.76895636 0.46000889 -0.44395718 0.65865189 0.64928401 -0.38027331
		 0.38027316 0.64928442 -0.65865177 0.443957 0.46000904 -0.7689563 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0.443957 0.46000904 -0.7689563 0.38027316 0.64928442 -0.65865177 0 0.64928597
		 -0.76054436 6.6641505e-08 0.4600091 -0.88791424 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0.70710665
		 0 0.70710689 0.70710665 0 0.70710689 0.70710671 0 0.70710695 0.70710671 0 0.70710695
		 0.96592575 0 -0.25881916 0.96592575 0 -0.25881916 0.96592575 0 -0.25881919 0.96592575
		 0 -0.25881919 0.25881931 0 -0.96592575 0.25881931 0 -0.96592575 0.25881931 0 -0.96592575
		 0.25881931 0 -0.96592575 -1 -7.6000079e-36 0 -1 -1.5200016e-35 0 -1 -1.5047961e-35
		 0 -1 -7.5239803e-36 0 0.25881931 0 0.96592575 0.25881931 0 0.96592575 0.25881931
		 0 0.96592575 0.25881931 0 0.96592575 0.96592575 0 0.25881916 0.96592575 0 0.25881916
		 0.96592575 0 0.25881919 0.96592575 0 0.25881919 0.70710665 0 -0.70710689 0.70710665
		 0 -0.70710689 0.70710671 0 -0.70710695 0.70710671 0 -0.70710695 -1 0 0 -1 -7.6000079e-36
		 0 -1 -7.5239803e-36 0 -1 0 0 0 1 0 0 1 -9.2926302e-07 0 1 -3.930368e-07 0 1 0 0 1
		 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 3.9303663e-07 0 1 9.2926268e-07 0 1 -9.2926302e-07
		 0 0.99999994 -5.4000893e-06 0 1 -7.9352121e-06 0 1 -3.930368e-07 0.25882196 0 0.96592504
		 0.25881931 0 0.96592575 0.25881931 0 0.96592575 0.25882196 0 0.96592504 0 1 -3.930368e-07
		 0 1 -7.9352121e-06 0 1 0 0 1 0 0.70710522 0 0.70710844 0.70710671 0 0.70710695 0.70710671
		 0 0.70710695 0.70710522 0 0.70710844 0 1 0 0 1 0 0 0.99999994 0 0 1 0 0.9659254 0
		 0.25882059 0.96592575 0 0.25881919 0.96592575 0 0.25881919 0.9659254 0 0.25882059
		 0 1 0 0 0.99999994 0 0 1 0 0 1 0 0.9659254 0 -0.25882059 0.96592575 0 -0.25881919
		 0.96592575 0 -0.25881919 0.9659254 0 -0.25882059 0 1 0 0 1 0 0 1 7.9352121e-06 0
		 1 3.9303663e-07 0.70710522 0 -0.70710844 0.70710671 0 -0.70710695 0.70710671 0 -0.70710695
		 0.70710522 0 -0.70710844 0 1 3.9303663e-07 0 1 7.9352121e-06 0 0.99999994 5.4000884e-06
		 0 1 9.2926268e-07;
	setAttr ".n[664:683]" -type "float3"  0.25882196 0 -0.96592504 0.25881931 0
		 -0.96592575 0.25881931 0 -0.96592575 0.25882196 0 -0.96592504 0 1 9.2926268e-07 0
		 0.99999994 5.4000884e-06 0 1 0 0 1 0 -1 0 0 -1 0 0 -1 -7.5239803e-36 0 -1 0 0 -1
		 -1.5047961e-35 0 -1 0 0 -1 0 0 -1 -7.5239803e-36 0 0 0.99999994 -5.4000893e-06 0
		 1 -9.2926302e-07 0 1 0 0 1 0;
	setAttr -s 183 -ch 684 ".fc[0:182]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 50 0 3 1
		f 4 4 5 6 -2
		mu 0 4 0 2 5 3
		f 4 7 8 9 -6
		mu 0 4 2 4 7 5
		f 4 10 11 12 -9
		mu 0 4 4 6 9 7
		f 4 13 14 15 -12
		mu 0 4 6 8 11 9
		f 4 16 17 18 -15
		mu 0 4 8 10 13 11
		f 4 19 20 21 -18
		mu 0 4 10 12 15 13
		f 4 22 23 24 -21
		mu 0 4 12 14 17 15
		f 4 25 26 27 -24
		mu 0 4 14 16 19 17
		f 4 28 29 30 -27
		mu 0 4 16 18 21 19
		f 4 31 32 33 -30
		mu 0 4 18 20 23 21
		f 4 34 -4 35 -33
		mu 0 4 20 22 51 23
		f 3 36 37 38
		mu 0 3 25 24 35
		f 3 39 -39 40
		mu 0 3 26 25 35
		f 3 41 -41 42
		mu 0 3 27 26 35
		f 3 43 -43 44
		mu 0 3 28 27 35
		f 3 45 -45 46
		mu 0 3 29 28 35
		f 3 47 -47 48
		mu 0 3 30 29 35
		f 3 49 -49 50
		mu 0 3 31 30 35
		f 3 51 -51 52
		mu 0 3 32 31 35
		f 3 53 -53 54
		mu 0 3 33 32 35
		f 3 55 -55 56
		mu 0 3 34 33 35
		f 3 57 -57 58
		mu 0 3 36 34 35
		f 3 59 -59 -38
		mu 0 3 24 36 35
		f 3 60 61 62
		mu 0 3 48 37 49
		f 3 63 64 -62
		mu 0 3 37 38 49
		f 3 65 66 -65
		mu 0 3 38 39 49
		f 3 67 68 -67
		mu 0 3 39 40 49
		f 3 69 70 -69
		mu 0 3 40 41 49
		f 3 71 72 -71
		mu 0 3 41 42 49
		f 3 73 74 -73
		mu 0 3 42 43 49
		f 3 75 76 -75
		mu 0 3 43 44 49
		f 3 77 78 -77
		mu 0 3 44 45 49
		f 3 79 80 -79
		mu 0 3 45 46 49
		f 3 81 82 -81
		mu 0 3 46 47 49
		f 3 83 -63 -83
		mu 0 3 47 48 49
		f 4 84 85 86 -1
		mu 0 4 50 54 56 0
		f 4 87 -37 88 -86
		mu 0 4 53 24 25 55
		f 4 -87 89 90 -5
		mu 0 4 0 56 58 2
		f 4 -89 -40 91 -90
		mu 0 4 55 25 26 57
		f 4 -91 92 93 -8
		mu 0 4 2 58 60 4
		f 4 -92 -42 94 -93
		mu 0 4 57 26 27 59
		f 4 -94 95 96 -11
		mu 0 4 4 60 62 6
		f 4 -95 -44 97 -96
		mu 0 4 59 27 28 61
		f 4 -97 98 99 -14
		mu 0 4 6 62 64 8
		f 4 -98 -46 100 -99
		mu 0 4 61 28 29 63
		f 4 -100 101 102 -17
		mu 0 4 8 64 66 10
		f 4 -101 -48 103 -102
		mu 0 4 63 29 30 65
		f 4 -103 104 105 -20
		mu 0 4 10 66 68 12
		f 4 -104 -50 106 -105
		mu 0 4 65 30 31 67
		f 4 -106 107 108 -23
		mu 0 4 12 68 70 14
		f 4 -107 -52 109 -108
		mu 0 4 67 31 32 69
		f 4 -109 110 111 -26
		mu 0 4 14 70 72 16
		f 4 -110 -54 112 -111
		mu 0 4 69 32 33 71
		f 4 -112 113 114 -29
		mu 0 4 16 72 74 18
		f 4 -113 -56 115 -114
		mu 0 4 71 33 34 73
		f 4 -115 116 117 -32
		mu 0 4 18 74 76 20
		f 4 -116 -58 118 -117
		mu 0 4 73 34 36 75
		f 4 -88 119 -119 -60
		mu 0 4 24 53 75 36
		f 4 -85 -35 -118 -120
		mu 0 4 52 22 20 76
		f 4 120 121 122 -36
		mu 0 4 51 79 101 23
		f 4 123 -84 124 -122
		mu 0 4 78 48 47 100
		f 4 -124 125 126 -61
		mu 0 4 48 78 81 37
		f 4 -121 -3 127 -126
		mu 0 4 77 1 3 80
		f 4 -127 128 129 -64
		mu 0 4 37 81 83 38
		f 4 -128 -7 130 -129
		mu 0 4 80 3 5 82
		f 4 -130 131 132 -66
		mu 0 4 38 83 85 39
		f 4 -131 -10 133 -132
		mu 0 4 82 5 7 84
		f 4 -133 134 135 -68
		mu 0 4 39 85 87 40
		f 4 -134 -13 136 -135
		mu 0 4 84 7 9 86
		f 4 -136 137 138 -70
		mu 0 4 40 87 89 41
		f 4 -137 -16 139 -138
		mu 0 4 86 9 11 88
		f 4 -139 140 141 -72
		mu 0 4 41 89 91 42
		f 4 -140 -19 142 -141
		mu 0 4 88 11 13 90
		f 4 -142 143 144 -74
		mu 0 4 42 91 93 43
		f 4 -143 -22 145 -144
		mu 0 4 90 13 15 92
		f 4 -145 146 147 -76
		mu 0 4 43 93 95 44
		f 4 -146 -25 148 -147
		mu 0 4 92 15 17 94
		f 4 -148 149 150 -78
		mu 0 4 44 95 97 45
		f 4 -149 -28 151 -150
		mu 0 4 94 17 19 96
		f 4 -151 152 153 -80
		mu 0 4 45 97 99 46
		f 4 -152 -31 154 -153
		mu 0 4 96 19 21 98
		f 4 -154 155 -125 -82
		mu 0 4 46 99 100 47
		f 4 -155 -34 -123 -156
		mu 0 4 98 21 23 101
		f 4 156 157 158 159
		mu 0 4 102 103 104 105
		f 4 -157 160 161 162
		mu 0 4 106 107 108 109
		f 4 -162 163 164 165
		mu 0 4 110 108 111 112
		f 4 -165 166 167 168
		mu 0 4 113 111 114 115
		f 4 -168 169 170 171
		mu 0 4 116 114 117 118
		f 4 -171 172 173 174
		mu 0 4 119 117 120 121
		f 4 -174 175 176 177
		mu 0 4 122 120 123 124
		f 4 -177 178 179 180
		mu 0 4 125 123 126 127
		f 4 -180 181 182 183
		mu 0 4 128 126 129 130
		f 4 -183 184 185 186
		mu 0 4 131 129 132 133
		f 4 -186 187 188 189
		mu 0 4 134 132 135 136
		f 4 -189 190 -159 191
		mu 0 4 137 135 105 138
		f 3 -163 192 193
		mu 0 3 139 140 141
		f 3 -166 194 -193
		mu 0 3 140 142 141
		f 3 -169 195 -195
		mu 0 3 142 143 141
		f 3 -172 196 -196
		mu 0 3 143 144 141
		f 3 -175 197 -197
		mu 0 3 144 145 141
		f 3 -178 198 -198
		mu 0 3 145 146 141
		f 3 -181 199 -199
		mu 0 3 146 147 141
		f 3 -184 200 -200
		mu 0 3 147 148 141
		f 3 -187 201 -201
		mu 0 3 148 149 141
		f 3 -190 202 -202
		mu 0 3 149 150 141
		f 3 -192 203 -203
		mu 0 3 150 151 141
		f 3 -158 -194 -204
		mu 0 3 151 139 141
		f 3 204 205 206
		mu 0 3 152 153 154
		f 3 207 -207 208
		mu 0 3 155 152 154
		f 3 209 -209 210
		mu 0 3 156 155 154
		f 3 211 -211 212
		mu 0 3 157 156 154
		f 3 213 -213 214
		mu 0 3 158 157 154
		f 3 215 -215 216
		mu 0 3 159 158 154
		f 3 217 -217 218
		mu 0 3 160 159 154
		f 3 219 -219 220
		mu 0 3 161 160 154
		f 3 221 -221 222
		mu 0 3 162 161 154
		f 3 223 -223 224
		mu 0 3 163 162 154
		f 3 225 -225 226
		mu 0 3 164 163 154
		f 3 227 -227 -206
		mu 0 3 153 164 154
		f 4 228 229 -161 230
		mu 0 4 165 166 108 107
		f 4 231 232 -164 -230
		mu 0 4 166 167 111 108
		f 4 233 234 -167 -233
		mu 0 4 167 168 114 111
		f 4 235 236 -170 -235
		mu 0 4 168 169 117 114
		f 4 237 238 -173 -237
		mu 0 4 169 170 120 117
		f 4 239 240 -176 -239
		mu 0 4 170 171 123 120
		f 4 241 242 -179 -241
		mu 0 4 171 172 126 123
		f 4 243 244 -182 -243
		mu 0 4 172 173 129 126
		f 4 245 246 -185 -245
		mu 0 4 173 174 132 129
		f 4 247 248 -188 -247
		mu 0 4 174 175 135 132
		f 4 249 250 -191 -249
		mu 0 4 175 176 105 135
		f 4 251 -231 -160 -251
		mu 0 4 176 177 102 105
		f 4 252 253 254 -228
		mu 0 4 153 178 179 164
		f 4 255 -252 256 -254
		mu 0 4 180 177 176 181
		f 4 -256 257 258 -229
		mu 0 4 165 182 183 166
		f 4 -253 -205 259 -258
		mu 0 4 178 153 152 184
		f 4 -259 260 261 -232
		mu 0 4 166 183 185 167
		f 4 -260 -208 262 -261
		mu 0 4 184 152 155 186
		f 4 -262 263 264 -234
		mu 0 4 167 185 187 168
		f 4 -263 -210 265 -264
		mu 0 4 186 155 156 188
		f 4 -265 266 267 -236
		mu 0 4 168 187 189 169
		f 4 -266 -212 268 -267
		mu 0 4 188 156 157 190
		f 4 -268 269 270 -238
		mu 0 4 169 189 191 170
		f 4 -269 -214 271 -270
		mu 0 4 190 157 158 192
		f 4 -271 272 273 -240
		mu 0 4 170 191 193 171
		f 4 -272 -216 274 -273
		mu 0 4 192 158 159 194
		f 4 -274 275 276 -242
		mu 0 4 171 193 195 172
		f 4 -275 -218 277 -276
		mu 0 4 194 159 160 196
		f 4 -277 278 279 -244
		mu 0 4 172 195 197 173
		f 4 -278 -220 280 -279
		mu 0 4 196 160 161 198
		f 4 -280 281 282 -246
		mu 0 4 173 197 199 174
		f 4 -281 -222 283 -282
		mu 0 4 198 161 162 200
		f 4 -283 284 285 -248
		mu 0 4 174 199 201 175
		f 4 -284 -224 286 -285
		mu 0 4 200 162 163 202
		f 4 -286 287 -257 -250
		mu 0 4 175 201 181 176
		f 4 -287 -226 -255 -288
		mu 0 4 202 163 164 179
		f 4 288 289 290 291
		mu 0 4 203 204 205 206
		f 4 292 293 294 295
		mu 0 4 207 208 209 210
		f 4 296 297 298 299
		mu 0 4 211 212 213 214
		f 4 300 301 302 303
		mu 0 4 215 216 217 218
		f 4 304 -292 305 -302
		mu 0 4 219 203 206 220
		f 4 306 -296 307 -290
		mu 0 4 204 207 210 205
		f 4 308 -300 309 -294
		mu 0 4 208 211 214 209
		f 4 310 -304 311 -298
		mu 0 4 221 215 218 222
		f 4 312 313 314 315
		mu 0 4 223 224 225 226
		f 4 -316 316 317 318
		mu 0 4 223 226 227 228
		f 4 -319 319 320 321
		mu 0 4 223 228 229 230
		f 4 322 323 324 -314
		mu 0 4 224 231 232 225
		f 4 325 -306 326 -324
		mu 0 4 233 220 206 234
		f 4 -325 327 328 -315
		mu 0 4 225 232 235 226
		f 4 -327 -291 329 -328
		mu 0 4 234 206 205 236
		f 4 -329 330 331 -317
		mu 0 4 226 235 237 227
		f 4 -330 -308 332 -331
		mu 0 4 236 205 210 238
		f 4 -332 333 334 -318
		mu 0 4 227 237 239 228
		f 4 -333 -295 335 -334
		mu 0 4 238 210 209 240
		f 4 -335 336 337 -320
		mu 0 4 228 239 241 229
		f 4 -336 -310 338 -337
		mu 0 4 240 209 214 242
		f 4 -338 339 340 -321
		mu 0 4 229 241 243 230
		f 4 -339 -299 341 -340
		mu 0 4 242 214 213 244
		f 4 -341 342 343 -322
		mu 0 4 230 243 245 223
		f 4 -342 -312 344 -343
		mu 0 4 246 222 218 245
		f 4 -326 345 -345 -303
		mu 0 4 217 231 245 218
		f 4 -323 -313 -344 -346
		mu 0 4 231 224 223 245;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "base_geo_parentConstraint1" -p "base_geo";
	rename -uid "7C0E6EC7-4564-B0A4-E5B1-8894DD4CAD9C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.83959364891052246 -1.1624376822146523 6.0857208161735343e-11 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "base_geo_scaleConstraint1" -p "base_geo";
	rename -uid "EC0FF872-4A25-B681-3E9D-E08E84F6300B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Base_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "lower_arm_geo" -p "Geometry";
	rename -uid "E55D2DB7-49C6-2FED-3950-AD96345D4624";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -0.0088138314227734389 7.7685333410733488 -5.7011069029400812 ;
	setAttr ".sp" -type "double3" -0.0088138314227734389 7.7685333410733488 -5.7011069029400812 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "lower_arm_geoShape" -p "lower_arm_geo";
	rename -uid "6DC4D983-4A11-10DE-24D1-4F9C8D4B4060";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dsm" 2;
createNode mesh -n "lower_arm_geoShapeOrig" -p "lower_arm_geo";
	rename -uid "75C2C129-40D1-6153-8383-3995327C1709";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster2";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[46:57]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 164 ".uvst[0].uvsp[0:163]" -type "float2" 0.36929849 0.76828945
		 0.42453945 0.71283531 0.5 0.69282889 0.57546055 0.71283525 0.5 0.8325904 0.63070154
		 0.76828945 0.64954191 0.83845329 0.60416663 0.68555015 0.34479091 0.83966649 0.35045809
		 0.83845323 0.34375 0.84375 0.47916672 0.68843985 0.50000006 0.68843985 0.36468354
		 0.765625 0.52083337 0.68843985 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875
		 0.5625 0.68843985 0.578125 0.70843351 0.58333331 0.68843985 0.63531649 0.765625 0.60416663
		 0.68843985 0.65625 0.84375 0.60416663 0.68843985 0.5 0.83749998 0.50000006 0.3125
		 0.54166669 0.3125 0.65560228 0.16286854 0.59822887 0.30581859 0.52083337 0.31717542
		 0.50000006 0.68555015 0.5625 0.31717503 0.54166669 0.68555015 0.60416663 0.31717542
		 0.58333331 0.68555015 0.47748259 0.31910691 0.5 0.83221531 0.50000006 0.31717503
		 0.47916675 0.68555015 0.54166669 0.31717503 0.52083337 0.68555015 0.58333331 0.31717542
		 0.56250006 0.68555015 0.5 0.15855005 0.60456699 0.68434912 0.51997674 0.30581853
		 0.50191081 0.15745224 0.48167813 0.30781534 0.55993021 0.30581853 0.47916672 0.31717503
		 0.57990694 0.30581853 0.50000006 0.3125 0.52083337 0.3125 0.54166669 0.3125 0.5625
		 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.65625 0.15625 0.47916672 0.3125 0.47916672
		 0.3125 0.5 0.15000001 0.375 0.31474137 0.3958334 0.31474134 0.39583337 0.68619841
		 0.375 0.68619841 0.41666669 0.31474137 0.41666669 0.68619841 0.4375 0.3147414 0.4375
		 0.68619835 0.45833337 0.31474137 0.45833337 0.68619841 0.47916672 0.31474137 0.47916672
		 0.68619841 0.5 0.3147414 0.49999997 0.68619835 0.52083337 0.31474137 0.52083337 0.68619817
		 0.54166675 0.31474134 0.54166669 0.68619841 0.5625 0.31474164 0.5625 0.68619841 0.58333337
		 0.31474134 0.58333343 0.68619841 0.60416663 0.31474137 0.60416669 0.68619841 0.62499994
		 0.3147414 0.62499994 0.68619841 0.57031322 0.033839021 0.62178618 0.085311264 0.5
		 0.15000001 0.5 0.014998627 0.42968678 0.033839021 0.37821382 0.085311264 0.35937342
		 0.15562506 0.37821385 0.22593834 0.42968678 0.2774111 0.5 0.29625148 0.57031322 0.2774111
		 0.62178618 0.22593834 0.64062655 0.15562506 0.62178618 0.91343892 0.57031322 0.9649111
		 0.5 0.83749998 0.5 0.98375148 0.42968678 0.9649111 0.37821382 0.91343892 0.35937342
		 0.84312505 0.37821385 0.77281177 0.42968678 0.72133899 0.5 0.70249861 0.57031322
		 0.72133899 0.62178618 0.77281177 0.64062655 0.84312505 0.375 0.3125 0.39583334 0.3125
		 0.63531649 0.078125 0.578125 0.020933539 0.41666669 0.3125 0.5 0 0.43750003 0.3125
		 0.421875 0.020933539 0.45833337 0.3125 0.36468354 0.078125 0.47916672 0.3125 0.34375
		 0.15625 0.50000006 0.3125 0.36468354 0.234375 0.52083337 0.3125 0.421875 0.29156646
		 0.54166669 0.3125 0.5 0.3125 0.5625 0.3125 0.578125 0.29156646 0.58333331 0.3125
		 0.63531649 0.234375 0.60416663 0.3125 0.65625 0.15625 0.62499994 0.3125 0.62499994
		 0.68843985 0.60416663 0.68843985 0.63531649 0.921875 0.65625 0.84375 0.578125 0.97906649
		 0.375 0.68843985 0.39583334 0.68843985 0.5 1 0.41666669 0.68843985 0.421875 0.97906649
		 0.43750003 0.68843985 0.36468354 0.921875 0.45833337 0.68843985 0.34375 0.84375 0.47916672
		 0.68843985 0.36468354 0.765625 0.50000006 0.68843985 0.421875 0.70843351 0.52083337
		 0.68843985 0.5 0.6875 0.54166669 0.68843985 0.578125 0.70843351 0.5625 0.68843985
		 0.63531649 0.765625 0.58333331 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 122 ".vt[0:121]"  -0.088813059 12.72500229 -12.07834053 -0.066573218 12.71004009 -12.091342926
		 -0.066573218 12.69586086 -12.075026512 -0.3926149 12.76702404 -12.041824341 -0.40412727 12.75673103 -12.050767899
		 -0.40412727 12.7425499 -12.034450531 -0.63129389 12.89023399 -11.93475342 -0.65123385 12.8842907 -11.93991756
		 -0.65123385 12.87011147 -11.92359924 -0.7186566 13.058542252 -11.7884922 -0.74168134 13.058542252 -11.7884922
		 -0.74168134 13.044361115 -11.77217484 -0.63129389 13.22684956 -11.64223099 -0.65123385 13.23279285 -11.63706589
		 -0.65123385 13.21861172 -11.62074852 -0.3926149 13.35006046 -11.53515911 -0.40412727 13.36035347 -11.5262146
		 -0.40412727 13.34617329 -11.50989723 -0.088813059 13.39208221 -11.49864292 -0.066573218 13.40704346 -11.48564053
		 -0.066573218 13.39286327 -11.46932316 -0.088813059 13.058542252 -11.7884922 -0.066573218 13.058542252 -11.7884922
		 -0.066573218 13.044361115 -11.77217484 -0.39024809 2.18912292 0.13478439 -0.40412727 2.17671347 0.12400035
		 -0.40412727 2.19430089 0.10376199 -0.65123385 2.32186079 0.21461329 -0.65123385 2.30427337 0.23485166
		 -0.62719452 2.31143808 0.24107787 -0.71392304 2.47852397 0.38627741 -0.74168134 2.47852397 0.38627741
		 -0.74168134 2.49611139 0.36603904 -0.65123385 2.670362 0.51746482 -0.65123385 2.65277433 0.53770316
		 -0.62719452 2.64560962 0.53147691 -0.39024809 2.76792502 0.63777041 -0.40412727 2.78033471 0.64855444
		 -0.40412727 2.79792213 0.6283161 -0.093385674 2.8089869 0.67345375 -0.066573218 2.82702494 0.68912882
		 -0.066573218 2.84461212 0.66889036 -0.093385674 2.1480608 0.099101089 -0.066573218 2.130023 0.083425917
		 -0.066573218 2.14761043 0.063187554 -0.066573218 2.49611139 0.36603904 -0.066573218 2.47852397 0.38627741
		 -0.093385674 2.47852397 0.38627741 -0.83959329 12.81364346 -11.50667667 0.83959329 12.81364346 -11.50667667
		 -0.82829189 12.7738266 -11.62065601 -0.83959329 12.7738266 -11.62065601 -0.83959329 12.77780724 -11.60925961
		 -0.82829189 12.83603668 -11.62470436 -0.83959329 12.83603668 -11.62470436 -0.83959329 12.8337965 -11.61290359
		 -0.82829189 12.89224529 -11.59712791 -0.83959329 12.89224529 -11.59712791 -0.83959329 12.88438511 -11.58808327
		 -0.82829189 12.92739296 -11.54531479 -0.83959329 12.92739296 -11.54531479 -0.83959329 12.91601944 -11.5414505
		 -0.82829189 12.9320612 -11.48314857 -0.83959329 12.9320612 -11.48314857 -0.83959329 12.92022133 -11.48550129
		 -0.82829189 12.90499973 -11.4272871 -0.83959329 12.90499973 -11.4272871 -0.83959329 12.89586449 -11.43522549
		 -0.82829189 12.85345936 -11.39269829 -0.83959329 12.85345936 -11.39269829 -0.83959329 12.84947777 -11.4040947
		 -0.82829189 12.79125023 -11.38864994 -0.83959329 12.79125023 -11.38864994 -0.83959329 12.7934885 -11.40045071
		 -0.82829189 12.73504162 -11.41622543 -0.83959329 12.73504162 -11.41622543 -0.83959329 12.74289989 -11.42527008
		 -0.82829189 12.69989204 -11.46804047 -0.83959329 12.69989204 -11.46804047 -0.83959329 12.71126652 -11.47190285
		 -0.82829189 12.69522476 -11.53020573 -0.83959329 12.69522476 -11.53020573 -0.83959329 12.70706558 -11.52785301
		 -0.82829189 12.72228527 -11.5860672 -0.83959329 12.72228527 -11.5860672 -0.83959329 12.73142052 -11.57812786
		 0.82829142 12.7738266 -11.62065601 0.83959329 12.7738266 -11.62065601 0.83959329 12.77780724 -11.60925961
		 0.82829142 12.83603668 -11.62470436 0.83959329 12.83603668 -11.62470436 0.83959329 12.8337965 -11.61290359
		 0.82829142 12.89224529 -11.59712791 0.83959329 12.89224529 -11.59712791 0.83959329 12.88438511 -11.58808327
		 0.82829142 12.92739296 -11.54531479 0.83959329 12.92739296 -11.54531479 0.83959329 12.91601944 -11.5414505
		 0.82829142 12.9320612 -11.48314857 0.83959329 12.9320612 -11.48314857 0.83959329 12.92022133 -11.48550129
		 0.82829142 12.90499973 -11.4272871 0.83959329 12.90499973 -11.4272871 0.83959329 12.89586449 -11.43522549
		 0.82829142 12.85345936 -11.39269829 0.83959329 12.85345936 -11.39269829 0.83959329 12.84947777 -11.4040947
		 0.82829142 12.79125023 -11.38864994 0.83959329 12.79125023 -11.38864994 0.83959329 12.7934885 -11.40045071
		 0.82829142 12.73504162 -11.41622543 0.83959329 12.73504162 -11.41622543 0.83959329 12.74289989 -11.42527008
		 0.82829142 12.69989204 -11.46804047 0.83959329 12.69989204 -11.46804047 0.83959329 12.71126652 -11.47190285
		 0.82829142 12.69522476 -11.53020573 0.83959329 12.69522476 -11.53020573 0.83959329 12.70706558 -11.52785301
		 0.82829142 12.72228527 -11.5860672 0.83959329 12.72228527 -11.5860672 0.83959329 12.73142052 -11.57812786;
	setAttr -s 248 ".ed";
	setAttr ".ed[0:165]"  21 0 0 0 3 0 3 6 0 6 21 0 6 9 0 9 12 0 12 21 0 12 15 0
		 15 18 0 18 21 0 0 1 0 1 4 0 4 3 0 1 2 0 2 5 0 5 4 0 4 7 0 7 6 0 5 8 0 8 7 0 7 10 0
		 10 9 0 8 11 0 11 10 0 10 13 0 13 12 0 11 14 0 14 13 0 13 16 0 16 15 0 14 17 0 17 16 0
		 16 19 0 19 18 0 17 20 0 20 19 0 19 22 0 22 21 0 20 23 0 23 22 0 1 22 0 23 2 0 26 25 0
		 25 28 0 28 27 0 27 26 0 25 24 0 24 29 0 29 28 0 32 31 0 31 34 0 34 33 0 33 32 0 31 30 0
		 30 35 0 35 34 0 41 40 0 40 46 0 46 45 0 45 41 0 40 39 0 39 47 0 47 46 0 27 8 0 5 26 0
		 33 14 0 11 32 0 38 41 0 41 20 0 17 38 0 45 44 0 44 2 0 23 45 0 44 26 0 27 32 0 33 38 0
		 47 35 0 30 29 0 29 47 0 24 42 0 42 47 0 39 36 0 36 35 0 25 43 0 43 42 0 44 43 0 28 31 0
		 34 37 0 37 38 0 36 37 0 37 40 0 43 46 0 50 53 0 53 89 0 89 86 0 86 50 0 53 56 0 56 92 0
		 92 89 0 56 59 0 59 95 0 95 92 0 59 62 0 62 98 0 98 95 0 62 65 0 65 101 0 101 98 0
		 65 68 0 68 104 0 104 101 0 68 71 0 71 107 0 107 104 0 71 74 0 74 110 0 110 107 0
		 74 77 0 77 113 0 113 110 0 77 80 0 80 116 0 116 113 0 80 83 0 83 119 0 119 116 0
		 83 50 0 86 119 0 55 52 0 52 48 0 48 55 0 58 55 0 48 58 0 61 58 0 48 61 0 64 61 0
		 48 64 0 67 64 0 48 67 0 70 67 0 48 70 0 73 70 0 48 73 0 76 73 0 48 76 0 79 76 0 48 79 0
		 82 79 0 48 82 0 85 82 0 48 85 0 52 85 0 88 91 0 91 49 0 49 88 0 91 94 0 94 49 0 94 97 0
		 97 49 0 97 100 0 100 49 0 100 103 0 103 49 0 103 106 0 106 49 0 106 109 0;
	setAttr ".ed[166:247]" 109 49 0 109 112 0 112 49 0 112 115 0 115 49 0 115 118 0
		 118 49 0 118 121 0 121 49 0 121 88 0 50 51 0 51 54 0 54 53 0 51 52 0 55 54 0 54 57 0
		 57 56 0 58 57 0 57 60 0 60 59 0 61 60 0 60 63 0 63 62 0 64 63 0 63 66 0 66 65 0 67 66 0
		 66 69 0 69 68 0 70 69 0 69 72 0 72 71 0 73 72 0 72 75 0 75 74 0 76 75 0 75 78 0 78 77 0
		 79 78 0 78 81 0 81 80 0 82 81 0 81 84 0 84 83 0 85 84 0 51 84 0 86 87 0 87 120 0
		 120 119 0 87 88 0 121 120 0 87 90 0 90 91 0 89 90 0 90 93 0 93 94 0 92 93 0 93 96 0
		 96 97 0 95 96 0 96 99 0 99 100 0 98 99 0 99 102 0 102 103 0 101 102 0 102 105 0 105 106 0
		 104 105 0 105 108 0 108 109 0 107 108 0 108 111 0 111 112 0 110 111 0 111 114 0 114 115 0
		 113 114 0 114 117 0 117 118 0 116 117 0 117 120 0;
	setAttr -s 496 ".n";
	setAttr ".n[0:165]" -type "float3"  1.302379e-06 0.65594107 -0.75481206 7.2661794e-07
		 0.65593642 -0.75481611 3.7924607e-07 0.65593755 -0.75481504 -8.753268e-07 0.65593982
		 -0.75481319 1.302379e-06 0.65594107 -0.75481206 -8.753268e-07 0.65593982 -0.75481319
		 5.9769425e-12 0.65594172 -0.75481147 -8.1882001e-07 0.65594161 -0.75481164 1.302379e-06
		 0.65594107 -0.75481206 -8.1882001e-07 0.65594161 -0.75481164 -2.0921912e-06 0.65594059
		 -0.75481248 3.3549832e-06 0.6559397 -0.75481331 7.2661794e-07 0.65593642 -0.75481611
		 0 0.65592593 -0.75482529 -1.4194475e-05 0.6559034 -0.75484484 3.7924607e-07 0.65593755
		 -0.75481504 -0.18026236 -0.74247122 -0.64516813 -0.18024842 -0.7424494 -0.64519721
		 -0.36725754 -0.70206559 -0.61010319 -0.18026237 -0.74247128 -0.64516807 3.7924607e-07
		 0.65593755 -0.75481504 -1.4194475e-05 0.6559034 -0.75484484 -2.2816515e-05 0.65592045
		 -0.75483 -8.753268e-07 0.65593982 -0.75481319 -0.56450868 -0.62304485 -0.5414288
		 -0.36725754 -0.70206559 -0.61010319 -0.76412046 -0.48690951 -0.42313012 -0.56450868
		 -0.62304473 -0.5414288 -8.753268e-07 0.65593982 -0.75481319 -2.2816515e-05 0.65592045
		 -0.75483 9.6541601e-11 0.65593892 -0.75481397 5.9769425e-12 0.65594172 -0.75481147
		 -0.93108541 -0.27535677 -0.23928788 -0.76412046 -0.48690951 -0.42313012 -0.93108642
		 -0.27535442 -0.23928618 -0.93108547 -0.27535677 -0.23928787 5.9769425e-12 0.65594172
		 -0.75481147 9.6541601e-11 0.65593892 -0.75481397 5.3112349e-06 0.65594 -0.75481308
		 -8.1882001e-07 0.65594161 -0.75481164 -0.93108779 0.2753388 0.2392993 -0.9310872
		 0.27535319 0.2392852 -0.764121 0.48690897 0.42312971 -0.93108773 0.27533874 0.2392993
		 -8.1882001e-07 0.65594161 -0.75481164 5.3112349e-06 0.65594 -0.75481308 -1.4193778e-05
		 0.65591264 -0.75483668 -2.0921912e-06 0.65594059 -0.75481248 -0.5645147 0.62303418
		 0.54143465 -0.764121 0.48690897 0.42312971 -0.36725715 0.70206559 0.61010331 -0.56451476
		 0.62303424 0.54143459 -2.0921912e-06 0.65594059 -0.75481248 -1.4193778e-05 0.65591264
		 -0.75483668 3.5788831e-05 0.65593112 -0.75482076 3.3549832e-06 0.6559397 -0.75481331
		 -0.18024451 0.74241936 0.64523274 -0.36725715 0.70206559 0.61010331 -0.18024774 0.74244946
		 0.64519727 -0.18024454 0.74241942 0.6452328 3.3549832e-06 0.6559397 -0.75481331 3.5788831e-05
		 0.65593112 -0.75482076 2.3728342e-05 0.65593952 -0.75481343 1.302379e-06 0.65594107
		 -0.75481206 1 0 0 0.99999994 -8.0170652e-09 0 1 -4.0085362e-09 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 -4.0085362e-09 0 0 0.65592593 -0.75482529 7.2661794e-07 0.65593642 -0.75481611
		 1.302379e-06 0.65594107 -0.75481206 2.3728342e-05 0.65593952 -0.75481343 -0.36725774
		 -0.70206547 -0.61010319 -0.36725622 -0.70206457 -0.6101051 -0.76411885 -0.4869093
		 -0.42313313 -0.76412016 -0.48690975 -0.42313033 -5.6329469e-07 -0.6559419 0.75481141
		 -1.4426928e-07 -0.65594161 0.75481164 -5.0885372e-08 -0.65594125 0.75481188 -1.1384262e-07
		 -0.6559431 0.75481045 -0.9310872 0.27535322 0.23928522 -0.93108636 0.27535343 0.23928785
		 -0.76412189 0.48690757 0.4231298 -0.76412106 0.48690891 0.42312965 5.9354625e-07
		 -0.65594292 0.75481051 4.0994085e-08 -0.65594095 0.75481224 3.1680177e-08 -0.65594071
		 0.75481248 7.317168e-07 -0.65594184 0.75481141 1 -8.0144806e-09 0 1 0 0 1 0 0 1 -4.0072439e-09
		 0 1.4882731e-06 -0.65593994 0.75481308 1.9263466e-07 -0.65594012 0.75481296 1.391615e-07
		 -0.65594083 0.75481224 2.1624385e-06 -0.65594077 0.75481236 -0.36725774 -0.70206547
		 -0.61010319 -0.76412016 -0.48690975 -0.42313033 -0.76412046 -0.48690951 -0.42313012
		 -0.36725754 -0.70206559 -0.61010319 -0.9310872 0.27535322 0.23928522 -0.76412106
		 0.48690891 0.42312965 -0.764121 0.48690897 0.42312971 -0.9310872 0.27535319 0.2392852
		 -0.36725736 0.70206559 0.61010325 -0.18024772 0.74244952 0.64519715 -0.18024774 0.74244946
		 0.64519727 -0.36725715 0.70206559 0.61010331 1 -4.0072439e-09 0 1 0 0 1 0 0 1 -4.0085362e-09
		 0 -0.18024839 -0.74244934 -0.64519715 -0.36725774 -0.70206547 -0.61010319 -0.36725754
		 -0.70206559 -0.61010319 -0.18024842 -0.7424494 -0.64519721 -0.76412016 -0.48690975
		 -0.42313033 -0.93108648 -0.27535442 -0.23928623 -0.93108642 -0.27535442 -0.23928618
		 -0.76412046 -0.48690951 -0.42313012 -0.76412106 0.48690891 0.42312965 -0.36725736
		 0.70206559 0.61010325 -0.36725715 0.70206559 0.61010331 -0.764121 0.48690897 0.42312971
		 1 -8.0144806e-09 0 1 -4.0072439e-09 0 1 -4.0085362e-09 0 0.99999994 -8.0170652e-09
		 0 1.391615e-07 -0.65594083 0.75481224 3.1680177e-08 -0.65594071 0.75481248 4.0994085e-08
		 -0.65594095 0.75481224 -5.0885372e-08 -0.65594125 0.75481188 1.391615e-07 -0.65594083
		 0.75481224 -5.0885372e-08 -0.65594125 0.75481188 -1.4426928e-07 -0.65594161 0.75481164
		 6.5021673e-08 -0.65594131 0.75481188 1.9263466e-07 -0.65594012 0.75481296 -5.0189168e-08
		 -0.65594006 0.7548129 3.1680177e-08 -0.65594071 0.75481248 1.391615e-07 -0.65594083
		 0.75481224 -1.4426928e-07 -0.65594161 0.75481164 -5.6329469e-07 -0.6559419 0.75481141
		 1.1540478e-06 -0.65594006 0.75481296 6.5021673e-08 -0.65594131 0.75481188 -0.36725622
		 -0.70206457 -0.6101051 -0.36725774 -0.70206547 -0.61010319 -0.18024839 -0.74244934
		 -0.64519715 -0.18024936 -0.74244946 -0.64519674 -0.76412016 -0.48690975 -0.42313033
		 -0.76411885 -0.4869093 -0.42313313 -0.93108708 -0.2753537 -0.23928459 -0.93108648
		 -0.27535442 -0.23928623 -1.1384262e-07 -0.6559431 0.75481045 -5.0885372e-08 -0.65594125
		 0.75481188 4.0994085e-08 -0.65594095 0.75481224 5.9354625e-07 -0.65594292 0.75481051
		 -0.76412106 0.48690891 0.42312965 -0.76412189 0.48690757 0.4231298 -0.36725852 0.70206749
		 0.61010045 -0.36725736 0.70206559 0.61010325 7.317168e-07 -0.65594184 0.75481141
		 3.1680177e-08 -0.65594071 0.75481248;
	setAttr ".n[166:331]" -type "float3"  -5.0189168e-08 -0.65594006 0.7548129
		 -5.8178392e-07 -0.65593857 0.75481427 -0.36725736 0.70206559 0.61010325 -0.36725852
		 0.70206749 0.61010045 -0.18024859 0.74245352 0.64519233 -0.18024772 0.74244952 0.64519715
		 -5.8178392e-07 -0.65593857 0.75481427 -5.0189168e-08 -0.65594006 0.7548129 1.9263466e-07
		 -0.65594012 0.75481296 1.4882731e-06 -0.65593994 0.75481308 6.5021673e-08 -0.65594131
		 0.75481188 1.1540478e-06 -0.65594006 0.75481296 2.1624385e-06 -0.65594077 0.75481236
		 1.391615e-07 -0.65594083 0.75481224 0.99999994 0 0 1 0 0 1 -4.0072439e-09 0 1 0 0
		 0 -0.32161719 -0.94686979 0 -0.064938225 -0.99788928 0 -0.064938217 -0.99788934 0
		 -0.32161722 -0.94686979 0 0.44045377 -0.89777535 0 0.65593731 -0.75481534 0 0.65593737
		 -0.75481534 0 0.44045374 -0.89777523 0 0.65593731 -0.75481534 0 0.82755649 -0.56138241
		 0 0.82755643 -0.56138241 0 0.65593737 -0.75481534 0 0.99719304 -0.074873164 0 0.98247176
		 0.18641137 0 0.98247182 0.18641149 0 0.9971931 -0.074873 0 0.98247176 0.18641137
		 0 0.75481349 0.65593946 0 0.75481355 0.65593946 0 0.98247182 0.18641149 0 0.75481349
		 0.65593946 0 0.321623 0.94686782 0 0.32162303 0.94686776 0 0.75481355 0.65593946
		 0 0.321623 0.94686782 0 0.064939409 0.99788928 0 0.064939402 0.99788916 0 0.32162303
		 0.94686776 0 -0.44044149 0.89778131 0 -0.65593708 0.75481558 0 -0.65593708 0.75481558
		 0 -0.44044152 0.89778131 0 -0.65593708 0.75481558 0 -0.82755756 0.56138086 0 -0.82755744
		 0.56138098 0 -0.65593708 0.75481558 0 -0.99719298 0.074874155 0 -0.98247325 -0.18640365
		 0 -0.98247325 -0.18640375 0 -0.99719292 0.074874133 0 -0.98247325 -0.18640365 0 -0.75481349
		 -0.65593946 0 -0.75481355 -0.65593946 0 -0.98247325 -0.18640375 0 -0.75481349 -0.65593946
		 0 -0.32161719 -0.94686979 0 -0.32161722 -0.94686979 0 -0.75481355 -0.65593946 -1
		 4.1541504e-08 0 -1 -9.1831998e-07 0 -1 -2.0965909e-07 0 -1 6.6673124e-07 0 -1 4.1541504e-08
		 0 -1 -2.0965909e-07 0 -1 9.107639e-07 0 -1 6.6673124e-07 0 -1 -2.0965909e-07 0 -1
		 2.3715577e-07 0 -1 9.107639e-07 0 -1 -2.0965909e-07 0 -0.99999994 3.3502565e-07 0
		 -1 2.3715577e-07 0 -1 -2.0965909e-07 0 -1 2.9112778e-07 0 -0.99999994 3.3502565e-07
		 0 -1 -2.0965909e-07 0 -1 -4.1539924e-08 0 -1 2.9112778e-07 0 -1 -2.0965909e-07 0
		 -1 -6.6681406e-07 0 -1 -4.1539924e-08 0 -1 -2.0965909e-07 0 -1 -2.4621639e-07 0 -1
		 -6.6681406e-07 0 -1 -2.0965909e-07 0 -0.99999994 4.3501527e-07 0 -1 -2.4621639e-07
		 0 -1 -2.0965909e-07 0 -1 -9.5410144e-07 0 -0.99999994 4.3501527e-07 0 -1 -2.0965909e-07
		 0 -1 -9.1831998e-07 0 -1 -9.5410144e-07 0 -1 -2.0965909e-07 0 1 -8.1330779e-07 0
		 1 0 0 1 -1.0483254e-07 0 1 0 0 1 6.6672357e-07 0 1 -1.0483254e-07 0 1 6.6672357e-07
		 0 1 9.1075702e-07 0 1 -1.0483254e-07 0 1 9.1075702e-07 0 1 -2.934061e-09 0 1 -1.0483254e-07
		 0 1 -2.934061e-09 0 0.99999994 -2.3852101e-07 0 1 -1.0483254e-07 0 0.99999994 -2.3852101e-07
		 0 1 0 0 1 -1.0483254e-07 0 1 0 0 1 0 0 1 -1.0483254e-07 0 1 0 0 1 -6.6681525e-07
		 0 1 -1.0483254e-07 0 1 -6.6681525e-07 0 0.99999994 -2.4623498e-07 0 1 -1.0483254e-07
		 0 0.99999994 -2.4623498e-07 0 1 6.7508893e-07 0 1 -1.0483254e-07 0 1 6.7508893e-07
		 0 1 -5.735277e-07 0 1 -1.0483254e-07 0 1 -5.735277e-07 0 1 -8.1330779e-07 0 1 -1.0483254e-07
		 0 0 -0.32161719 -0.94686979 0 -0.3216162 -0.94687009 0 -0.064938813 -0.99788922 0
		 -0.064938225 -0.99788928 -1 1.6796287e-07 0 -1 -9.1831998e-07 0 -1 4.1541504e-08
		 0 -0.99999994 1.7001871e-07 0 0 0.44045377 -0.89777535 0 0.44045541 -0.89777446 0
		 0.65593868 -0.75481427 0 0.65593731 -0.75481534 -0.99999994 1.7001871e-07 0 -1 4.1541504e-08
		 0 -1 6.6673124e-07 0 -1 2.7038102e-06 0 0 0.65593731 -0.75481534 0 0.65593868 -0.75481427
		 0 0.82755709 -0.56138158 0 0.82755649 -0.56138241 -1 2.7038102e-06 0 -1 6.6673124e-07
		 0 -1 9.107639e-07 0 -1 2.6875296e-06 0 0 0.99719304 -0.074873164 0 0.99719161 -0.07489261
		 0 0.98247433 0.18639791 0 0.98247176 0.18641137;
	setAttr ".n[332:495]" -type "float3"  -1 2.6875296e-06 0 -1 9.107639e-07 0
		 -1 2.3715577e-07 0 -0.99999994 0 0 0 0.98247176 0.18641137 0 0.98247433 0.18639791
		 0 0.89995861 0.43597534 0 0.75481349 0.65593946 -0.99999994 0 0 -1 2.3715577e-07
		 0 -0.99999994 3.3502565e-07 0 -1 1.3519081e-06 0 0 0.75481349 0.65593946 0 0.5572418
		 0.83035034 0 0.3216196 0.94686896 0 0.321623 0.94686782 -1 1.3519081e-06 0 -0.99999994
		 3.3502565e-07 0 -1 2.9112778e-07 0 -1 1.1924017e-06 0 0 0.321623 0.94686782 0 0.3216196
		 0.94686896 0 0.064938813 0.99788922 0 0.064939409 0.99788928 -1 1.1924017e-06 0 -1
		 2.9112778e-07 0 -1 -4.1539924e-08 0 -1 -1.70051e-07 0 0 -0.44044149 0.89778131 0
		 -0.44044274 0.89778072 0 -0.65593797 0.7548148 0 -0.65593708 0.75481558 -1 -1.70051e-07
		 0 -1 -4.1539924e-08 0 -1 -6.6681406e-07 0 -0.99999994 -2.7037895e-06 0 0 -0.65593708
		 0.75481558 0 -0.65593797 0.7548148 0 -0.82755733 0.56138134 0 -0.82755756 0.56138086
		 -0.99999994 -2.7037895e-06 0 -1 -6.6681406e-07 0 -1 -2.4621639e-07 0 -1 3.3620601e-08
		 0 0 -0.99719298 0.074874155 0 -0.9971931 0.074872367 0 -0.98247415 -0.18639891 0
		 -0.98247325 -0.18640365 -1 3.3620601e-08 0 -1 -2.4621639e-07 0 -0.99999994 4.3501527e-07
		 0 -0.99999994 2.6873035e-06 0 0 -0.98247325 -0.18640365 0 -0.98247415 -0.18639891
		 0 -0.89996684 -0.43595815 0 -0.75481349 -0.65593946 -0.99999994 2.6873035e-06 0 -0.99999994
		 4.3501527e-07 0 -1 -9.5410144e-07 0 -1 0 0 -1 -9.1831998e-07 0 -1 1.6796287e-07 0
		 -1 0 0 -1 -9.5410144e-07 0 0 -0.3216162 -0.94687009 0 -0.32161719 -0.94686979 0 -0.75481349
		 -0.65593946 0 -0.55723184 -0.8303569 0 -0.32161722 -0.94686979 0 -0.32161853 -0.94686937
		 0 -0.55724841 -0.83034587 0 -0.75481355 -0.65593946 1 -1.3602568e-06 0 1 -8.1330779e-07
		 0 1 -5.735277e-07 0 1 -1.3520015e-06 0 1 -8.1330779e-07 0 1 -1.3602568e-06 0 0.99999994
		 0 0 1 0 0 0 -0.32161853 -0.94686937 0 -0.32161722 -0.94686979 0 -0.064938217 -0.99788934
		 0 -0.064937346 -0.99788934 1 0 0 0.99999994 0 0 1 2.7038102e-06 0 1 6.6672357e-07
		 0 0 0.44045371 -0.89777541 0 0.44045374 -0.89777523 0 0.65593737 -0.75481534 0 0.65593725
		 -0.75481546 1 6.6672357e-07 0 1 2.7038102e-06 0 1 2.6875296e-06 0 1 9.1075702e-07
		 0 0 0.65593725 -0.75481546 0 0.65593737 -0.75481534 0 0.82755643 -0.56138241 0 0.82755733
		 -0.56138134 1 9.1075702e-07 0 1 2.6875296e-06 0 0.99999994 0 0 1 -2.934061e-09 0
		 0 0.99719334 -0.074868411 0 0.9971931 -0.074873 0 0.98247182 0.18641149 0 0.98247188
		 0.18641104 1 -2.934061e-09 0 0.99999994 0 0 1 0 0 0.99999994 -2.3852101e-07 0 0 0.98247188
		 0.18641104 0 0.98247182 0.18641149 0 0.75481355 0.65593946 0 0.89995843 0.43597588
		 0.99999994 -2.3852101e-07 0 1 0 0 1 0 0 1 0 0 0 0.55724841 0.83034587 0 0.75481355
		 0.65593946 0 0.32162303 0.94686776 0 0.32162184 0.94686812 1 0 0 1 0 0 1 0 0 1 0
		 0 0 0.32162184 0.94686812 0 0.32162303 0.94686776 0 0.064939402 0.99788916 0 0.064938717
		 0.99788928 1 0 0 1 0 0 0.99999994 -2.7037895e-06 0 1 -6.6681525e-07 0 0 -0.44044927
		 0.89777756 0 -0.44044152 0.89778131 0 -0.65593708 0.75481558 0 -0.65593648 0.75481606
		 1 -6.6681525e-07 0 0.99999994 -2.7037895e-06 0 1 3.3547408e-08 0 0.99999994 -2.4623498e-07
		 0 0 -0.65593648 0.75481606 0 -0.65593708 0.75481558 0 -0.82755744 0.56138098 0 -0.82754767
		 0.56139547 0.99999994 -2.4623498e-07 0 1 3.3547408e-08 0 1 2.6872599e-06 0 1 6.7508893e-07
		 0 0 -0.9971934 0.074869208 0 -0.99719292 0.074874133 0 -0.98247325 -0.18640375 0
		 -0.9824717 -0.18641205 1 6.7508893e-07 0 1 2.6872599e-06 0 1 -1.3520015e-06 0 1 -5.735277e-07
		 0 0 -0.9824717 -0.18641205 0 -0.98247325 -0.18640375 0 -0.75481355 -0.65593946 0
		 -0.89995843 -0.43597588;
	setAttr -s 130 -ch 496 ".fc[0:129]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 4 9 0 1
		f 4 -4 4 5 6
		mu 0 4 4 1 2 3
		f 4 -7 7 8 9
		mu 0 4 4 3 5 6
		f 4 10 11 12 -2
		mu 0 4 9 10 13 0
		f 4 13 14 15 -12
		mu 0 4 11 39 31 12
		f 4 -13 16 17 -3
		mu 0 4 0 13 15 1
		f 4 -16 18 19 -17
		mu 0 4 12 31 41 14
		f 4 -18 20 21 -5
		mu 0 4 1 15 17 2
		f 4 -20 22 23 -21
		mu 0 4 14 41 33 16
		f 4 -22 24 25 -6
		mu 0 4 2 17 19 3
		f 4 -24 26 27 -25
		mu 0 4 16 33 43 18
		f 4 -26 28 29 -8
		mu 0 4 3 19 21 5
		f 4 -28 30 31 -29
		mu 0 4 18 43 35 20
		f 4 -30 32 33 -9
		mu 0 4 5 21 23 6
		f 4 -32 34 35 -33
		mu 0 4 20 35 7 24
		f 4 -34 36 37 -10
		mu 0 4 6 23 25 4
		f 4 -36 38 39 -37
		mu 0 4 22 45 37 25
		f 4 -14 40 -40 41
		mu 0 4 8 10 25 37
		f 4 -11 -1 -38 -41
		mu 0 4 10 9 4 25
		f 4 42 43 44 45
		mu 0 4 38 52 53 30
		f 4 46 47 48 -44
		mu 0 4 52 26 46 53
		f 4 49 50 51 52
		mu 0 4 40 54 55 32
		f 4 53 54 55 -51
		mu 0 4 54 27 49 55
		f 4 56 57 58 59
		mu 0 4 28 58 61 44
		f 4 60 61 62 -58
		mu 0 4 57 29 47 61
		f 4 -46 63 -19 64
		mu 0 4 38 30 41 31
		f 4 -53 65 -27 66
		mu 0 4 40 32 43 33
		f 4 67 68 -35 69
		mu 0 4 42 34 7 35
		f 4 70 71 -42 72
		mu 0 4 44 36 8 37
		f 4 73 -65 -15 -72
		mu 0 4 50 38 31 39
		f 4 74 -67 -23 -64
		mu 0 4 30 40 33 41
		f 4 75 -70 -31 -66
		mu 0 4 32 42 35 43
		f 4 -60 -73 -39 -69
		mu 0 4 28 44 37 45
		f 4 76 -55 77 78
		mu 0 4 47 49 27 46
		f 4 -79 -48 79 80
		mu 0 4 47 46 26 48
		f 4 81 82 -77 -62
		mu 0 4 29 51 49 47
		f 4 -47 83 84 -80
		mu 0 4 26 52 59 48
		f 4 -43 -74 85 -84
		mu 0 4 52 38 50 60
		f 4 -45 86 -50 -75
		mu 0 4 30 53 54 40
		f 4 -49 -78 -54 -87
		mu 0 4 53 46 27 54
		f 4 -52 87 88 -76
		mu 0 4 32 55 56 42
		f 4 -56 -83 89 -88
		mu 0 4 55 49 51 56
		f 4 -89 90 -57 -68
		mu 0 4 42 56 57 34
		f 4 -90 -82 -61 -91
		mu 0 4 56 51 29 57
		f 4 -85 91 -63 -81
		mu 0 4 48 59 61 47
		f 4 -86 -71 -59 -92
		mu 0 4 59 36 44 61
		f 4 92 93 94 95
		mu 0 4 62 63 64 65
		f 4 96 97 98 -94
		mu 0 4 63 66 67 64
		f 4 99 100 101 -98
		mu 0 4 66 68 69 67
		f 4 102 103 104 -101
		mu 0 4 68 70 71 69
		f 4 105 106 107 -104
		mu 0 4 70 72 73 71
		f 4 108 109 110 -107
		mu 0 4 72 74 75 73
		f 4 111 112 113 -110
		mu 0 4 74 76 77 75
		f 4 114 115 116 -113
		mu 0 4 76 78 79 77
		f 4 117 118 119 -116
		mu 0 4 78 80 81 79
		f 4 120 121 122 -119
		mu 0 4 80 82 83 81
		f 4 123 124 125 -122
		mu 0 4 82 84 85 83
		f 4 126 -96 127 -125
		mu 0 4 84 86 87 85
		f 3 128 129 130
		mu 0 3 88 89 90
		f 3 131 -131 132
		mu 0 3 91 88 90
		f 3 133 -133 134
		mu 0 3 92 91 90
		f 3 135 -135 136
		mu 0 3 93 92 90
		f 3 137 -137 138
		mu 0 3 94 93 90
		f 3 139 -139 140
		mu 0 3 95 94 90
		f 3 141 -141 142
		mu 0 3 96 95 90
		f 3 143 -143 144
		mu 0 3 97 96 90
		f 3 145 -145 146
		mu 0 3 98 97 90
		f 3 147 -147 148
		mu 0 3 99 98 90
		f 3 149 -149 150
		mu 0 3 100 99 90
		f 3 151 -151 -130
		mu 0 3 89 100 90
		f 3 152 153 154
		mu 0 3 101 102 103
		f 3 155 156 -154
		mu 0 3 102 104 103
		f 3 157 158 -157
		mu 0 3 104 105 103
		f 3 159 160 -159
		mu 0 3 105 106 103
		f 3 161 162 -161
		mu 0 3 106 107 103
		f 3 163 164 -163
		mu 0 3 107 108 103
		f 3 165 166 -165
		mu 0 3 108 109 103
		f 3 167 168 -167
		mu 0 3 109 110 103
		f 3 169 170 -169
		mu 0 3 110 111 103
		f 3 171 172 -171
		mu 0 3 111 112 103
		f 3 173 174 -173
		mu 0 3 112 113 103
		f 3 175 -155 -175
		mu 0 3 113 101 103
		f 4 176 177 178 -93
		mu 0 4 62 114 115 63
		f 4 179 -129 180 -178
		mu 0 4 116 89 88 117
		f 4 -179 181 182 -97
		mu 0 4 63 115 118 66
		f 4 -181 -132 183 -182
		mu 0 4 117 88 91 119
		f 4 -183 184 185 -100
		mu 0 4 66 118 120 68
		f 4 -184 -134 186 -185
		mu 0 4 119 91 92 121
		f 4 -186 187 188 -103
		mu 0 4 68 120 122 70
		f 4 -187 -136 189 -188
		mu 0 4 121 92 93 123
		f 4 -189 190 191 -106
		mu 0 4 70 122 124 72
		f 4 -190 -138 192 -191
		mu 0 4 123 93 94 125
		f 4 -192 193 194 -109
		mu 0 4 72 124 126 74
		f 4 -193 -140 195 -194
		mu 0 4 125 94 95 127
		f 4 -195 196 197 -112
		mu 0 4 74 126 128 76
		f 4 -196 -142 198 -197
		mu 0 4 127 95 96 129
		f 4 -198 199 200 -115
		mu 0 4 76 128 130 78
		f 4 -199 -144 201 -200
		mu 0 4 129 96 97 131
		f 4 -201 202 203 -118
		mu 0 4 78 130 132 80
		f 4 -202 -146 204 -203
		mu 0 4 131 97 98 133
		f 4 -204 205 206 -121
		mu 0 4 80 132 134 82
		f 4 -205 -148 207 -206
		mu 0 4 133 98 99 135
		f 4 -207 208 209 -124
		mu 0 4 82 134 136 84
		f 4 -208 -150 210 -209
		mu 0 4 135 99 100 137
		f 4 -180 211 -211 -152
		mu 0 4 89 116 137 100
		f 4 -177 -127 -210 -212
		mu 0 4 138 86 84 136
		f 4 212 213 214 -128
		mu 0 4 87 139 140 85
		f 4 215 -176 216 -214
		mu 0 4 141 101 113 142
		f 4 -216 217 218 -153
		mu 0 4 101 141 143 102
		f 4 -213 -95 219 -218
		mu 0 4 144 65 64 145
		f 4 -219 220 221 -156
		mu 0 4 102 143 146 104
		f 4 -220 -99 222 -221
		mu 0 4 145 64 67 147
		f 4 -222 223 224 -158
		mu 0 4 104 146 148 105
		f 4 -223 -102 225 -224
		mu 0 4 147 67 69 149
		f 4 -225 226 227 -160
		mu 0 4 105 148 150 106
		f 4 -226 -105 228 -227
		mu 0 4 149 69 71 151
		f 4 -228 229 230 -162
		mu 0 4 106 150 152 107
		f 4 -229 -108 231 -230
		mu 0 4 151 71 73 153
		f 4 -231 232 233 -164
		mu 0 4 107 152 154 108
		f 4 -232 -111 234 -233
		mu 0 4 153 73 75 155
		f 4 -234 235 236 -166
		mu 0 4 108 154 156 109
		f 4 -235 -114 237 -236
		mu 0 4 155 75 77 157
		f 4 -237 238 239 -168
		mu 0 4 109 156 158 110
		f 4 -238 -117 240 -239
		mu 0 4 157 77 79 159
		f 4 -240 241 242 -170
		mu 0 4 110 158 160 111
		f 4 -241 -120 243 -242
		mu 0 4 159 79 81 161
		f 4 -243 244 245 -172
		mu 0 4 111 160 162 112
		f 4 -244 -123 246 -245
		mu 0 4 161 81 83 163
		f 4 -246 247 -217 -174
		mu 0 4 112 162 142 113
		f 4 -247 -126 -215 -248
		mu 0 4 163 83 85 140;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "lower_arm_geo_parentConstraint1" -p "lower_arm_geo";
	rename -uid "09EA543D-4EC5-76E5-2B6D-14843B17C51A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Base_RK_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.5544862966694621 0.0014568761296693822 -0.054235253703787539 ;
	setAttr ".tg[0].tor" -type "double3" -2.9658641182574497e-12 -89.844471557453261 
		-40.985562690090156 ;
	setAttr ".lr" -type "double3" 2.3408882455571482e-12 -4.7708320221952105e-15 -3.1805546814636142e-15 ;
	setAttr ".rst" -type "double3" -6.9388939039072284e-18 0 -1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" 2.3408882455571482e-12 -4.7708320221952105e-15 -3.1805546814636142e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "lower_arm_geo_scaleConstraint1" -p "lower_arm_geo";
	rename -uid "48E30482-4608-8B47-928B-5A9C941B6257";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Base_RK_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "upper_arm_geo" -p "Geometry";
	rename -uid "F640B7A3-4841-95F5-6D91-D18F418DF7A5";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -0.0088138282299041731 12.813642501831055 -11.506677627563477 ;
	setAttr ".sp" -type "double3" -0.0088138282299041731 12.813642501831055 -11.506677627563477 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "upper_arm_geoShape" -p "upper_arm_geo";
	rename -uid "872B019D-4149-D274-3054-5D85D18C8F8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".dsm" 2;
createNode mesh -n "upper_arm_geoShapeOrig" -p "upper_arm_geo";
	rename -uid "15E8EBD9-40A8-B104-CED8-C6963B7E32D1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".gtag[0].gtagnm" -type "string" "cluster3";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 12 "e[94]" "e[98]" "e[101]" "e[104]" "e[107]" "e[110]" "e[113]" "e[116]" "e[119]" "e[122]" "e[125]" "e[127]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 155 ".uvst[0].uvsp[0:154]" -type "float2" 0.36929849 0.76828945
		 0.42453945 0.71283531 0.5 0.69282889 0.57546055 0.71283525 0.5 0.8325904 0.63070154
		 0.76828945 0.64954191 0.83845329 0.60416663 0.68555015 0.34479091 0.83966649 0.35045809
		 0.83845323 0.34375 0.84375 0.47916672 0.68843985 0.50000006 0.68843985 0.36468354
		 0.765625 0.52083337 0.68843985 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875
		 0.5625 0.68843985 0.578125 0.70843351 0.58333331 0.68843985 0.63531649 0.765625 0.60416663
		 0.68843985 0.65625 0.84375 0.60416663 0.68843985 0.5 0.83749998 0.50000006 0.3125
		 0.54166669 0.3125 0.65560228 0.16286854 0.59822887 0.30581859 0.52083337 0.31717542
		 0.50000006 0.68555015 0.5625 0.31717503 0.54166669 0.68555015 0.60416663 0.31717542
		 0.58333331 0.68555015 0.47748259 0.31910691 0.5 0.83221531 0.50000006 0.31717503
		 0.47916675 0.68555015 0.54166669 0.31717503 0.52083337 0.68555015 0.58333331 0.31717542
		 0.56250006 0.68555015 0.5 0.15855005 0.60456699 0.68434912 0.51997674 0.30581853
		 0.50191081 0.15745224 0.48167813 0.30781534 0.55993021 0.30581853 0.47916672 0.31717503
		 0.57990694 0.30581853 0.50000006 0.3125 0.52083337 0.3125 0.54166669 0.3125 0.5625
		 0.3125 0.58333331 0.3125 0.60416663 0.3125 0.65625 0.15625 0.47916672 0.3125 0.47916672
		 0.3125 0.5 0.15000001 0.375 0.3125 0.39583334 0.3125 0.39583334 0.68843985 0.375
		 0.68843985 0.41666669 0.3125 0.41666669 0.68843985 0.43750003 0.3125 0.43750003 0.68843985
		 0.45833337 0.3125 0.45833337 0.68843985 0.47916672 0.3125 0.47916672 0.68843985 0.50000006
		 0.3125 0.50000006 0.68843985 0.52083337 0.3125 0.52083337 0.68843985 0.54166669 0.3125
		 0.54166669 0.68843985 0.5625 0.3125 0.5625 0.68843985 0.58333331 0.3125 0.58333331
		 0.68843985 0.60416663 0.3125 0.60416663 0.68843985 0.62499994 0.3125 0.62499994 0.68843985
		 0.47916672 0.68843985 0.47916675 0.68555015 0.50000006 0.68555015 0.50000006 0.68843985
		 0.36468354 0.765625 0.421875 0.70843351 0.49710733 0.81937706 0.34375 0.84375 0.52083337
		 0.68555015 0.52083337 0.68843985 0.54166669 0.68555015 0.54166669 0.68843985 0.5
		 0.6875 0.578125 0.70843351 0.56250006 0.68555015 0.5625 0.68843985 0.58333331 0.68555015
		 0.58333331 0.68843985 0.60416663 0.68555015 0.60416663 0.68843985 0.65625 0.84375
		 0.63531649 0.765625 0.60416663 0.68843985 0.60456699 0.68434912 0.5 0.83221531 0.5
		 0.83749998 0.34479091 0.83966649 0.34375 0.84375 0.50000006 0.31717503 0.50000006
		 0.3125 0.52083337 0.3125 0.52083337 0.31717542 0.50000006 0.3125 0.51997674 0.30581853
		 0.54166669 0.31717503 0.54166669 0.3125 0.5625 0.3125 0.5625 0.31717503 0.54166669
		 0.3125 0.55993021 0.30581853 0.60416663 0.3125 0.59822887 0.30581859 0.50191081 0.15745224
		 0.5 0.15000001 0.50000006 0.63606614 0.52083337 0.6360662 0.54166669 0.63606614 0.56250006
		 0.63606614 0.58333337 0.6360662 0.60416663 0.6360662 0.5 0.74172163 0.36261541 0.76973951
		 0.47916675 0.63606614 0.61142254 0.6142984 0.48167813 0.30781534 0.57990694 0.30581853
		 0.47916672 0.3125 0.47916672 0.31717503 0.47916672 0.3125 0.58333331 0.3125 0.58333331
		 0.31717542 0.60416663 0.31717542 0.60416663 0.68843985 0.60456699 0.68434912 0.34479091
		 0.83966649 0.36261541 0.76973951 0.61142254 0.6142984;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 126 ".vt[0:125]"  0.088813066 22.15924454 0.44698757 0.066573225 22.14398956 0.45964575
		 0.066573225 22.13018227 0.44300997 0.39261493 22.20208549 0.41143525 0.4041273 22.19158936 0.42014435
		 0.4041273 22.17778397 0.4035086 0.63129389 22.32769775 0.30719393 0.65123385 22.32163811 0.3122223
		 0.65123385 22.30783272 0.29558653 0.7186566 22.49928856 0.16479884 0.74168134 22.49928856 0.16479884
		 0.74168134 22.48548126 0.1481631 0.63129389 22.67087936 0.022403741 0.65123385 22.6769371 0.017375398
		 0.65123385 22.66313171 0.00073964888 0.39261493 22.79649353 -0.081837542 0.4041273 22.80698776 -0.090546668
		 0.4041273 22.79318237 -0.10718242 0.088813066 22.83933258 -0.1173899 0.066573225 22.85458755 -0.13004805
		 0.066573225 22.84078217 -0.14668378 0.088813066 22.49928856 0.16479884 0.066573225 22.49928856 0.16479884
		 0.066573225 22.48548126 0.1481631 0.39024812 12.27823544 -11.55147266 0.4041273 12.26558495 -11.54097271
		 0.4041273 12.28270626 -11.52033997 0.65123385 12.41275501 -11.62826252 0.65123385 12.39563274 -11.64889526
		 0.62719452 12.40293694 -11.65495682 0.71392304 12.57328129 -11.79631901 0.74168134 12.57328129 -11.79631901
		 0.74168134 12.59040451 -11.77568531 0.65123385 12.76805305 -11.9231081 0.65123385 12.75093079 -11.9437418
		 0.62719452 12.74362755 -11.93768024 0.39024812 12.86832714 -12.041164398 0.4041273 12.88097954 -12.051662445
		 0.4041273 12.89810181 -12.031030655 0.093385682 12.91019154 -12.075904846 0.066573225 12.92858028 -12.091164589
		 0.066573225 12.94570351 -12.070531845 0.093385682 12.2363739 -11.51673222 0.066573225 12.21798229 -11.50147152
		 0.066573225 12.23510551 -11.48083782 0.066573225 12.59040451 -11.77568531 0.066573225 12.57328129 -11.79631901
		 0.093385682 12.57328129 -11.79631901 -0.085158907 22.64351654 0.10754962 -0.14749956 22.59554291 0.14736076
		 -0.1703178 22.53001022 0.20174375 -0.14749956 22.46447754 0.25612673 -0.085158907 22.41650391 0.29593787
		 3.7252903e-09 22.39894485 0.31050974 0.085158907 22.41650391 0.29593787 0.14749956 22.46447754 0.25612673
		 0.1703178 22.53001022 0.20174375 0.14749956 22.59554291 0.14736076 0.085158907 22.64351654 0.10754962
		 3.7252903e-09 22.66107559 0.09297771 -0.085158907 23.46746635 1.10042596 -0.14749956 23.41949272 1.14023709
		 -0.1703178 23.35396004 1.19462013 -0.14749956 23.28842735 1.24900317 -0.085158907 23.24045372 1.28881419
		 3.7252903e-09 23.22289467 1.30338609 0.085158907 23.24045372 1.28881419 0.14749956 23.28842735 1.24900317
		 0.1703178 23.35396004 1.19462013 0.14749956 23.41949272 1.14023709 0.085158907 23.46746635 1.10042596
		 3.7252903e-09 23.48502541 1.085854053 0.14873463 22.91777802 0.084893756 0.14873463 22.90397263 0.068258002
		 -0.11770505 22.87931442 0.11681135 -0.11770505 22.86550903 0.10017679 -0.30436063 22.77423096 0.20401412
		 -0.30436063 22.76042747 0.18738036 -0.37362126 22.63068581 0.32313648 -0.37362126 22.61688232 0.3065027
		 -0.30436063 22.48714066 0.44225961 -0.30436063 22.47333527 0.42562428 -0.11770505 22.38205528 0.52946401
		 -0.11770505 22.3682518 0.51282859 0.14873463 22.3435936 0.56138122 0.14873463 22.32979012 0.54474699
		 0.14873463 22.63068581 0.32313648 -0.10955782 21.97016335 -0.95793736 -0.11770505 21.98038483 -0.96642184
		 -0.11770505 21.98591614 -0.9597587 -0.30436063 21.88083267 -0.87255633 -0.30436063 21.87530136 -0.87921655
		 -0.29024923 21.86940193 -0.87432009 -0.35732678 21.73175621 -0.76009619 -0.37362126 21.73175621 -0.76009619
		 -0.37362126 21.73728561 -0.75343287 -0.30436063 21.59374237 -0.63431042 -0.30436063 21.58821106 -0.64097357
		 -0.29024923 21.5941143 -0.64587218 -0.10955782 21.49335098 -0.56225318 -0.11770505 21.48313141 -0.55376959
		 -0.11770505 21.48865891 -0.54710704 0.1329954 21.45952606 -0.53418183 0.14873461 21.444664 -0.52185124
		 0.14873461 21.45019531 -0.51518804 0.1329954 22.003988266 -0.98600829 0.14873461 22.018848419 -0.99833906
		 0.14873461 22.024377823 -0.99167788 0.14873461 21.73175621 -0.76009619 0.1329954 21.73175621 -0.76009619
		 -0.11770505 22.73276711 -0.059781406 -0.30436063 22.62768364 0.027422164 -0.37362126 22.48413849 0.14654452
		 -0.30436063 22.34059334 0.26566687 -0.11770505 22.23551178 0.35287163 0.14873463 22.19704628 0.38478962
		 0.14873463 22.7712307 -0.091699399 0.40237701 22.40235138 0.48453033 0.40237701 22.41615677 0.50116491
		 0.52656758 22.61688232 0.3065027 0.52656758 22.63068581 0.32313648 0.40237701 22.83140945 0.12847471
		 0.40237701 22.84521675 0.14511046 0.52656758 22.48413849 0.14654452 0.40237701 22.69866562 -0.031483091
		 0.40237701 22.26961136 0.32457253;
	setAttr -s 229 ".ed";
	setAttr ".ed[0:165]"  21 0 0 0 3 0 3 6 0 6 21 0 6 9 0 9 12 0 12 21 0 12 15 0
		 15 18 0 18 21 0 0 1 0 1 4 0 4 3 0 1 2 0 2 5 0 5 4 0 4 7 0 7 6 0 5 8 0 8 7 0 7 10 0
		 10 9 0 8 11 0 11 10 0 10 13 0 13 12 0 11 14 0 14 13 0 13 16 0 16 15 0 14 17 0 17 16 0
		 16 19 0 19 18 0 17 20 0 20 19 0 19 22 0 22 21 0 20 23 0 23 22 0 1 22 0 23 2 0 26 25 0
		 25 28 0 28 27 0 27 26 0 25 24 0 24 29 0 29 28 0 32 31 0 31 34 0 34 33 0 33 32 0 31 30 0
		 30 35 0 35 34 0 41 40 0 40 46 0 46 45 0 45 41 0 40 39 0 39 47 0 47 46 0 27 8 0 5 26 0
		 33 14 0 11 32 0 38 41 0 41 20 0 17 38 0 45 44 0 44 2 0 23 45 0 44 26 0 27 32 0 33 38 0
		 47 35 0 30 29 0 29 47 0 24 42 0 42 47 0 39 36 0 36 35 0 25 43 0 43 42 0 44 43 0 28 31 0
		 34 37 0 37 38 0 36 37 0 37 40 0 43 46 0 48 49 0 49 61 0 61 60 0 60 48 0 49 50 0 50 62 0
		 62 61 0 50 51 0 51 63 0 63 62 0 51 52 0 52 64 0 64 63 0 52 53 0 53 65 0 65 64 0 53 54 0
		 54 66 0 66 65 0 54 55 0 55 67 0 67 66 0 55 56 0 56 68 0 68 67 0 56 57 0 57 69 0 69 68 0
		 57 58 0 58 70 0 70 69 0 58 59 0 59 71 0 71 70 0 59 48 0 60 71 0 72 73 0 73 75 0 75 74 0
		 74 72 0 74 76 0 76 86 0 86 72 0 75 77 0 77 76 0 77 79 0 79 78 0 78 76 0 78 80 0 80 86 0
		 79 81 0 81 80 0 81 83 0 83 82 0 82 80 0 83 85 0 85 84 0 84 82 0 84 86 0 118 117 0
		 117 119 0 119 120 0 120 118 0 121 122 0 122 120 0 119 121 0 89 88 0 88 91 0 91 90 0
		 90 89 0 88 87 0 87 92 0 92 91 0 95 94 0;
	setAttr ".ed[166:228]" 94 97 0 97 96 0 96 95 0 94 93 0 93 98 0 98 97 0 103 102 0
		 102 109 0 109 108 0 108 103 0 110 111 0 111 77 0 75 110 0 112 113 0 113 81 0 79 112 0
		 114 115 0 115 85 0 83 114 0 123 124 0 124 121 0 119 123 0 116 110 0 73 116 0 111 112 0
		 113 114 0 125 123 0 117 125 0 109 98 0 93 92 0 92 109 0 87 105 0 105 109 0 102 99 0
		 99 98 0 88 106 0 106 105 0 89 107 0 107 106 0 91 94 0 95 90 0 97 100 0 100 101 0
		 101 96 0 99 100 0 100 103 0 103 104 0 104 101 0 106 108 0 90 111 0 110 89 0 95 112 0
		 96 113 0 101 114 0 104 115 0 116 107 0 85 117 0 118 84 0 120 86 0 72 122 0 121 73 0
		 124 116 0 115 125 0;
	setAttr -s 424 ".n";
	setAttr ".n[0:165]" -type "float3"  -3.312571e-07 0.63860345 0.76953602 -3.0685092e-07
		 0.63860208 0.76953709 2.0874479e-06 0.63860327 0.76953614 1.1859925e-06 0.63860565
		 0.76953417 -3.312571e-07 0.63860345 0.76953602 1.1859925e-06 0.63860565 0.76953417
		 7.4126268e-07 0.63860679 0.76953316 2.595597e-07 0.6386047 0.76953495 -3.312571e-07
		 0.63860345 0.76953602 2.595597e-07 0.6386047 0.76953495 -2.0859163e-06 0.63860136
		 0.76953781 -1.7165553e-07 0.63860208 0.76953715 -3.0685092e-07 0.63860208 0.76953709
		 -1.3691834e-05 0.63859534 0.76954269 1.6271435e-05 0.63859314 0.76954454 2.0874479e-06
		 0.63860327 0.76953614 0.18025073 -0.75692469 0.62815171 0.18024915 -0.75693142 0.62814415
		 0.36725825 -0.71575975 0.59397757 0.18025072 -0.75692475 0.62815177 2.0874479e-06
		 0.63860327 0.76953614 1.6271435e-05 0.63859314 0.76954454 9.7485836e-06 0.63860655
		 0.7695334 1.1859925e-06 0.63860565 0.76953417 0.56451571 -0.6351983 0.52711016 0.36725825
		 -0.71575975 0.59397757 0.7641204 -0.49640715 0.41194654 0.56451571 -0.63519824 0.52711022
		 1.1859925e-06 0.63860565 0.76953417 9.7485836e-06 0.63860655 0.7695334 1.3012658e-05
		 0.63861251 0.76952851 7.4126268e-07 0.63860679 0.76953316 0.93108326 -0.28071532
		 0.23298682 0.7641204 -0.49640715 0.41194654 0.93108672 -0.28072506 0.2329613 0.9310832
		 -0.28071532 0.23298678 7.4126268e-07 0.63860679 0.76953316 1.3012658e-05 0.63861251
		 0.76952851 2.195211e-05 0.63861412 0.76952708 2.595597e-07 0.6386047 0.76953495 0.93109316
		 0.28071728 -0.23294505 0.93108684 0.28072482 -0.23296128 0.76412106 0.49640653 -0.41194606
		 0.9310931 0.28071725 -0.23294505 2.595597e-07 0.6386047 0.76953495 2.195211e-05 0.63861412
		 0.76952708 1.1177662e-05 0.6386109 0.76952988 -2.0859163e-06 0.63860136 0.76953781
		 0.56451851 0.63519686 -0.52710897 0.76412106 0.49640653 -0.41194606 0.36725834 0.71575969
		 -0.59397763 0.56451851 0.63519686 -0.52710903 -2.0859163e-06 0.63860136 0.76953781
		 1.1177662e-05 0.6386109 0.76952988 1.5309559e-05 0.63860774 0.76953244 -1.7165553e-07
		 0.63860208 0.76953715 0.18024385 0.75692528 -0.62815303 0.36725834 0.71575969 -0.59397763
		 0.18024707 0.75693172 -0.62814444 0.18024388 0.75692528 -0.62815309 -1.7165553e-07
		 0.63860208 0.76953715 1.5309559e-05 0.63860774 0.76953244 1.8537914e-07 0.63860404
		 0.76953548 -3.312571e-07 0.63860345 0.76953602 -1 -1.8661098e-07 0 -1 -2.6000038e-10
		 0 -1 -4.4199759e-09 0 -1 -1.8660836e-07 0 -1 -8.5799527e-09 0 -1 -1.8660575e-07 0
		 -1 -1.8660836e-07 0 -1 -4.4199759e-09 0 -1.3691834e-05 0.63859534 0.76954269 -3.0685092e-07
		 0.63860208 0.76953709 -3.312571e-07 0.63860345 0.76953602 1.8537914e-07 0.63860404
		 0.76953548 0.36725831 -0.71575969 0.59397757 0.367257 -0.71576303 0.59397453 0.76412672
		 -0.49640438 0.41193831 0.76412064 -0.496407 0.41194639 1.861703e-06 -0.63861549 -0.76952606
		 -1.5128348e-06 -0.63860542 -0.76953429 -6.3974636e-07 -0.63860446 -0.76953512 0 -0.63860816
		 -0.76953208 0.93108678 0.28072479 -0.23296133 0.93108433 0.28072712 -0.23296832 0.76411825
		 0.49640915 -0.41194811 0.76412135 0.49640629 -0.41194588 -1.8993675e-05 -0.63860595
		 -0.76953393 -1.3118135e-06 -0.63860273 -0.7695365 -2.2932416e-06 -0.6386025 -0.76953685
		 -2.3416011e-05 -0.63860077 -0.76953816 -0.99999994 0 0 -1 0 0 -0.99999994 0 0 -1
		 -4.1585895e-09 0 3.2289274e-05 -0.63858777 -0.76954901 2.5553054e-06 -0.63859987
		 -0.76953888 6.0781241e-07 -0.63860428 -0.7695353 2.9656307e-05 -0.63860399 -0.76953548
		 0.36725831 -0.71575969 0.59397757 0.76412064 -0.496407 0.41194639 0.7641204 -0.49640715
		 0.41194654 0.36725825 -0.71575975 0.59397757 0.93108678 0.28072479 -0.23296133 0.76412135
		 0.49640629 -0.41194588 0.76412106 0.49640653 -0.41194606 0.93108684 0.28072482 -0.23296128
		 0.36725852 0.71575963 -0.59397757 0.18024707 0.7569316 -0.6281445 0.18024707 0.75693172
		 -0.62814444 0.36725834 0.71575969 -0.59397763 -1 -4.1585895e-09 0 -1 -8.3171816e-09
		 0 -1 -8.5799527e-09 0 -1 -4.4199759e-09 0 0.18024914 -0.75693142 0.62814415 0.36725831
		 -0.71575969 0.59397757 0.36725825 -0.71575975 0.59397757 0.18024915 -0.75693142 0.62814415
		 0.76412064 -0.496407 0.41194639 0.93108672 -0.28072503 0.23296125 0.93108672 -0.28072506
		 0.2329613 0.7641204 -0.49640715 0.41194654 0.76412135 0.49640629 -0.41194588 0.36725852
		 0.71575963 -0.59397757 0.36725834 0.71575969 -0.59397763 0.76412106 0.49640653 -0.41194606
		 -0.99999994 0 0 -1 -4.1585895e-09 0 -1 -4.4199759e-09 0 -1 -2.6000038e-10 0 6.0781241e-07
		 -0.63860428 -0.7695353 -2.2932416e-06 -0.6386025 -0.76953685 -1.3118135e-06 -0.63860273
		 -0.7695365 -6.3974636e-07 -0.63860446 -0.76953512 6.0781241e-07 -0.63860428 -0.7695353
		 -6.3974636e-07 -0.63860446 -0.76953512 -1.5128348e-06 -0.63860542 -0.76953429 1.2776953e-06
		 -0.63860422 -0.76953536 2.5553054e-06 -0.63859987 -0.76953888 -3.0256992e-06 -0.6386016
		 -0.76953763 -2.2932416e-06 -0.6386025 -0.76953685 6.0781241e-07 -0.63860428 -0.7695353
		 -1.5128348e-06 -0.63860542 -0.76953429 1.861703e-06 -0.63861549 -0.76952606 1.6143858e-05
		 -0.63860106 -0.76953793 1.2776953e-06 -0.63860422 -0.76953536 0.367257 -0.71576303
		 0.59397453 0.36725831 -0.71575969 0.59397757 0.18024914 -0.75693142 0.62814415 0.18024516
		 -0.7569353 0.62814063 0.76412064 -0.496407 0.41194639 0.76412672 -0.49640438 0.41193831
		 0.93109 -0.28072208 0.23295182 0.93108672 -0.28072503 0.23296125 0 -0.63860816 -0.76953208
		 -6.3974636e-07 -0.63860446 -0.76953512 -1.3118135e-06 -0.63860273 -0.7695365 -1.8993675e-05
		 -0.63860595 -0.76953393 0.76412135 0.49640629 -0.41194588 0.76411825 0.49640915 -0.41194811
		 0.36725557 0.71575552 -0.59398431 0.36725852 0.71575963 -0.59397757 -2.3416011e-05
		 -0.63860077 -0.76953816 -2.2932416e-06 -0.6386025 -0.76953685;
	setAttr ".n[166:331]" -type "float3"  -3.0256992e-06 -0.6386016 -0.76953763
		 3.7233535e-06 -0.63856059 -0.76957154 0.36725852 0.71575963 -0.59397757 0.36725557
		 0.71575552 -0.59398431 0.18024997 0.75692022 -0.62815738 0.18024707 0.7569316 -0.6281445
		 3.7233535e-06 -0.63856059 -0.76957154 -3.0256992e-06 -0.6386016 -0.76953763 2.5553054e-06
		 -0.63859987 -0.76953888 3.2289274e-05 -0.63858777 -0.76954901 1.2776953e-06 -0.63860422
		 -0.76953536 1.6143858e-05 -0.63860106 -0.76953793 2.9656307e-05 -0.63860399 -0.76953548
		 6.0781241e-07 -0.63860428 -0.7695353 -1 0 0 -1 -8.3171816e-09 0 -1 -4.1585895e-09
		 0 -0.99999994 0 0 -0.70710891 0.54414105 -0.45156109 -0.70710897 0.54414111 -0.45156112
		 -0.70710891 0.54414105 -0.45156109 -0.70710897 0.54414111 -0.45156112 -0.96592581
		 0.19916987 -0.16528343 -0.96592593 0.19916987 -0.16528344 -0.96592581 0.19916989
		 -0.16528343 -0.96592581 0.19916987 -0.16528344 -0.96592581 -0.19916989 0.16528334
		 -0.96592581 -0.19916989 0.16528332 -0.96592581 -0.19916989 0.16528335 -0.96592593
		 -0.19916989 0.16528337 -0.70710838 -0.54414099 0.45156199 -0.70710838 -0.54414099
		 0.45156202 -0.70710838 -0.54414105 0.45156202 -0.70710838 -0.54414099 0.45156199
		 -0.25881642 -0.74331272 0.61684692 -0.25881645 -0.74331278 0.61684698 -0.25881645
		 -0.74331278 0.61684698 -0.25881645 -0.74331278 0.61684698 0.25881663 -0.74331325
		 0.61684644 0.25881663 -0.74331325 0.61684638 0.2588166 -0.74331325 0.61684632 0.25881663
		 -0.74331325 0.61684632 0.7071085 -0.54414105 0.45156205 0.70710838 -0.54414105 0.45156205
		 0.70710838 -0.54414105 0.45156199 0.70710838 -0.54414099 0.45156199 0.96592581 -0.19916989
		 0.16528332 0.96592581 -0.19916989 0.16528334 0.96592593 -0.19916989 0.16528337 0.96592581
		 -0.19916989 0.16528335 0.96592593 0.19916983 -0.16528341 0.96592593 0.19916983 -0.1652834
		 0.96592593 0.19916981 -0.16528341 0.96592593 0.19916981 -0.16528341 0.70710874 0.54414135
		 -0.45156133 0.70710868 0.54414135 -0.45156127 0.70710874 0.54414135 -0.45156133 0.70710868
		 0.54414135 -0.45156127 0.25881621 0.74331284 -0.61684698 0.25881618 0.74331272 -0.61684704
		 0.25881618 0.74331278 -0.61684698 0.25881621 0.74331284 -0.61684704 -0.25881618 0.74331272
		 -0.61684704 -0.25881621 0.74331284 -0.61684698 -0.25881621 0.74331284 -0.61684704
		 -0.25881618 0.74331278 -0.61684698 -0.18437631 0.75632757 -0.62767357 -0.18437663
		 0.75633913 -0.62765944 -0.38069189 0.71158886 -0.59052086 -0.18437631 0.75632751
		 -0.62767357 -3.2391197e-06 0.63859832 0.76954031 -1.2991967e-06 0.6386072 0.76953286
		 -3.6098422e-07 0.63860178 0.76953733 -3.2391195e-06 0.63859826 0.76954025 -0.59046119
		 0.62108922 -0.51536757 -0.38069189 0.71158886 -0.59052086 -0.78388369 0.47781089
		 -0.39651364 -0.59046119 0.62108928 -0.51536751 -0.93747473 0.26786578 -0.22223637
		 -0.78388369 0.47781089 -0.39651364 -0.93746549 0.26786029 -0.22228226 -0.93747479
		 0.26786578 -0.22223637 0 0.63861322 0.76952791 9.1439205e-07 0.63860703 0.76953304
		 -3.6098422e-07 0.63860178 0.76953733 -1.2991967e-06 0.6386072 0.76953286 -0.93746114
		 -0.26785791 0.22230293 -0.93746412 -0.26785937 0.22228886 -0.78388363 -0.47780937
		 0.39651567 -0.9374612 -0.26785794 0.22230296 -0.59043896 -0.62107331 0.51541227 -0.78388363
		 -0.47780937 0.39651567 -0.38069299 -0.71159196 0.59051663 -0.59043896 -0.62107331
		 0.51541227 -0.18437944 -0.75640076 0.62758422 -0.38069299 -0.71159196 0.59051663
		 -0.18437646 -0.75634503 0.62765241 -0.18437944 -0.75640076 0.62758428 2.2797049e-06
		 0.63859773 0.76954073 -3.6098422e-07 0.63860178 0.76953733 9.1439205e-07 0.63860703
		 0.76953304 2.2797046e-06 0.63859779 0.76954073 0.91345626 -0.31314176 0.2598846 0.913459
		 -0.31314752 0.25986794 1 1.9462534e-06 -4.8563656e-06 1 6.0876237e-06 9.838584e-08
		 0.91345775 0.31314674 -0.25987321 0.91345972 0.31314033 -0.25987399 1 6.0876237e-06
		 9.838584e-08 1 1.9462534e-06 -4.8563656e-06 -0.38069183 0.71159071 -0.59051865 -0.3807385
		 0.71153247 -0.59055877 -0.78391266 0.47768331 -0.39660996 -0.78388393 0.47780937
		 -0.39651498 2.4092215e-05 -0.63862532 -0.76951784 -1.8046079e-06 -0.63860506 -0.76953471
		 4.7576509e-07 -0.63860488 -0.76953483 2.9897616e-05 -0.63862771 -0.76951587 -0.937464
		 -0.2678616 0.22228679 -0.93746638 -0.26784533 0.22229674 -0.7838968 -0.47781721 0.39647999
		 -0.78388345 -0.47781131 0.39651364 1.2258571e-05 -0.63861459 -0.76952672 6.4089062e-07
		 -0.63860357 -0.76953596 -4.5799592e-07 -0.63860655 -0.76953346 -1.3832172e-05 -0.6386463
		 -0.76950043 -4.1325176e-05 -0.63861752 -0.76952434 -5.869038e-06 -0.63860786 -0.76953238
		 -2.0247696e-06 -0.63860446 -0.76953512 -2.2143797e-05 -0.63860345 -0.76953596 -0.38069129
		 0.71159089 -0.59051895 -0.78388393 0.47780976 -0.39651445 -0.78388369 0.47781089
		 -0.39651364 -0.38069189 0.71158886 -0.59052086 -0.93746406 -0.26786143 0.22228682
		 -0.78388256 -0.47781196 0.39651474 -0.78388363 -0.47780937 0.39651567 -0.93746412
		 -0.26785937 0.22228886 -0.38069409 -0.71159095 0.59051698 -0.18437965 -0.75634253
		 0.62765443 -0.18437646 -0.75634503 0.62765241 -0.38069299 -0.71159196 0.59051663
		 1 -5.2181497e-07 -3.6833999e-06 0.91345751 0.3131474 -0.25987312 0.91345775 0.31314674
		 -0.25987321 1 1.9462534e-06 -4.8563656e-06 -0.18437526 0.75634241 -0.6276558 -0.38069129
		 0.71159089 -0.59051895 -0.38069189 0.71158886 -0.59052086 -0.18437663 0.75633913
		 -0.62765944 -0.78388393 0.47780976 -0.39651445 -0.93746489 0.26785958 -0.22228555
		 -0.93746549 0.26786029 -0.22228226 -0.78388369 0.47781089 -0.39651364 -0.78388256
		 -0.47781196 0.39651474 -0.38069409 -0.71159095 0.59051698 -0.38069299 -0.71159196
		 0.59051663 -0.78388363 -0.47780937 0.39651567 0.9134593 -0.31314811 0.25986621 1
		 -5.2181497e-07 -3.6833999e-06 1 1.9462534e-06 -4.8563656e-06 0.913459 -0.31314752
		 0.25986794 -2.0247696e-06 -0.63860446 -0.76953512 -4.5799592e-07 -0.63860655 -0.76953346
		 6.4089062e-07 -0.63860357 -0.76953596 4.7576509e-07 -0.63860488 -0.76953483;
	setAttr ".n[332:423]" -type "float3"  -2.0247696e-06 -0.63860446 -0.76953512
		 4.7576509e-07 -0.63860488 -0.76953483 -1.8046079e-06 -0.63860506 -0.76953471 7.4592727e-08
		 -0.63860345 -0.76953596 -5.869038e-06 -0.63860786 -0.76953238 2.1056262e-07 -0.63860846
		 -0.76953191 -4.5799592e-07 -0.63860655 -0.76953346 -2.0247696e-06 -0.63860446 -0.76953512
		 -1.8046079e-06 -0.63860506 -0.76953471 2.4092215e-05 -0.63862532 -0.76951784 1.6037979e-05
		 -0.63859969 -0.76953912 7.4592727e-08 -0.63860345 -0.76953596 -0.3807385 0.71153247
		 -0.59055877 -0.38069183 0.71159071 -0.59051865 -0.18437521 0.75634295 -0.62765533
		 -0.18440156 0.75635934 -0.62762785 -0.78388393 0.47780937 -0.39651498 -0.78391266
		 0.47768331 -0.39660996 -0.93745232 0.26781636 -0.22239032 -0.93746489 0.26785922
		 -0.22228606 2.9897616e-05 -0.63862771 -0.76951587 4.7576509e-07 -0.63860488 -0.76953483
		 6.4089062e-07 -0.63860357 -0.76953596 1.2258571e-05 -0.63861459 -0.76952672 -0.78388345
		 -0.47781131 0.39651364 -0.7838968 -0.47781721 0.39647999 -0.38070121 -0.71158361
		 0.59052128 -0.38069412 -0.71159136 0.59051657 -1.3832172e-05 -0.6386463 -0.76950043
		 -4.5799592e-07 -0.63860655 -0.76953346 2.1056262e-07 -0.63860846 -0.76953191 -2.0038413e-05
		 -0.63865417 -0.769494 -0.38069412 -0.71159136 0.59051657 -0.38070121 -0.71158361
		 0.59052128 -0.18437514 -0.75629628 0.62771142 -0.18438022 -0.75634277 0.62765396
		 -2.0038413e-05 -0.63865417 -0.769494 2.1056262e-07 -0.63860846 -0.76953191 -5.869038e-06
		 -0.63860786 -0.76953238 -4.1325176e-05 -0.63861752 -0.76952434 7.4592727e-08 -0.63860345
		 -0.76953596 1.6037979e-05 -0.63859969 -0.76953912 -2.2143797e-05 -0.63860345 -0.76953596
		 -2.0247696e-06 -0.63860446 -0.76953512 -0.38069183 0.71159071 -0.59051865 -0.78388393
		 0.47780937 -0.39651498 -0.78388393 0.47780976 -0.39651445 -0.38069129 0.71159089
		 -0.59051895 -0.78388393 0.47780937 -0.39651498 -0.93746489 0.26785922 -0.22228606
		 -0.93746489 0.26785958 -0.22228555 -0.78388393 0.47780976 -0.39651445 -0.937464 -0.2678616
		 0.22228679 -0.78388345 -0.47781131 0.39651364 -0.78388256 -0.47781196 0.39651474
		 -0.93746406 -0.26786143 0.22228682 -0.78388345 -0.47781131 0.39651364 -0.38069412
		 -0.71159136 0.59051657 -0.38069409 -0.71159095 0.59051698 -0.78388256 -0.47781196
		 0.39651474 -0.38069412 -0.71159136 0.59051657 -0.18438022 -0.75634277 0.62765396
		 -0.18437965 -0.75634253 0.62765443 -0.38069409 -0.71159095 0.59051698 -0.18437521
		 0.75634295 -0.62765533 -0.38069183 0.71159071 -0.59051865 -0.38069129 0.71159089
		 -0.59051895 -0.18437526 0.75634241 -0.6276558 0.34845752 -0.72129673 0.59858871 0.34845752
		 -0.72129661 0.59858871 0.34845752 -0.72129667 0.59858876 0.34845752 -0.72129667 0.59858871
		 -7.4521307e-07 0.63860267 0.76953673 -7.4521296e-07 0.63860261 0.76953667 -7.4521296e-07
		 0.63860267 0.76953667 -7.452129e-07 0.63860261 0.76953667 0.34847513 0.72131538 -0.59855592
		 0.34847513 0.72131544 -0.59855592 0.34847513 0.72131538 -0.59855592 0.3484751 0.72131538
		 -0.59855598 -2.7573108e-06 0.63860077 0.76953822 -2.7573108e-06 0.63860077 0.76953822
		 -2.7573108e-06 0.63860077 0.76953828 -2.7573108e-06 0.63860071 0.76953828 0.34846216
		 0.72129869 -0.59858358 0.34846213 0.72129875 -0.59858358 0.34846213 0.72129869 -0.59858358
		 0.34846213 0.72129869 -0.59858358 0.34846303 -0.72130674 0.59857333 0.348463 -0.7213068
		 0.59857339 0.34846303 -0.72130686 0.59857333 0.348463 -0.7213068 0.59857339;
	setAttr -s 106 -ch 424 ".fc[0:105]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 4 9 0 1
		f 4 -4 4 5 6
		mu 0 4 4 1 2 3
		f 4 -7 7 8 9
		mu 0 4 4 3 5 6
		f 4 10 11 12 -2
		mu 0 4 9 10 13 0
		f 4 13 14 15 -12
		mu 0 4 11 39 31 12
		f 4 -13 16 17 -3
		mu 0 4 0 13 15 1
		f 4 -16 18 19 -17
		mu 0 4 12 31 41 14
		f 4 -18 20 21 -5
		mu 0 4 1 15 17 2
		f 4 -20 22 23 -21
		mu 0 4 14 41 33 16
		f 4 -22 24 25 -6
		mu 0 4 2 17 19 3
		f 4 -24 26 27 -25
		mu 0 4 16 33 43 18
		f 4 -26 28 29 -8
		mu 0 4 3 19 21 5
		f 4 -28 30 31 -29
		mu 0 4 18 43 35 20
		f 4 -30 32 33 -9
		mu 0 4 5 21 23 6
		f 4 -32 34 35 -33
		mu 0 4 20 35 7 24
		f 4 -34 36 37 -10
		mu 0 4 6 23 25 4
		f 4 -36 38 39 -37
		mu 0 4 22 45 37 25
		f 4 -14 40 -40 41
		mu 0 4 8 10 25 37
		f 4 -11 -1 -38 -41
		mu 0 4 10 9 4 25
		f 4 42 43 44 45
		mu 0 4 38 52 53 30
		f 4 46 47 48 -44
		mu 0 4 52 26 46 53
		f 4 49 50 51 52
		mu 0 4 40 54 55 32
		f 4 53 54 55 -51
		mu 0 4 54 27 49 55
		f 4 56 57 58 59
		mu 0 4 28 58 61 44
		f 4 60 61 62 -58
		mu 0 4 57 29 47 61
		f 4 -46 63 -19 64
		mu 0 4 38 30 41 31
		f 4 -53 65 -27 66
		mu 0 4 40 32 43 33
		f 4 67 68 -35 69
		mu 0 4 42 34 7 35
		f 4 70 71 -42 72
		mu 0 4 44 36 8 37
		f 4 73 -65 -15 -72
		mu 0 4 50 38 31 39
		f 4 74 -67 -23 -64
		mu 0 4 30 40 33 41
		f 4 75 -70 -31 -66
		mu 0 4 32 42 35 43
		f 4 -60 -73 -39 -69
		mu 0 4 28 44 37 45
		f 4 76 -55 77 78
		mu 0 4 47 49 27 46
		f 4 -79 -48 79 80
		mu 0 4 47 46 26 48
		f 4 81 82 -77 -62
		mu 0 4 29 51 49 47
		f 4 -47 83 84 -80
		mu 0 4 26 52 59 48
		f 4 -43 -74 85 -84
		mu 0 4 52 38 50 60
		f 4 -45 86 -50 -75
		mu 0 4 30 53 54 40
		f 4 -49 -78 -54 -87
		mu 0 4 53 46 27 54
		f 4 -52 87 88 -76
		mu 0 4 32 55 56 42
		f 4 -56 -83 89 -88
		mu 0 4 55 49 51 56
		f 4 -89 90 -57 -68
		mu 0 4 42 56 57 34
		f 4 -90 -82 -61 -91
		mu 0 4 56 51 29 57
		f 4 -85 91 -63 -81
		mu 0 4 48 59 61 47
		f 4 -86 -71 -59 -92
		mu 0 4 59 36 44 61
		f 4 92 93 94 95
		mu 0 4 62 63 64 65
		f 4 96 97 98 -94
		mu 0 4 63 66 67 64
		f 4 99 100 101 -98
		mu 0 4 66 68 69 67
		f 4 102 103 104 -101
		mu 0 4 68 70 71 69
		f 4 105 106 107 -104
		mu 0 4 70 72 73 71
		f 4 108 109 110 -107
		mu 0 4 72 74 75 73
		f 4 111 112 113 -110
		mu 0 4 74 76 77 75
		f 4 114 115 116 -113
		mu 0 4 76 78 79 77
		f 4 117 118 119 -116
		mu 0 4 78 80 81 79
		f 4 120 121 122 -119
		mu 0 4 80 82 83 81
		f 4 123 124 125 -122
		mu 0 4 82 84 85 83
		f 4 126 -96 127 -125
		mu 0 4 84 86 87 85
		f 4 128 129 130 131
		mu 0 4 88 89 90 91
		f 4 132 133 134 -132
		mu 0 4 92 93 94 95
		f 4 -131 135 136 -133
		mu 0 4 91 90 96 97
		f 4 -137 137 138 139
		mu 0 4 97 96 98 99
		f 4 140 141 -134 -140
		mu 0 4 100 101 94 93
		f 4 -139 142 143 -141
		mu 0 4 99 98 102 103
		f 4 -144 144 145 146
		mu 0 4 103 102 104 105
		f 4 -146 147 148 149
		mu 0 4 105 104 106 107
		f 4 150 -142 -147 -150
		mu 0 4 108 94 101 109
		f 4 151 152 153 154
		mu 0 4 110 111 112 113
		f 4 155 156 -154 157
		mu 0 4 114 115 113 112
		f 4 158 159 160 161
		mu 0 4 116 117 118 119
		f 4 162 163 164 -160
		mu 0 4 117 120 121 118
		f 4 165 166 167 168
		mu 0 4 122 123 124 125
		f 4 169 170 171 -167
		mu 0 4 123 126 127 124
		f 4 172 173 174 175
		mu 0 4 128 129 130 131
		f 4 176 177 -136 178
		mu 0 4 132 133 96 90
		f 4 179 180 -143 181
		mu 0 4 134 135 102 98
		f 4 182 183 -148 184
		mu 0 4 136 137 106 104
		f 4 185 186 -158 187
		mu 0 4 138 139 114 112
		f 4 188 -179 -130 189
		mu 0 4 140 132 90 89
		f 4 190 -182 -138 -178
		mu 0 4 133 134 98 96
		f 4 191 -185 -145 -181
		mu 0 4 135 136 104 102
		f 4 192 -188 -153 193
		mu 0 4 141 138 112 111
		f 4 194 -171 195 196
		mu 0 4 130 127 126 121
		f 4 -197 -164 197 198
		mu 0 4 130 121 120 142
		f 4 199 200 -195 -174
		mu 0 4 129 143 127 130
		f 4 -163 201 202 -198
		mu 0 4 120 117 144 142
		f 4 -159 203 204 -202
		mu 0 4 117 116 145 146
		f 4 -161 205 -166 206
		mu 0 4 119 118 123 122
		f 4 -165 -196 -170 -206
		mu 0 4 118 121 126 123
		f 4 -168 207 208 209
		mu 0 4 125 124 147 148
		f 4 -172 -201 210 -208
		mu 0 4 124 127 143 147
		f 4 -209 211 212 213
		mu 0 4 148 147 128 149
		f 4 -211 -200 -173 -212
		mu 0 4 147 143 129 128
		f 4 -203 214 -175 -199
		mu 0 4 142 144 131 130
		f 4 -162 215 -177 216
		mu 0 4 116 119 133 132
		f 4 -207 217 -191 -216
		mu 0 4 119 122 134 133
		f 4 -169 218 -180 -218
		mu 0 4 122 125 135 134
		f 4 -210 219 -192 -219
		mu 0 4 125 148 136 135
		f 4 -214 220 -183 -220
		mu 0 4 148 149 137 136
		f 4 -204 -217 -189 221
		mu 0 4 145 116 132 140
		f 4 -149 222 -152 223
		mu 0 4 150 151 111 110
		f 4 -151 -224 -155 224
		mu 0 4 94 150 110 113
		f 4 -129 225 -156 226
		mu 0 4 152 95 115 114
		f 4 -135 -225 -157 -226
		mu 0 4 95 94 113 115
		f 4 -190 -227 -187 227
		mu 0 4 153 152 114 139
		f 4 -184 228 -194 -223
		mu 0 4 151 154 141 111;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode parentConstraint -n "upper_arm_geo_parentConstraint1" -p "upper_arm_geo";
	rename -uid "68603A71-4AE8-346D-C53F-BCB0324B7F57";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Upper_RK_JNTW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.0013907319189766509 -0.0057400070478053067 
		-0.069999972997223506 ;
	setAttr ".tg[0].tor" -type "double3" 2.6915837406272581e-10 -89.723986684826983 
		-140.29167965748033 ;
	setAttr ".lr" -type "double3" -2.6952020370721839e-10 -2.3854160111125991e-15 -6.3611093629214232e-15 ;
	setAttr ".rst" -type "double3" 5.2041704279304213e-18 0 -3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" -2.6952020370721839e-10 -2.3854160111125991e-15 
		-6.3611093629214232e-15 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "upper_arm_geo_scaleConstraint1" -p "upper_arm_geo";
	rename -uid "A0028C83-413D-006A-C736-2E9B32F9A04D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Upper_RK_JNTW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "head_geo" -p "Geometry";
	rename -uid "595E5ECD-41E5-1607-DA24-AAA61E936F63";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" -0.0088138316745693945 23.695306752477052 1.6059521708569855 ;
	setAttr ".sp" -type "double3" -0.0088138316745693945 23.695306752477052 1.6059521708569855 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "head_geoShape" -p "head_geo";
	rename -uid "737D1A98-435A-A586-040B-E0BBC8F24508";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 235 ".uvst[0].uvsp[0:234]" -type "float2" 0.578125 0.020933539
		 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625 0.36468354 0.234375
		 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649 0.234375 0.65625 0.15625
		 0.63531649 0.078125 0.63531649 0.078125 0.578125 0.020933539 0.5 0 0.421875 0.020933539
		 0.36468354 0.078125 0.34375 0.15625 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125
		 0.578125 0.29156646 0.63531649 0.234375 0.65625 0.15625 0.62178618 0.085311785 0.57031327
		 0.033838905 0.5 0.01499852 0.42968673 0.033838905 0.37821385 0.085311785 0.35937345
		 0.15562506 0.37821385 0.22593834 0.42968673 0.27741122 0.5 0.2962516 0.57031327 0.27741122
		 0.62178618 0.22593834 0.5 0.15000001 0.64062655 0.15562506 0.57079482 0.96578389
		 0.5 0.98475325 0.42920518 0.96578389 0.37737975 0.91395837 0.35841036 0.84316361
		 0.37737975 0.77236879 0.42920518 0.72054327 0.5 0.70157391 0.57079482 0.72054327
		 0.62262028 0.77236879 0.64158964 0.84316361 0.62262028 0.91395837 0.5 0.83749998
		 0.62499994 0.67660254 0.63531649 0.921875 0.62499994 0.68843985 0.375 0.68843985
		 0.39583334 0.68843985 0.578125 0.97906649 0.41666669 0.68843985 0.5 1 0.43750003
		 0.68843985 0.421875 0.97906649 0.45833337 0.68843985 0.36468354 0.921875 0.47916672
		 0.68843985 0.34375 0.84375 0.50000006 0.68843985 0.36468354 0.765625 0.52083337 0.68843985
		 0.421875 0.70843351 0.54166669 0.68843985 0.5 0.6875 0.5625 0.68843985 0.578125 0.70843351
		 0.58333331 0.68843985 0.63531649 0.765625 0.60416663 0.68843985 0.65625 0.84375 0.63531649
		 0.078125 0.578125 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375
		 0.15625 0.36468354 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649
		 0.234375 0.65625 0.15625 0.37500003 0.34517926 0.39583337 0.34517926 0.375 0.67660254
		 0.63531649 0.078125 0.578125 0.020933539 0.41666669 0.34517866 0.39583334 0.67660254
		 0.578125 0.020933539 0.5 0 0.43750003 0.34517863 0.41666669 0.67660254 0.50000012
		 2.4687028e-08 0.42187497 0.020933537 0.4583334 0.34517926 0.43750003 0.67660254 0.421875
		 0.020933541 0.36468354 0.078125 0.47916672 0.34517866 0.45833337 0.67660254 0.36468354
		 0.078125 0.34374997 0.15625 0.50000006 0.34517863 0.47916672 0.67660254 0.34375003
		 0.15624991 0.36468354 0.23437497 0.52083343 0.34517926 0.50000006 0.67660254 0.36468354
		 0.234375 0.42187497 0.29156643 0.54166669 0.34517866 0.52083337 0.67660254 0.421875
		 0.29156646 0.5 0.3125 0.5625 0.34517863 0.54166669 0.67660254 0.49999991 0.31249997
		 0.578125 0.29156643 0.58333337 0.34517926 0.5625 0.67660254 0.578125 0.29156646 0.63531643
		 0.23437499 0.60416663 0.34517866 0.58333331 0.67660254 0.63531649 0.234375 0.65625
		 0.15625 0.65625 0.15625009 0.63531649 0.078125007 0.62499994 0.34517863 0.60416663
		 0.67660254 0.578125 0.020933539 0.63531649 0.078124985 0.63531649 0.078125104 0.57812506
		 0.020933539 0.49999991 2.6944543e-08 0.578125 0.020933533 0.578125 0.020933539 0.5
		 1.7609861e-09 0.421875 0.020933537 0.49999997 4.9909445e-09 0.5 1.7608176e-10 0.421875
		 0.020933535 0.36468354 0.078125 0.421875 0.020933552 0.42187512 0.020933511 0.36468354
		 0.078125 0.34375003 0.1562501 0.36468354 0.078125015 0.36468354 0.078125 0.34375
		 0.15625 0.36468354 0.234375 0.34375 0.15625001 0.34375 0.15625 0.36468351 0.23437499
		 0.421875 0.29156646 0.36468354 0.23437501 0.36468351 0.2343749 0.421875 0.29156646
		 0.50000012 0.31249997 0.42187503 0.29156646 0.421875 0.29156646 0.49999997 0.3125
		 0.578125 0.29156646 0.5 0.3125 0.5 0.3125 0.578125 0.29156643 0.63531649 0.234375
		 0.578125 0.29156646 0.57812488 0.29156649 0.63531649 0.234375 0.65625 0.1562499 0.63531649
		 0.23437499 0.63531649 0.234375 0.65624994 0.15625001 0.65625 0.15625 0.63531643 0.078125
		 0.63531649 0.078125007 0.65625 0.15624999 0.62499994 0.3125 0.63531649 0.078125 0.375
		 0.3125 0.578125 0.020933539 0.39583334 0.3125 0.5 0 0.41666669 0.3125 0.421875 0.020933539
		 0.43750003 0.3125 0.36468354 0.078125 0.45833337 0.3125 0.34375 0.15625 0.47916672
		 0.3125 0.36468354 0.234375 0.50000006 0.3125 0.421875 0.29156646 0.52083337 0.3125
		 0.5 0.3125 0.54166669 0.3125 0.578125 0.29156646 0.5625 0.3125 0.63531649 0.234375
		 0.58333331 0.3125 0.65625 0.15625 0.60416663 0.3125 0.63531649 0.078125 0.578125
		 0.020933539 0.5 0 0.421875 0.020933539 0.36468354 0.078125 0.34375 0.15625 0.36468354
		 0.234375 0.421875 0.29156646 0.5 0.3125 0.578125 0.29156646 0.63531649 0.234375 0.65625
		 0.15625 0.54166669 0.51795948 0.52083337 0.51795983 0.50000006 0.51795948 0.47916672
		 0.51795948 0.45833337 0.51795983 0.43750003 0.51795948 0.41666669 0.51795948 0.39583337
		 0.51795983 0.375 0.51795983 0.62499994 0.51795948 0.60416663 0.51795948 0.58333337
		 0.51795983 0.5625 0.51795948;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 206 ".vt";
	setAttr ".vt[0:165]"  -0.0088138543 25.4288578 1.82216668 -2.66640067 15.45495987 3.91965199
		 -4.61189127 16.67201614 5.43744802 -5.32398701 18.33454514 7.51079464 -4.61189127 19.99707222 9.58414078
		 -2.66640067 21.2141304 11.1019392 -0.0088137984 21.65960121 11.65748882 2.64877343 21.2141304 11.1019392
		 4.59426308 19.99707222 9.58414173 5.30635977 18.33454514 7.51079512 4.59426308 16.67201614 5.43744802
		 2.64877295 15.45495987 3.91965222 -0.0088139176 15.0094871521 3.36410189 -2.60353422 15.52307701 4.0046038628
		 -4.50300312 16.71134186 5.48649597 -5.19825411 18.33454132 7.5107975 -4.50300312 19.95774269 9.53509712
		 -2.6035347 21.14600945 11.016989708 -0.0088139772 21.58094406 11.55939865 2.58590603 21.14600945 11.016989708
		 4.4853754 19.95774269 9.53509712 5.18062687 18.33454132 7.5107975 4.48537493 16.71134186 5.48649645
		 2.58590651 15.52307701 4.0046038628 -0.0088137388 15.088142395 3.4621954 -0.0088138543 24.93763733 2.21605849
		 -0.81479454 24.55555153 0.73306131 -0.89824677 24.46512985 0.62029463 -0.91028225 24.32762909 0.70382953
		 -1.40481353 24.92465591 1.1933713 -1.54935646 24.87244797 1.12826538 -1.57020307 24.74046135 1.21867371
		 -1.62077558 25.4288578 1.82216644 -1.78767955 25.4288578 1.82216656 -1.81175065 25.3044014 1.92196488
		 -1.40481353 25.9330616 2.45096183 -1.54935646 25.98526955 2.5160675 -1.57020307 25.86834145 2.62525582
		 -0.81479472 26.30216789 2.91127181 -0.89824677 26.39258957 3.024038792 -0.91028237 26.2811718 3.14010024
		 -0.0088138729 26.4372673 3.079756975 -0.0088139474 26.54167747 3.20996881 -0.0088138878 26.43227768 3.32854676
		 0.79716712 26.30216789 2.91127181 0.88061881 26.39258957 3.024038553 0.8926549 26.2811718 3.14010048
		 1.38718605 25.9330616 2.45096183 1.53172898 25.98526955 2.51606774 1.55257535 25.86834145 2.62525582
		 1.60314775 25.4288578 1.82216668 1.77005219 25.4288578 1.82216668 1.79412293 25.3044014 1.92196488
		 1.38718605 24.92465591 1.1933713 1.53172874 24.87244797 1.12826538 1.55257511 24.74046135 1.21867371
		 0.79716718 24.55555153 0.73306131 0.88061893 24.46512985 0.62029457 0.89265496 24.32762909 0.70382941
		 -0.008813858 24.42045212 0.56457627 -0.008813858 24.31604004 0.43436411 -0.0088138282 24.1765213 0.51538289
		 -0.78057504 24.18424797 1.10676587 -0.8663168 24.10054779 0.9835242 -0.87913179 23.95856094 1.068929672
		 -1.34554362 24.53767967 1.54753256 -1.49405241 24.49324608 1.47325897 -1.5162487 24.35712624 1.5659833
		 -1.55233622 25.020477295 2.14963126 -1.72381961 25.029680252 2.14224982 -1.74944949 24.9015789 2.24497175
		 -1.3455435 25.50327492 2.75172925 -1.49405253 25.56611633 2.81124067 -1.5162487 25.44602776 2.92396021
		 -0.78057504 25.85670662 3.19249582 -0.8663168 25.95881271 3.30097604 -0.87913185 25.84459496 3.42101455
		 -0.0088139474 25.98607063 3.35382724 -0.008813858 26.10255241 3.48023176 -0.0088139474 25.99048042 3.60294867
		 0.76294708 25.85670662 3.19249606 0.84868956 25.95881271 3.3009758 0.86150402 25.84459496 3.42101431
		 1.32791603 25.50327492 2.75172925 1.47642457 25.56611633 2.81124067 1.49862099 25.44602776 2.92396021
		 1.5347085 25.020477295 2.14963102 1.70619226 25.029680252 2.14224982 1.73182178 24.9015789 2.24497175
		 1.32791615 24.53767967 1.54753256 1.47642469 24.49324608 1.47325897 1.49862099 24.35712624 1.5659833
		 0.7629472 24.18424797 1.10676575 0.84868944 24.10054779 0.9835242 0.86150384 23.95856094 1.068929553
		 -0.0088138878 24.054883957 0.94543409 -0.0088138878 23.95681 0.80426836 -0.0088138878 23.81267548 0.88699496
		 2.6318357 21.23416901 11.048267365 -0.0088135004 21.67680359 11.60027695 -2.64946389 21.23416901 11.048267365
		 -4.58255625 20.024868011 9.54014301 -5.29011345 18.37293625 7.48001051 -4.58255577 16.72100449 5.41987705
		 -2.64946389 15.51170254 3.91175294 -0.0088137388 15.069069862 3.35974407 2.6318357 15.51170254 3.91175294
		 4.56492853 16.72100449 5.41987753 5.27248573 18.37293625 7.48001003 4.56492758 20.024868011 9.54014301
		 2.56358552 21.17111015 10.94730759 -0.0088136196 21.60230255 11.4850502 -2.58121371 21.17111015 10.94730854
		 -4.46434259 19.99306297 9.47816277 -5.15361309 18.38382721 7.47127628 -4.46434212 16.77459145 5.46438885
		 -2.58121347 15.59654808 3.99524546 -0.008813858 15.16535378 3.4575026 2.563586 15.59654808 3.99524498
		 4.44671392 16.77459145 5.46438932 5.13598537 18.38382721 7.47127628 4.44671392 19.99306297 9.47816277
		 -1.41510355 19.6673336 3.31995893 -1.28827214 20.094327927 3.25915194 -1.25434685 20.47427177 3.029808998
		 -2.16614127 21.044670105 3.74115515 -2.2249012 20.68026161 3.98987341 -2.44458055 20.31134987 4.12311649
		 -2.49988008 21.82384872 4.71287155 -2.56773043 21.4806633 4.98805761 -2.82139373 21.19109535 5.22025061
		 -2.16614127 22.60302544 5.68458891 -2.22490096 22.28106308 5.98624182 -2.44458008 22.070840836 6.31738377
		 -1.25434685 23.17342567 6.39593554 -1.2882725 22.86700058 6.71696329 -1.41510403 22.71485519 7.1205411
		 -0.0088136792 23.38220406 6.65630627 -0.0088140368 23.081466675 6.98442554 -0.0088137984 22.95058441 7.41451645
		 1.23671913 23.17342567 6.39593554 1.27064455 22.86700058 6.71696329 1.39747608 22.71485519 7.12054062
		 2.14851284 22.60302544 5.68458891 2.2072742 22.28106308 5.98624182 2.42695355 22.070840836 6.31738329
		 2.4822526 21.82384872 4.71287251 2.55010271 21.4806633 4.98805761 2.8037653 21.19109535 5.22025013
		 2.14851284 21.044670105 3.74115515 2.20727348 20.68026161 3.98987341 2.4269526 20.31134987 4.12311649
		 1.23671937 20.47427177 3.029809475 1.27064478 20.094327927 3.25915194 1.39747584 19.6673336 3.31995916
		 -0.008813858 20.26548958 2.76943874 -0.0088139176 19.87986183 2.99168944 -0.0088139176 19.43160439 3.02598381
		 -1.20488954 20.52673149 3.097543955 -1.24108088 20.14545822 3.3229208 -1.36663079 19.71929741 3.38590693
		 -2.36062264 20.34111595 4.16138077 -2.14316368 20.70978355 4.026690006 -2.08047843 21.074480057 3.78064442
		 -2.72444773 21.1905365 5.2206974 -2.47334814 21.4806633 4.98805714;
	setAttr ".vt[166:205]" -2.40096569 21.82271957 4.71377659 -2.36062264 22.039957047 6.28001499
		 -2.14316368 22.25154305 5.94942474 -2.08047843 22.57095909 5.64690876 -1.36663032 22.66177559 7.055488586
		 -1.24108112 22.81586647 6.65319443 -1.20488977 23.11870766 6.33000994 -0.0088136792 22.88937759 7.33933115
		 -0.0088136792 23.022422791 6.91079187 -0.0088139176 23.31919861 6.58004093 1.34900308 22.66177559 7.055488586
		 1.22345316 22.81586647 6.65319538 1.18726206 23.11870766 6.33000994 2.34299517 22.039957047 6.28001451
		 2.12553549 22.25154305 5.94942522 2.062850952 22.57095909 5.64690876 2.70681953 21.1905365 5.22069836
		 2.45571995 21.4806633 4.98805809 2.3833375 21.82271957 4.71377659 2.34299517 20.34111595 4.16138124
		 2.12553549 20.70978355 4.026690006 2.062850952 21.074480057 3.78064442 1.34900308 19.71929741 3.38590717
		 1.22345316 20.14545822 3.32292104 1.1872623 20.52673149 3.097543955 -0.0088137984 19.4916954 3.10206509
		 -0.0088137984 19.93890381 3.065323353 -0.0088138282 20.32624245 2.84751225 2.12351084 23.63836098 3.25789165
		 1.83783388 24.30532837 4.089671135 1.057348967 24.79358482 4.69857502 -0.0088137984 24.97229576 4.92144871
		 -1.074975967 24.79358482 4.6985755 -1.85546184 24.30532837 4.089670181 -2.14113855 23.63836098 3.25789165
		 -1.85546184 22.97139168 2.42611289 -1.074976206 22.48313904 1.81720853 -0.0088139176 22.30442429 1.59433413
		 1.05734849 22.48313904 1.81720853 1.83783412 22.97139168 2.42611289;
	setAttr -s 420 ".ed";
	setAttr ".ed[0:165]"  2 1 0 1 13 0 13 14 0 14 2 0 3 2 0 14 15 0 15 3 0 4 3 0
		 15 16 0 16 4 0 5 4 0 16 17 0 17 5 0 6 5 0 17 18 0 18 6 0 7 6 0 18 19 0 19 7 0 8 7 0
		 19 20 0 20 8 0 9 8 0 20 21 0 21 9 0 10 9 0 21 22 0 22 10 0 11 10 0 22 23 0 23 11 0
		 12 11 0 23 24 0 24 12 0 1 12 0 24 13 0 103 104 0 104 1 0 2 103 0 102 103 0 3 102 0
		 101 102 0 4 101 0 100 101 0 5 100 0 99 100 0 6 99 0 98 99 0 7 98 0 109 98 0 8 109 0
		 108 109 0 9 108 0 107 108 0 10 107 0 106 107 0 11 106 0 105 106 0 12 105 0 104 105 0
		 65 62 0 62 25 0 25 65 0 68 65 0 25 68 0 71 68 0 25 71 0 74 71 0 25 74 0 77 74 0 25 77 0
		 80 77 0 25 80 0 83 80 0 25 83 0 86 83 0 25 86 0 89 86 0 25 89 0 92 89 0 25 92 0 95 92 0
		 25 95 0 62 95 0 26 29 0 29 0 0 0 26 0 29 32 0 32 0 0 32 35 0 35 0 0 35 38 0 38 0 0
		 38 41 0 41 0 0 41 44 0 44 0 0 44 47 0 47 0 0 47 50 0 50 0 0 50 53 0 53 0 0 53 56 0
		 56 0 0 56 59 0 59 0 0 59 26 0 26 27 0 27 30 0 30 29 0 27 28 0 28 31 0 31 30 0 30 33 0
		 33 32 0 31 34 0 34 33 0 33 36 0 36 35 0 34 37 0 37 36 0 36 39 0 39 38 0 37 40 0 40 39 0
		 39 42 0 42 41 0 40 43 0 43 42 0 42 45 0 45 44 0 43 46 0 46 45 0 45 48 0 48 47 0 46 49 0
		 49 48 0 48 51 0 51 50 0 49 52 0 52 51 0 51 54 0 54 53 0 52 55 0 55 54 0 54 57 0 57 56 0
		 55 58 0 58 57 0 57 60 0 60 59 0 58 61 0 61 60 0 27 60 0 61 28 0 62 63 0 63 96 0 96 95 0
		 63 64 0 64 97 0 97 96 0 63 66 0 66 67 0 67 64 0 65 66 0;
	setAttr ".ed[166:331]" 66 69 0 69 70 0 70 67 0 68 69 0 69 72 0 72 73 0 73 70 0
		 71 72 0 72 75 0 75 76 0 76 73 0 74 75 0 75 78 0 78 79 0 79 76 0 77 78 0 78 81 0 81 82 0
		 82 79 0 80 81 0 81 84 0 84 85 0 85 82 0 83 84 0 84 87 0 87 88 0 88 85 0 86 87 0 87 90 0
		 90 91 0 91 88 0 89 90 0 90 93 0 93 94 0 94 91 0 92 93 0 93 96 0 97 94 0 18 111 0
		 111 110 0 110 19 0 17 112 0 112 111 0 16 113 0 113 112 0 15 114 0 114 113 0 14 115 0
		 115 114 0 13 116 0 116 115 0 24 117 0 117 116 0 23 118 0 118 117 0 22 119 0 119 118 0
		 21 120 0 120 119 0 20 121 0 121 120 0 110 121 0 124 123 0 123 126 0 126 125 0 125 124 0
		 123 122 0 122 127 0 127 126 0 160 159 0 159 162 0 162 161 0 161 160 0 159 158 0 158 163 0
		 163 162 0 125 201 0 201 202 0 202 124 0 122 104 0 103 127 0 125 128 0 128 200 0 200 201 0
		 130 127 0 102 130 0 128 131 0 131 199 0 199 200 0 133 130 0 101 133 0 131 134 0 134 198 0
		 198 199 0 136 133 0 100 136 0 134 137 0 137 197 0 197 198 0 139 136 0 99 139 0 137 140 0
		 140 196 0 196 197 0 142 139 0 98 142 0 140 143 0 143 195 0 195 196 0 145 142 0 109 145 0
		 143 146 0 146 194 0 194 195 0 148 145 0 108 148 0 205 194 0 146 149 0 149 205 0 151 148 0
		 107 151 0 149 152 0 152 204 0 204 205 0 154 151 0 106 154 0 152 155 0 155 203 0 203 204 0
		 157 154 0 105 157 0 122 157 0 155 124 0 202 203 0 161 115 0 116 160 0 158 64 0 67 163 0
		 161 164 0 164 114 0 166 163 0 70 166 0 164 167 0 167 113 0 169 166 0 73 169 0 167 170 0
		 170 112 0 172 169 0 76 172 0 170 173 0 173 111 0 175 172 0 79 175 0 173 176 0 176 110 0
		 178 175 0 82 178 0 176 179 0 179 121 0 181 178 0 85 181 0 179 182 0 182 120 0 184 181 0
		 88 184 0;
	setAttr ".ed[332:419]" 182 185 0 185 119 0 187 184 0 91 187 0 185 188 0 188 118 0
		 190 187 0 94 190 0 188 191 0 191 117 0 193 190 0 97 193 0 158 193 0 191 160 0 126 129 0
		 129 128 0 130 129 0 129 132 0 132 131 0 133 132 0 132 135 0 135 134 0 136 135 0 135 138 0
		 138 137 0 139 138 0 138 141 0 141 140 0 142 141 0 141 144 0 144 143 0 145 144 0 144 147 0
		 147 146 0 148 147 0 147 150 0 150 149 0 151 150 0 150 153 0 153 152 0 154 153 0 153 156 0
		 156 155 0 157 156 0 123 156 0 162 165 0 165 164 0 166 165 0 165 168 0 168 167 0 169 168 0
		 168 171 0 171 170 0 172 171 0 171 174 0 174 173 0 175 174 0 174 177 0 177 176 0 178 177 0
		 177 180 0 180 179 0 181 180 0 180 183 0 183 182 0 184 183 0 183 186 0 186 185 0 187 186 0
		 186 189 0 189 188 0 190 189 0 189 192 0 192 191 0 193 192 0 159 192 0 194 52 0 49 195 0
		 46 196 0 43 197 0 40 198 0 37 199 0 34 200 0 31 201 0 28 202 0 61 203 0 58 204 0
		 55 205 0;
	setAttr -s 840 ".n";
	setAttr ".n[0:165]" -type "float3"  -1.4756932e-05 -0.78016907 0.62556863
		 -1.4756932e-05 -0.78016913 0.62556863 -1.4756933e-05 -0.78016913 0.62556869 -1.4756932e-05
		 -0.78016919 0.62556863 -3.1895175e-05 -0.78016609 0.62557244 -3.1895179e-05 -0.78016609
		 0.6255725 -3.1895175e-05 -0.78016615 0.6255725 -3.1895175e-05 -0.78016609 0.62557244
		 -2.5091429e-05 -0.78015411 0.62558746 -2.5091427e-05 -0.78015405 0.6255874 -2.5091429e-05
		 -0.78015411 0.62558746 -2.5091429e-05 -0.78015411 0.6255874 -1.0289278e-05 -0.78015149
		 0.62559056 -1.0289277e-05 -0.78015155 0.62559062 -1.0289279e-05 -0.78015155 0.62559062
		 -1.0289278e-05 -0.78015155 0.62559062 -6.4984652e-06 -0.78014642 0.625597 -6.4984656e-06
		 -0.78014642 0.625597 -6.4984652e-06 -0.78014642 0.625597 -6.4984647e-06 -0.7801463
		 0.625597 5.5958212e-06 -0.78013635 0.62560952 5.5958212e-06 -0.78013629 0.62560952
		 5.5958217e-06 -0.78013641 0.62560958 5.5958212e-06 -0.78013635 0.62560952 1.236508e-05
		 -0.7801497 0.62559289 1.2365081e-05 -0.7801497 0.62559295 1.236508e-05 -0.78014964
		 0.62559289 1.236508e-05 -0.78014964 0.62559295 2.5869233e-05 -0.78015655 0.62558442
		 2.5869227e-05 -0.78015643 0.6255843 2.5869231e-05 -0.78015649 0.62558442 2.5869231e-05
		 -0.78015655 0.62558442 3.1454587e-05 -0.78016645 0.62557209 3.1454583e-05 -0.78016633
		 0.62557209 3.1454587e-05 -0.78016639 0.62557209 3.145459e-05 -0.78016639 0.62557209
		 1.2906672e-05 -0.78016937 0.62556827 1.2906672e-05 -0.78016943 0.62556839 1.2906671e-05
		 -0.78016931 0.62556833 1.2906672e-05 -0.78016943 0.62556839 3.1589743e-06 -0.78016782
		 0.62557024 3.1589741e-06 -0.78016782 0.62557018 3.1589746e-06 -0.78016788 0.6255703
		 3.1589739e-06 -0.78016776 0.62557024 -3.790813e-06 -0.78017801 0.6255576 -3.7908133e-06
		 -0.78017801 0.6255576 -3.7908133e-06 -0.78017801 0.6255576 -3.7908128e-06 -0.78017795
		 0.62555754 -0.71496409 0.18201683 -0.6750527 -0.41278437 -0.0070203366 -0.91080177
		 -0.41185963 -0.0039110198 -0.91123885 -0.71335721 0.18470743 -0.67602128 -0.82556951
		 0.4402456 -0.35301387 -0.71496409 0.18201683 -0.6750527 -0.71335721 0.18470743 -0.67602128
		 -0.82371223 0.44235772 -0.35470825 -0.71496415 0.69847459 -0.030975349 -0.82556951
		 0.4402456 -0.35301387 -0.82371223 0.44235772 -0.35470825 -0.71335703 0.7000044 -0.033403587
		 -0.4127847 0.88751149 0.2047734 -0.71496415 0.69847459 -0.030975349 -0.71335703 0.7000044
		 -0.033403587 -0.41185468 0.88862008 0.20181721 2.7763914e-08 0.9567039 0.2910628
		 -0.4127847 0.88751149 0.2047734 -0.41185468 0.88862008 0.20181721 -8.267741e-08 0.95765495
		 0.28791806 0.41278473 0.88751155 0.20477271 2.7763914e-08 0.9567039 0.2910628 -8.267741e-08
		 0.95765495 0.28791806 0.41185415 0.8886233 0.20180357 0.71496403 0.69847471 -0.03097555
		 0.41278473 0.88751155 0.20477271 0.41185415 0.8886233 0.20180357 0.71335018 0.70001096
		 -0.033408538 0.82556945 0.44024548 -0.35301402 0.71496403 0.69847471 -0.03097555
		 0.71335018 0.70001096 -0.033408538 0.82371402 0.44235796 -0.35470375 0.71496403 0.18201675
		 -0.67505288 0.82556945 0.44024548 -0.35301402 0.82371402 0.44235796 -0.35470375 0.71335894
		 0.18470234 -0.67602074 0.41278425 -0.0070203589 -0.91080177 0.71496403 0.18201675
		 -0.67505288 0.71335894 0.18470234 -0.67602074 0.41186228 -0.0039109169 -0.9112376
		 8.3291738e-08 -0.076212704 -0.99709159 0.41278425 -0.0070203589 -0.91080177 0.41186228
		 -0.0039109169 -0.9112376 8.5158518e-07 -0.072951183 -0.99733549 -0.41278437 -0.0070203366
		 -0.91080177 8.3291738e-08 -0.076212704 -0.99709159 8.5158518e-07 -0.072951183 -0.99733549
		 -0.41185963 -0.0039110198 -0.91123885 -0.059437584 -0.79979056 0.59732932 -0.034315612
		 -0.81550443 0.5777325 1.5591352e-08 -0.78016126 0.62557834 -0.068632349 -0.77832305
		 0.62410164 -0.059437584 -0.79979056 0.59732932 1.5591352e-08 -0.78016126 0.62557834
		 -0.059436962 -0.75685501 0.65087461 -0.068632349 -0.77832305 0.62410164 1.5591352e-08
		 -0.78016126 0.62557834 -0.034316022 -0.74113852 0.67047459 -0.059436962 -0.75685501
		 0.65087461 1.5591352e-08 -0.78016126 0.62557834 5.6503563e-08 -0.73538637 0.67764813
		 -0.034316022 -0.74113852 0.67047459 1.5591352e-08 -0.78016126 0.62557834 0.034316253
		 -0.74114031 0.67047244 5.6503563e-08 -0.73538637 0.67764813 1.5591352e-08 -0.78016126
		 0.62557834 0.059437081 -0.75685549 0.65087396 0.034316253 -0.74114031 0.67047244
		 1.5591352e-08 -0.78016126 0.62557834 0.06863226 -0.7783218 0.62410313 0.059437081
		 -0.75685549 0.65087396 1.5591352e-08 -0.78016126 0.62557834 0.059437562 -0.79978973
		 0.59733045 0.06863226 -0.7783218 0.62410313 1.5591352e-08 -0.78016126 0.62557834
		 0.034315661 -0.81550503 0.57773173 0.059437562 -0.79978973 0.59733045 1.5591352e-08
		 -0.78016126 0.62557834 4.4843967e-10 -0.8212561 0.5705598 0.034315661 -0.81550503
		 0.57773173 1.5591352e-08 -0.78016126 0.62557834 -0.034315612 -0.81550443 0.5777325
		 4.4843967e-10 -0.8212561 0.5705598 1.5591352e-08 -0.78016126 0.62557834 -1.362332e-07
		 0.78016192 -0.62557763 -2.8829072e-07 0.78016263 -0.62557685 1.5292672e-08 0.78016168
		 -0.62557787 -2.8829072e-07 0.78016263 -0.62557685 8.4376403e-08 0.78016192 -0.62557769
		 1.5292672e-08 0.78016168 -0.62557787 8.4376403e-08 0.78016192 -0.62557769 8.4377945e-08
		 0.78016019 -0.62557983 1.5292672e-08 0.78016168 -0.62557787 8.4377945e-08 0.78016019
		 -0.62557983 4.9221285e-08 0.78016162 -0.62557799 1.5292672e-08 0.78016168 -0.62557787
		 4.9221285e-08 0.78016162 -0.62557799 -4.9220287e-08 0.7801621 -0.62557733 1.5292672e-08
		 0.78016168 -0.62557787 -4.9220287e-08 0.7801621 -0.62557733 -9.8443479e-08 0.78016031
		 -0.62557977 1.5292672e-08 0.78016168 -0.62557787 -9.8443479e-08 0.78016031 -0.62557977
		 1.405872e-08 0.78016037 -0.62557954 1.5292672e-08 0.78016168 -0.62557787 1.405872e-08
		 0.78016037 -0.62557954 4.9218563e-08 0.78016198 -0.62557769 1.5292672e-08 0.78016168
		 -0.62557787 4.9218563e-08 0.78016198 -0.62557769 3.5860785e-07 0.78016126 -0.6255784
		 1.5292672e-08 0.78016168 -0.62557787 3.5860785e-07 0.78016126 -0.6255784 1.5908877e-07
		 0.7801609 -0.62557894 1.5292672e-08 0.78016168 -0.62557787 1.5908877e-07 0.7801609
		 -0.62557894 -1.2304996e-08 0.78016186 -0.62557763 1.5292672e-08 0.78016168 -0.62557787
		 -1.2304996e-08 0.78016186 -0.62557763;
	setAttr ".n[166:331]" -type "float3"  -1.362332e-07 0.78016192 -0.62557763
		 1.5292672e-08 0.78016168 -0.62557787 -1.362332e-07 0.78016192 -0.62557763 -1.1848449e-06
		 0.78016049 -0.6255793 -3.7914876e-06 0.78016132 -0.6255784 -2.8829072e-07 0.78016263
		 -0.62557685 -0.49440446 -0.4193027 -0.7614128 -0.49417159 -0.41667658 -0.76300395
		 -0.85593009 -0.19036792 -0.48077416 -0.85632992 -0.19288929 -0.47905403 -2.8829072e-07
		 0.78016263 -0.62557685 -3.7914876e-06 0.78016132 -0.6255784 2.106389e-07 0.78016078
		 -0.62557918 8.4376403e-08 0.78016192 -0.62557769 -0.85632992 -0.19288929 -0.47905403
		 -0.85593009 -0.19036792 -0.48077416 -0.98834294 0.11877509 -0.095240392 -0.98880619
		 0.11640099 -0.093343973 8.4376403e-08 0.78016192 -0.62557769 2.106389e-07 0.78016078
		 -0.62557918 3.3701922e-06 0.7801581 -0.62558228 8.4377945e-08 0.78016019 -0.62557983
		 -0.98880619 0.11640099 -0.093343973 -0.98834294 0.11877509 -0.095240392 -0.85593009
		 0.42791805 0.2902928 -0.85633194 0.42569131 0.29237404 8.4377945e-08 0.78016019 -0.62557983
		 3.3701922e-06 0.7801581 -0.62558228 2.1063995e-07 0.78016222 -0.62557727 4.9221285e-08
		 0.78016162 -0.62557799 -0.85633194 0.42569131 0.29237404 -0.85593009 0.42791805 0.2902928
		 -0.49417132 0.6542266 0.57252276 -0.49440363 0.65210593 0.57473719 4.9221285e-08
		 0.78016162 -0.62557799 2.1063995e-07 0.78016222 -0.62557727 -2.1063984e-07 0.78016382
		 -0.62557536 -4.9220287e-08 0.7801621 -0.62557733 -0.49440363 0.65210593 0.57473719
		 -0.49417132 0.6542266 0.57252276 -8.1775111e-09 0.7370612 0.67582601 -2.2430952e-07
		 0.73497754 0.67809135 -4.9220287e-08 0.7801621 -0.62557733 -2.1063984e-07 0.78016382
		 -0.62557536 -4.2127979e-07 0.78016025 -0.62557977 -9.8443479e-08 0.78016031 -0.62557977
		 -2.2430952e-07 0.73497754 0.67809135 -8.1775111e-09 0.7370612 0.67582601 0.49417114
		 0.65422684 0.57252258 0.49440145 0.65210432 0.57474101 -9.8443479e-08 0.78016031
		 -0.62557977 -4.2127979e-07 0.78016025 -0.62557977 -2.9489254e-06 0.7801615 -0.62557817
		 1.405872e-08 0.78016037 -0.62557954 0.49440145 0.65210432 0.57474101 0.49417114 0.65422684
		 0.57252258 0.85593009 0.42791784 0.29029298 0.85633165 0.42569053 0.29237574 1.405872e-08
		 0.78016037 -0.62557954 -2.9489254e-06 0.7801615 -0.62557817 2.1062979e-07 0.78016096
		 -0.62557882 4.9218563e-08 0.78016198 -0.62557769 0.85633165 0.42569053 0.29237574
		 0.85593009 0.42791784 0.29029298 0.98834294 0.11877497 -0.095240153 0.9888069 0.11639918
		 -0.093339086 4.9218563e-08 0.78016198 -0.62557769 2.1062979e-07 0.78016096 -0.62557882
		 3.791467e-06 0.78015786 -0.62558264 3.5860785e-07 0.78016126 -0.6255784 0.9888069
		 0.11639918 -0.093339086 0.98834294 0.11877497 -0.095240153 0.85593021 -0.19036795
		 -0.4807739 0.8563329 -0.19289002 -0.4790484 3.5860785e-07 0.78016126 -0.6255784 3.791467e-06
		 0.78015786 -0.62558264 1.1321838e-06 0.78015864 -0.62558168 1.5908877e-07 0.7801609
		 -0.62557894 0.8563329 -0.19289002 -0.4790484 0.85593021 -0.19036795 -0.4807739 0.49417129
		 -0.41667616 -0.7630043 0.49440065 -0.41929924 -0.76141715 1.5908877e-07 0.7801609
		 -0.62557894 1.1321838e-06 0.78015864 -0.62558168 -5.265959e-08 0.78016067 -0.62557906
		 -1.2304996e-08 0.78016186 -0.62557763 0.49440065 -0.41929924 -0.76141715 0.49417129
		 -0.41667616 -0.7630043 -2.4532515e-08 -0.49951082 -0.86630762 -1.1295394e-06 -0.50216907
		 -0.86476952 -0.49417159 -0.41667658 -0.76300395 -0.49440446 -0.4193027 -0.7614128
		 -1.1295394e-06 -0.50216907 -0.86476952 -2.4532515e-08 -0.49951082 -0.86630762 -1.1848449e-06
		 0.78016049 -0.6255793 -1.362332e-07 0.78016192 -0.62557763 -1.2304996e-08 0.78016186
		 -0.62557763 -5.265959e-08 0.78016067 -0.62557906 -0.034315612 -0.81550443 0.5777325
		 -0.034318004 -0.81550997 0.57772464 6.3482147e-10 -0.82125837 0.57055664 4.4843967e-10
		 -0.8212561 0.5705598 0.49401745 0.41497618 0.76402974 0.49334484 0.40769526 0.76837188
		 8.6564347e-09 0.49039152 0.87150228 8.0545625e-08 0.49778908 0.86729807 0.49334484
		 0.40769526 0.76837188 0.49401745 0.41497618 0.76402974 0.85566384 0.18873464 0.48189068
		 0.85449916 0.1817652 0.48661348 -0.034318004 -0.81550997 0.57772464 -0.034315612
		 -0.81550443 0.5777325 -0.059437584 -0.79979056 0.59732932 -0.059441969 -0.79979473
		 0.5973233 0.85449916 0.1817652 0.48661348 0.85566384 0.18873464 0.48189068 0.98803657
		 -0.12031513 0.096478194 0.98669058 -0.12686093 0.10172428 -0.059441969 -0.79979473
		 0.5973233 -0.059437584 -0.79979056 0.59732932 -0.068632349 -0.77832305 0.62410164
		 -0.068635643 -0.77832288 0.62410146 0.98669058 -0.12686093 0.10172428 0.98803657
		 -0.12031513 0.096478194 0.85566413 -0.42936522 -0.28893653 0.85449916 -0.43548709
		 -0.28316453 -0.068635643 -0.77832288 0.62410146 -0.068632349 -0.77832305 0.62410164
		 -0.059436962 -0.75685501 0.65087461 -0.059438497 -0.75685555 0.65087384 0.85449916
		 -0.43548709 -0.28316453 0.85566413 -0.42936522 -0.28893653 0.49401864 -0.65560234
		 -0.57107913 0.49334529 -0.66141713 -0.56492287 -0.059438497 -0.75685555 0.65087384
		 -0.059436962 -0.75685501 0.65087461 -0.034316022 -0.74113852 0.67047459 -0.034316193
		 -0.74113542 0.67047799 0.49334529 -0.66141713 -0.56492287 0.49401864 -0.65560234
		 -0.57107913 -4.1883152e-07 -0.7384122 -0.67434967 -1.7312868e-08 -0.74411315 -0.66805363
		 -0.034316193 -0.74113542 0.67047799 -0.034316022 -0.74113852 0.67047459 5.6503563e-08
		 -0.73538637 0.67764813 2.3869438e-07 -0.73538417 0.67765051 -1.7312868e-08 -0.74411315
		 -0.66805363 -4.1883152e-07 -0.7384122 -0.67434967 -0.49402162 -0.65560406 -0.57107437
		 -0.49334517 -0.66141713 -0.56492299 2.3869438e-07 -0.73538417 0.67765051 5.6503563e-08
		 -0.73538637 0.67764813 0.034316253 -0.74114031 0.67047244 0.034317166 -0.74114192
		 0.67047071 -0.49334517 -0.66141713 -0.56492299 -0.49402162 -0.65560406 -0.57107437
		 -0.8556655 -0.42936552 -0.28893209 -0.85449922 -0.43548697 -0.28316438 0.034317166
		 -0.74114192 0.67047071 0.034316253 -0.74114031 0.67047244 0.059437081 -0.75685549
		 0.65087396 0.059438862 -0.75685459 0.65087491 -0.85449922 -0.43548697 -0.28316438
		 -0.8556655 -0.42936552 -0.28893209 -0.98803657 -0.12031507 0.096478179 -0.9866907
		 -0.12686087 0.10172439;
	setAttr ".n[332:497]" -type "float3"  0.059438862 -0.75685459 0.65087491 0.059437081
		 -0.75685549 0.65087396 0.06863226 -0.7783218 0.62410313 0.068635672 -0.77832264 0.6241017
		 -0.9866907 -0.12686087 0.10172439 -0.98803657 -0.12031507 0.096478179 -0.85566455
		 0.18873517 0.4818894 -0.85449928 0.18176511 0.48661339 0.068635672 -0.77832264 0.6241017
		 0.06863226 -0.7783218 0.62410313 0.059437562 -0.79978973 0.59733045 0.059441909 -0.79979384
		 0.59732449 -0.85449928 0.18176511 0.48661339 -0.85566455 0.18873517 0.4818894 -0.49401903
		 0.41497746 0.76402801 -0.49334505 0.40769544 0.7683717 0.059441909 -0.79979384 0.59732449
		 0.059437562 -0.79978973 0.59733045 0.034315661 -0.81550503 0.57773173 0.034317967
		 -0.81550854 0.57772684 -0.49334505 0.40769544 0.7683717 -0.49401903 0.41497746 0.76402801
		 8.0545625e-08 0.49778908 0.86729807 8.6564347e-09 0.49039152 0.87150228 0.034317967
		 -0.81550854 0.57772684 0.034315661 -0.81550503 0.57773173 4.4843967e-10 -0.8212561
		 0.5705598 6.3482147e-10 -0.82125837 0.57055664 -0.40832937 -0.8926779 -0.19077003
		 1.4496288e-06 -0.96111864 -0.27613574 2.8602358e-08 -0.95520645 -0.29594013 -0.41421863
		 -0.8857739 -0.20935003 1.4496288e-06 -0.96111864 -0.27613574 0.40833238 -0.892681
		 -0.19074932 0.41421854 -0.88577408 -0.20934975 2.8602358e-08 -0.95520645 -0.29594013
		 0.40833238 -0.892681 -0.19074932 0.70725274 -0.7056846 0.042459741 0.71744758 -0.69608057
		 0.027218034 0.41421854 -0.88577408 -0.20934975 0.70725274 -0.7056846 0.042459741
		 0.81667531 -0.45023063 0.361018 0.82843727 -0.43695441 0.35037497 0.71744758 -0.69608057
		 0.027218034 0.81667531 -0.45023063 0.361018 0.70726806 -0.19478366 0.67958164 0.7174477
		 -0.17782836 0.67353237 0.82843727 -0.43695441 0.35037497 0.70726806 -0.19478366 0.67958164
		 0.40834099 -0.0077832486 0.91279626 0.4142184 0.011865179 0.91010022 0.7174477 -0.17782836
		 0.67353237 0.40834099 -0.0077832486 0.91279626 -2.2302304e-06 0.060665168 0.99815816
		 -8.5807095e-08 0.081297785 0.9966898 0.4142184 0.011865179 0.91010022 -2.2302304e-06
		 0.060665168 0.99815816 -0.40834111 -0.0077805016 0.91279626 -0.41421846 0.011865124
		 0.9101001 -8.5807095e-08 0.081297785 0.9966898 -0.40834111 -0.0077805016 0.91279626
		 -0.70726824 -0.19478409 0.67958134 -0.71744788 -0.1778286 0.67353225 -0.41421846
		 0.011865124 0.9101001 -0.70726824 -0.19478409 0.67958134 -0.81667435 -0.4502359 0.36101341
		 -0.82843709 -0.43695447 0.35037524 -0.71744788 -0.1778286 0.67353225 -0.81667435
		 -0.4502359 0.36101341 -0.70725155 -0.70568609 0.042453818 -0.7174477 -0.69608045
		 0.027218075 -0.82843709 -0.43695447 0.35037524 -0.70725155 -0.70568609 0.042453818
		 -0.40832937 -0.8926779 -0.19077003 -0.41421863 -0.8857739 -0.20935003 -0.7174477
		 -0.69608045 0.027218075 -0.49415612 -0.41650674 -0.76310676 -0.46104017 -0.19763672
		 -0.86509055 -0.79854649 0.01349929 -0.60178173 -0.85590374 -0.1902051 -0.48088539
		 -0.46104017 -0.19763672 -0.86509055 -0.41280431 -0.0070873266 -0.91079217 -0.71499854
		 0.18195872 -0.6750319 -0.79854649 0.01349929 -0.60178173 0.41438207 0.012420779 0.91001827
		 0.46063825 0.19571064 0.86574227 0.79785025 -0.015241438 0.60266304 0.71773118 -0.17734776
		 0.67335713 0.46063825 0.19571064 0.86574227 0.49332201 0.40745473 0.76851416 0.85445952
		 0.18153521 0.48676893 0.79785025 -0.015241438 0.60266304 -0.49415612 -0.41650674
		 -0.76310676 -0.85590374 -0.1902051 -0.48088539 -0.85590392 -0.19020516 -0.4808853
		 -0.49415633 -0.41650671 -0.76310664 -0.71499854 0.18195872 -0.6750319 -0.41280431
		 -0.0070873266 -0.91079217 -0.41278437 -0.0070203366 -0.91080177 -0.71496409 0.18201683
		 -0.6750527 -0.85590374 -0.1902051 -0.48088539 -0.98831266 0.11892828 -0.095363565
		 -0.98831272 0.11892829 -0.095363416 -0.85590392 -0.19020516 -0.4808853 -0.82560951
		 0.44020009 -0.35297728 -0.71499854 0.18195872 -0.6750319 -0.71496409 0.18201683 -0.6750527
		 -0.82556951 0.4402456 -0.35301387 -0.98831266 0.11892828 -0.095363565 -0.85590392
		 0.42806157 0.29015824 -0.85590392 0.42806157 0.29015821 -0.98831272 0.11892829 -0.095363416
		 -0.7149986 0.69844168 -0.03092294 -0.82560951 0.44020009 -0.35297728 -0.82556951
		 0.4402456 -0.35301387 -0.71496415 0.69847459 -0.030975349 -0.85590392 0.42806157
		 0.29015824 -0.49415621 0.65436333 0.57237941 -0.494156 0.65436333 0.57237965 -0.85590392
		 0.42806157 0.29015821 -0.41280472 0.88748747 0.20483717 -0.7149986 0.69844168 -0.03092294
		 -0.71496415 0.69847459 -0.030975349 -0.4127847 0.88751149 0.2047734 -0.49415621 0.65436333
		 0.57237941 1.3225386e-08 0.73719543 0.67567962 -3.1225706e-08 0.73719519 0.6756798
		 -0.494156 0.65436333 0.57237965 1.8552222e-09 0.95668328 0.29113087 -0.41280472 0.88748747
		 0.20483717 -0.4127847 0.88751149 0.2047734 2.7763914e-08 0.9567039 0.2910628 1.3225386e-08
		 0.73719543 0.67567962 0.49415606 0.6543631 0.57237995 0.49415603 0.65436321 0.57237971
		 -3.1225706e-08 0.73719519 0.6756798 0.41280484 0.88748753 0.20483691 1.8552222e-09
		 0.95668328 0.29113087 2.7763914e-08 0.9567039 0.2910628 0.41278473 0.88751155 0.20477271
		 0.49415606 0.6543631 0.57237995 0.85590386 0.4280616 0.29015833 0.85590392 0.42806149
		 0.29015815 0.49415603 0.65436321 0.57237971 0.7149986 0.69844168 -0.030923031 0.41280484
		 0.88748753 0.20483691 0.41278473 0.88751155 0.20477271 0.71496403 0.69847471 -0.03097555
		 0.85590386 0.4280616 0.29015833 0.98831254 0.11892844 -0.095363416 0.98831266 0.11892824
		 -0.095363416 0.85590392 0.42806149 0.29015815 0.82560945 0.44020006 -0.35297754 0.7149986
		 0.69844168 -0.030923031 0.71496403 0.69847471 -0.03097555 0.82556945 0.44024548 -0.35301402
		 0.8559038 -0.19020525 -0.4808853 0.98831266 0.11892824 -0.095363416 0.98831254 0.11892844
		 -0.095363416 0.8559038 -0.19020511 -0.48088527 0.71499854 0.18195871 -0.67503202
		 0.82560945 0.44020006 -0.35297754 0.82556945 0.44024548 -0.35301402 0.71496403 0.18201675
		 -0.67505288 0.8559038 -0.19020511 -0.48088527 0.49415633 -0.41650677 -0.76310658;
	setAttr ".n[498:663]" -type "float3"  0.49415639 -0.41650677 -0.76310658 0.8559038
		 -0.19020525 -0.4808853 0.41280434 -0.0070873452 -0.91079229 0.71499854 0.18195871
		 -0.67503202 0.71496403 0.18201675 -0.67505288 0.41278425 -0.0070203589 -0.91080177
		 0.49415633 -0.41650677 -0.76310658 1.3372343e-07 -0.49933895 -0.86640674 9.7580319e-08
		 -0.49933872 -0.86640686 0.49415639 -0.41650677 -0.76310658 4.2670035e-08 -0.076282993
		 -0.99708617 0.41280434 -0.0070873452 -0.91079229 0.41278425 -0.0070203589 -0.91080177
		 8.3291738e-08 -0.076212704 -0.99709159 -0.41280431 -0.0070873266 -0.91079217 4.2670035e-08
		 -0.076282993 -0.99708617 8.3291738e-08 -0.076212704 -0.99709159 -0.41278437 -0.0070203366
		 -0.91080177 1.3372343e-07 -0.49933895 -0.86640674 -0.49415612 -0.41650674 -0.76310676
		 -0.49415633 -0.41650671 -0.76310664 9.7580319e-08 -0.49933872 -0.86640686 0.41438207
		 0.012420779 0.91001827 0.71773118 -0.17734776 0.67335713 0.7174477 -0.17782836 0.67353237
		 0.4142184 0.011865179 0.91010022 0.85445952 0.18153521 0.48676893 0.49332201 0.40745473
		 0.76851416 0.49334484 0.40769526 0.76837188 0.85449916 0.1817652 0.48661348 0.71773118
		 -0.17734776 0.67335713 0.82876486 -0.43657625 0.3500717 0.82843727 -0.43695441 0.35037497
		 0.7174477 -0.17782836 0.67353237 0.98664504 -0.12707649 0.10189737 0.85445952 0.18153521
		 0.48676893 0.85449916 0.1817652 0.48661348 0.98669058 -0.12686093 0.10172428 0.82876486
		 -0.43657625 0.3500717 0.7177313 -0.69580472 0.026786471 0.71744758 -0.69608057 0.027218034
		 0.82843727 -0.43695441 0.35037497 0.85445964 -0.43568859 -0.28297392 0.98664504 -0.12707649
		 0.10189737 0.98669058 -0.12686093 0.10172428 0.85449916 -0.43548709 -0.28316453 0.7177313
		 -0.69580472 0.026786471 0.4143824 -0.88557315 -0.20987448 0.41421854 -0.88577408
		 -0.20934975 0.71744758 -0.69608057 0.027218034 0.49332243 -0.66160792 -0.56471914
		 0.85445964 -0.43568859 -0.28297392 0.85449916 -0.43548709 -0.28316453 0.49334529
		 -0.66141713 -0.56492287 0.4143824 -0.88557315 -0.20987448 -1.9267508e-09 -0.95503342
		 -0.29649839 2.8602358e-08 -0.95520645 -0.29594013 0.41421854 -0.88577408 -0.20934975
		 3.5244305e-08 -0.74430031 -0.66784507 0.49332243 -0.66160792 -0.56471914 0.49334529
		 -0.66141713 -0.56492287 -1.7312868e-08 -0.74411315 -0.66805363 -1.9267508e-09 -0.95503342
		 -0.29649839 -0.41438264 -0.88557315 -0.20987436 -0.41421863 -0.8857739 -0.20935003
		 2.8602358e-08 -0.95520645 -0.29594013 -0.49332255 -0.66160822 -0.56471896 3.5244305e-08
		 -0.74430031 -0.66784507 -1.7312868e-08 -0.74411315 -0.66805363 -0.49334517 -0.66141713
		 -0.56492299 -0.41438264 -0.88557315 -0.20987436 -0.71773154 -0.6958046 0.026786774
		 -0.7174477 -0.69608045 0.027218075 -0.41421863 -0.8857739 -0.20935003 -0.8544597
		 -0.43568841 -0.28297383 -0.49332255 -0.66160822 -0.56471896 -0.49334517 -0.66141713
		 -0.56492299 -0.85449922 -0.43548697 -0.28316438 -0.71773154 -0.6958046 0.026786774
		 -0.82876474 -0.43657619 0.350072 -0.82843709 -0.43695447 0.35037524 -0.7174477 -0.69608045
		 0.027218075 -0.9866451 -0.12707639 0.10189744 -0.8544597 -0.43568841 -0.28297383
		 -0.85449922 -0.43548697 -0.28316438 -0.9866907 -0.12686087 0.10172439 -0.82876474
		 -0.43657619 0.350072 -0.71773124 -0.17734797 0.67335689 -0.71744788 -0.1778286 0.67353225
		 -0.82843709 -0.43695447 0.35037524 -0.85445958 0.18153518 0.48676866 -0.9866451 -0.12707639
		 0.10189744 -0.9866907 -0.12686087 0.10172439 -0.85449928 0.18176511 0.48661339 -0.71773124
		 -0.17734797 0.67335689 -0.41438216 0.01242066 0.91001815 -0.41421846 0.011865124
		 0.9101001 -0.71744788 -0.1778286 0.67353225 -0.49332219 0.40745473 0.7685141 -0.85445958
		 0.18153518 0.48676866 -0.85449928 0.18176511 0.48661339 -0.49334505 0.40769544 0.7683717
		 -0.41438216 0.01242066 0.91001815 -2.26393e-08 0.081880823 0.99664211 -8.5807095e-08
		 0.081297785 0.9966898 -0.41421846 0.011865124 0.9101001 3.0061297e-08 0.49014693
		 0.87163985 -0.49332219 0.40745473 0.7685141 -0.49334505 0.40769544 0.7683717 8.6564347e-09
		 0.49039152 0.87150228 0.49332201 0.40745473 0.76851416 3.0061297e-08 0.49014693 0.87163985
		 8.6564347e-09 0.49039152 0.87150228 0.49334484 0.40769526 0.76837188 -2.26393e-08
		 0.081880823 0.99664211 0.41438207 0.012420779 0.91001827 0.4142184 0.011865179 0.91010022
		 -8.5807095e-08 0.081297785 0.9966898 -0.85590374 -0.1902051 -0.48088539 -0.79854649
		 0.01349929 -0.60178173 -0.92208272 0.30191663 -0.24209437 -0.98831266 0.11892828
		 -0.095363565 -0.79854649 0.01349929 -0.60178173 -0.71499854 0.18195872 -0.6750319
		 -0.82560951 0.44020009 -0.35297728 -0.92208272 0.30191663 -0.24209437 -0.98831266
		 0.11892828 -0.095363565 -0.92208272 0.30191663 -0.24209437 -0.79854715 0.59033442
		 0.11759174 -0.85590392 0.42806157 0.29015824 -0.92208272 0.30191663 -0.24209437 -0.82560951
		 0.44020009 -0.35297728 -0.7149986 0.69844168 -0.03092294 -0.79854715 0.59033442 0.11759174
		 -0.85590392 0.42806157 0.29015824 -0.79854715 0.59033442 0.11759174 -0.46104178 0.80147022
		 0.38090155 -0.49415621 0.65436333 0.57237941 -0.79854715 0.59033442 0.11759174 -0.7149986
		 0.69844168 -0.03092294 -0.41280472 0.88748747 0.20483717 -0.46104178 0.80147022 0.38090155
		 -0.49415621 0.65436333 0.57237941 -0.46104178 0.80147022 0.38090155 -1.5298852e-07
		 0.8787511 0.47728032 1.3225386e-08 0.73719543 0.67567962 -0.46104178 0.80147022 0.38090155
		 -0.41280472 0.88748747 0.20483717 1.8552222e-09 0.95668328 0.29113087 -1.5298852e-07
		 0.8787511 0.47728032 1.3225386e-08 0.73719543 0.67567962 -1.5298852e-07 0.8787511
		 0.47728032 0.46104094 0.8014698 0.38090336 0.49415606 0.6543631 0.57237995 -1.5298852e-07
		 0.8787511 0.47728032 1.8552222e-09 0.95668328 0.29113087 0.41280484 0.88748753 0.20483691
		 0.46104094 0.8014698 0.38090336 0.49415606 0.6543631 0.57237995 0.46104094 0.8014698
		 0.38090336 0.79854691 0.59033442 0.11759312 0.85590386 0.4280616 0.29015833 0.46104094
		 0.8014698 0.38090336 0.41280484 0.88748753 0.20483691 0.7149986 0.69844168 -0.030923031
		 0.79854691 0.59033442 0.11759312;
	setAttr ".n[664:829]" -type "float3"  0.85590386 0.4280616 0.29015833 0.79854691
		 0.59033442 0.11759312 0.92208284 0.30191627 -0.24209438 0.98831254 0.11892844 -0.095363416
		 0.79854691 0.59033442 0.11759312 0.7149986 0.69844168 -0.030923031 0.82560945 0.44020006
		 -0.35297754 0.92208284 0.30191627 -0.24209438 0.98831254 0.11892844 -0.095363416
		 0.92208284 0.30191627 -0.24209438 0.79854739 0.01349958 -0.60178059 0.8559038 -0.19020511
		 -0.48088527 0.92208284 0.30191627 -0.24209438 0.82560945 0.44020006 -0.35297754 0.71499854
		 0.18195871 -0.67503202 0.79854739 0.01349958 -0.60178059 0.8559038 -0.19020511 -0.48088527
		 0.79854739 0.01349958 -0.60178059 0.46104145 -0.19763668 -0.86508983 0.49415633 -0.41650677
		 -0.76310658 0.79854739 0.01349958 -0.60178059 0.71499854 0.18195871 -0.67503202 0.41280434
		 -0.0070873452 -0.91079229 0.46104145 -0.19763668 -0.86508983 0.49415633 -0.41650677
		 -0.76310658 0.46104145 -0.19763668 -0.86508983 -1.2078029e-07 -0.27491799 -0.96146768
		 1.3372343e-07 -0.49933895 -0.86640674 0.46104145 -0.19763668 -0.86508983 0.41280434
		 -0.0070873452 -0.91079229 4.2670035e-08 -0.076282993 -0.99708617 -1.2078029e-07 -0.27491799
		 -0.96146768 -0.41280431 -0.0070873266 -0.91079217 -0.46104017 -0.19763672 -0.86509055
		 -1.2078029e-07 -0.27491799 -0.96146768 4.2670035e-08 -0.076282993 -0.99708617 -0.46104017
		 -0.19763672 -0.86509055 -0.49415612 -0.41650674 -0.76310676 1.3372343e-07 -0.49933895
		 -0.86640674 -1.2078029e-07 -0.27491799 -0.96146768 0.71773118 -0.17734776 0.67335713
		 0.79785025 -0.015241438 0.60266304 0.92127854 -0.30340713 0.24328949 0.82876486 -0.43657625
		 0.3500717 0.79785025 -0.015241438 0.60266304 0.85445952 0.18153521 0.48676893 0.98664504
		 -0.12707649 0.10189737 0.92127854 -0.30340713 0.24328949 0.82876486 -0.43657625 0.3500717
		 0.92127854 -0.30340713 0.24328949 0.79785061 -0.59157318 -0.11608402 0.7177313 -0.69580472
		 0.026786471 0.92127854 -0.30340713 0.24328949 0.98664504 -0.12707649 0.10189737 0.85445964
		 -0.43568859 -0.28297392 0.79785061 -0.59157318 -0.11608402 0.7177313 -0.69580472
		 0.026786471 0.79785061 -0.59157318 -0.11608402 0.46063945 -0.80252528 -0.3791627
		 0.4143824 -0.88557315 -0.20987448 0.79785061 -0.59157318 -0.11608402 0.85445964 -0.43568859
		 -0.28297392 0.49332243 -0.66160792 -0.56471914 0.46063945 -0.80252528 -0.3791627
		 0.4143824 -0.88557315 -0.20987448 0.46063945 -0.80252528 -0.3791627 4.1847628e-08
		 -0.87974012 -0.47545493 -1.9267508e-09 -0.95503342 -0.29649839 0.46063945 -0.80252528
		 -0.3791627 0.49332243 -0.66160792 -0.56471914 3.5244305e-08 -0.74430031 -0.66784507
		 4.1847628e-08 -0.87974012 -0.47545493 -1.9267508e-09 -0.95503342 -0.29649839 4.1847628e-08
		 -0.87974012 -0.47545493 -0.46063957 -0.80252588 -0.37916154 -0.41438264 -0.88557315
		 -0.20987436 4.1847628e-08 -0.87974012 -0.47545493 3.5244305e-08 -0.74430031 -0.66784507
		 -0.49332255 -0.66160822 -0.56471896 -0.46063957 -0.80252588 -0.37916154 -0.41438264
		 -0.88557315 -0.20987436 -0.46063957 -0.80252588 -0.37916154 -0.79785073 -0.59157318
		 -0.11608366 -0.71773154 -0.6958046 0.026786774 -0.46063957 -0.80252588 -0.37916154
		 -0.49332255 -0.66160822 -0.56471896 -0.8544597 -0.43568841 -0.28297383 -0.79785073
		 -0.59157318 -0.11608366 -0.71773154 -0.6958046 0.026786774 -0.79785073 -0.59157318
		 -0.11608366 -0.92127872 -0.30340731 0.24328916 -0.82876474 -0.43657619 0.350072 -0.79785073
		 -0.59157318 -0.11608366 -0.8544597 -0.43568841 -0.28297383 -0.9866451 -0.12707639
		 0.10189744 -0.92127872 -0.30340731 0.24328916 -0.82876474 -0.43657619 0.350072 -0.92127872
		 -0.30340731 0.24328916 -0.79785073 -0.015241295 0.6026625 -0.71773124 -0.17734797
		 0.67335689 -0.92127872 -0.30340731 0.24328916 -0.9866451 -0.12707639 0.10189744 -0.85445958
		 0.18153518 0.48676866 -0.79785073 -0.015241295 0.6026625 -0.71773124 -0.17734797
		 0.67335689 -0.79785073 -0.015241295 0.6026625 -0.46063852 0.19571082 0.86574221 -0.41438216
		 0.01242066 0.91001815 -0.79785073 -0.015241295 0.6026625 -0.85445958 0.18153518 0.48676866
		 -0.49332219 0.40745473 0.7685141 -0.46063852 0.19571082 0.86574221 -0.41438216 0.01242066
		 0.91001815 -0.46063852 0.19571082 0.86574221 1.0880379e-07 0.27292496 0.9620353 -2.26393e-08
		 0.081880823 0.99664211 -0.46063852 0.19571082 0.86574221 -0.49332219 0.40745473 0.7685141
		 3.0061297e-08 0.49014693 0.87163985 1.0880379e-07 0.27292496 0.9620353 0.49332201
		 0.40745473 0.76851416 0.46063825 0.19571064 0.86574227 1.0880379e-07 0.27292496 0.9620353
		 3.0061297e-08 0.49014693 0.87163985 0.46063825 0.19571064 0.86574227 0.41438207 0.012420779
		 0.91001827 -2.26393e-08 0.081880823 0.99664211 1.0880379e-07 0.27292496 0.9620353
		 0.85590392 0.42806149 0.29015815 0.98831266 0.11892824 -0.095363416 0.98834294 0.11877497
		 -0.095240153 0.85593009 0.42791784 0.29029298 0.49415603 0.65436321 0.57237971 0.85590392
		 0.42806149 0.29015815 0.85593009 0.42791784 0.29029298 0.49417114 0.65422684 0.57252258
		 -3.1225706e-08 0.73719519 0.6756798 0.49415603 0.65436321 0.57237971 0.49417114 0.65422684
		 0.57252258 -8.1775111e-09 0.7370612 0.67582601 -0.494156 0.65436333 0.57237965 -3.1225706e-08
		 0.73719519 0.6756798 -8.1775111e-09 0.7370612 0.67582601 -0.49417132 0.6542266 0.57252276
		 -0.85590392 0.42806157 0.29015821 -0.494156 0.65436333 0.57237965 -0.49417132 0.6542266
		 0.57252276 -0.85593009 0.42791805 0.2902928 -0.98831272 0.11892829 -0.095363416 -0.85590392
		 0.42806157 0.29015821 -0.85593009 0.42791805 0.2902928 -0.98834294 0.11877509 -0.095240392
		 -0.85590392 -0.19020516 -0.4808853 -0.98831272 0.11892829 -0.095363416 -0.98834294
		 0.11877509 -0.095240392 -0.85593009 -0.19036792 -0.48077416 -0.49415633 -0.41650671
		 -0.76310664 -0.85590392 -0.19020516 -0.4808853 -0.85593009 -0.19036792 -0.48077416
		 -0.49417159 -0.41667658 -0.76300395 9.7580319e-08 -0.49933872 -0.86640686 -0.49415633
		 -0.41650671 -0.76310664 -0.49417159 -0.41667658 -0.76300395 -2.4532515e-08 -0.49951082
		 -0.86630762 0.49415639 -0.41650677 -0.76310658 9.7580319e-08 -0.49933872 -0.86640686;
	setAttr ".n[830:839]" -type "float3"  -2.4532515e-08 -0.49951082 -0.86630762
		 0.49417129 -0.41667616 -0.7630043 0.8559038 -0.19020525 -0.4808853 0.49415639 -0.41650677
		 -0.76310658 0.49417129 -0.41667616 -0.7630043 0.85593021 -0.19036795 -0.4807739 0.98834294
		 0.11877497 -0.095240153 0.98831266 0.11892824 -0.095363416 0.8559038 -0.19020525
		 -0.4808853 0.85593021 -0.19036795 -0.4807739;
	setAttr -s 216 -ch 840 ".fc[0:215]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 11 12 13
		f 4 4 -4 5 6
		mu 0 4 1 0 13 14
		f 4 7 -7 8 9
		mu 0 4 2 1 14 15
		f 4 10 -10 11 12
		mu 0 4 3 2 15 16
		f 4 13 -13 14 15
		mu 0 4 4 3 16 17
		f 4 16 -16 17 18
		mu 0 4 5 4 17 18
		f 4 19 -19 20 21
		mu 0 4 6 5 18 19
		f 4 22 -22 23 24
		mu 0 4 7 6 19 20
		f 4 25 -25 26 27
		mu 0 4 8 7 20 21
		f 4 28 -28 29 30
		mu 0 4 9 8 21 22
		f 4 31 -31 32 33
		mu 0 4 10 9 22 23
		f 4 34 -34 35 -2
		mu 0 4 11 10 23 12
		f 4 36 37 -1 38
		mu 0 4 92 134 11 0
		f 4 39 -39 -5 40
		mu 0 4 96 92 0 1
		f 4 41 -41 -8 42
		mu 0 4 100 96 1 2
		f 4 43 -43 -11 44
		mu 0 4 104 100 2 3
		f 4 45 -45 -14 46
		mu 0 4 108 104 3 4
		f 4 47 -47 -17 48
		mu 0 4 112 108 4 5
		f 4 49 -49 -20 50
		mu 0 4 116 112 5 6
		f 4 51 -51 -23 52
		mu 0 4 120 116 6 7
		f 4 53 -53 -26 54
		mu 0 4 124 120 7 8
		f 4 55 -55 -29 56
		mu 0 4 128 124 8 9
		f 4 57 -57 -32 58
		mu 0 4 132 128 9 10
		f 4 59 -59 -35 -38
		mu 0 4 134 132 10 11
		f 3 60 61 62
		mu 0 3 25 24 35
		f 3 63 -63 64
		mu 0 3 26 25 35
		f 3 65 -65 66
		mu 0 3 27 26 35
		f 3 67 -67 68
		mu 0 3 28 27 35
		f 3 69 -69 70
		mu 0 3 29 28 35
		f 3 71 -71 72
		mu 0 3 30 29 35
		f 3 73 -73 74
		mu 0 3 31 30 35
		f 3 75 -75 76
		mu 0 3 32 31 35
		f 3 77 -77 78
		mu 0 3 33 32 35
		f 3 79 -79 80
		mu 0 3 34 33 35
		f 3 81 -81 82
		mu 0 3 36 34 35
		f 3 83 -83 -62
		mu 0 3 24 36 35
		f 3 84 85 86
		mu 0 3 48 37 49
		f 3 87 88 -86
		mu 0 3 37 38 49
		f 3 89 90 -89
		mu 0 3 38 39 49
		f 3 91 92 -91
		mu 0 3 39 40 49
		f 3 93 94 -93
		mu 0 3 40 41 49
		f 3 95 96 -95
		mu 0 3 41 42 49
		f 3 97 98 -97
		mu 0 3 42 43 49
		f 3 99 100 -99
		mu 0 3 43 44 49
		f 3 101 102 -101
		mu 0 3 44 45 49
		f 3 103 104 -103
		mu 0 3 45 46 49
		f 3 105 106 -105
		mu 0 3 46 47 49
		f 3 107 -87 -107
		mu 0 3 47 48 49
		f 4 108 109 110 -85
		mu 0 4 48 51 55 37
		f 4 111 112 113 -110
		mu 0 4 53 90 94 54
		f 4 -111 114 115 -88
		mu 0 4 37 55 57 38
		f 4 -114 116 117 -115
		mu 0 4 54 94 98 56
		f 4 -116 118 119 -90
		mu 0 4 38 57 59 39
		f 4 -118 120 121 -119
		mu 0 4 56 98 102 58
		f 4 -120 122 123 -92
		mu 0 4 39 59 61 40
		f 4 -122 124 125 -123
		mu 0 4 58 102 106 60
		f 4 -124 126 127 -94
		mu 0 4 40 61 63 41
		f 4 -126 128 129 -127
		mu 0 4 60 106 110 62
		f 4 -128 130 131 -96
		mu 0 4 41 63 65 42
		f 4 -130 132 133 -131
		mu 0 4 62 110 114 64
		f 4 -132 134 135 -98
		mu 0 4 42 65 67 43
		f 4 -134 136 137 -135
		mu 0 4 64 114 118 66
		f 4 -136 138 139 -100
		mu 0 4 43 67 69 44
		f 4 -138 140 141 -139
		mu 0 4 66 118 122 68
		f 4 -140 142 143 -102
		mu 0 4 44 69 71 45
		f 4 -142 144 145 -143
		mu 0 4 68 122 126 70
		f 4 -144 146 147 -104
		mu 0 4 45 71 73 46
		f 4 -146 148 149 -147
		mu 0 4 70 126 130 72
		f 4 -148 150 151 -106
		mu 0 4 46 73 75 47
		f 4 -150 152 153 -151
		mu 0 4 72 130 136 74
		f 4 -112 154 -154 155
		mu 0 4 50 52 74 136
		f 4 -109 -108 -152 -155
		mu 0 4 51 48 47 75
		f 4 156 157 158 -84
		mu 0 4 24 76 87 36
		f 4 159 160 161 -158
		mu 0 4 76 182 180 87
		f 4 -160 162 163 164
		mu 0 4 182 76 77 140
		f 4 -157 -61 165 -163
		mu 0 4 76 24 25 77
		f 4 -164 166 167 168
		mu 0 4 140 77 78 144
		f 4 -166 -64 169 -167
		mu 0 4 77 25 26 78
		f 4 -168 170 171 172
		mu 0 4 144 78 79 148
		f 4 -170 -66 173 -171
		mu 0 4 78 26 27 79
		f 4 -172 174 175 176
		mu 0 4 148 79 80 152
		f 4 -174 -68 177 -175
		mu 0 4 79 27 28 80
		f 4 -176 178 179 180
		mu 0 4 152 80 81 156
		f 4 -178 -70 181 -179
		mu 0 4 80 28 29 81
		f 4 -180 182 183 184
		mu 0 4 156 81 82 160
		f 4 -182 -72 185 -183
		mu 0 4 81 29 30 82
		f 4 -184 186 187 188
		mu 0 4 160 82 83 164
		f 4 -186 -74 189 -187
		mu 0 4 82 30 31 83
		f 4 -188 190 191 192
		mu 0 4 164 83 84 168
		f 4 -190 -76 193 -191
		mu 0 4 83 31 32 84
		f 4 -192 194 195 196
		mu 0 4 168 84 85 172
		f 4 -194 -78 197 -195
		mu 0 4 84 32 33 85
		f 4 -196 198 199 200
		mu 0 4 172 85 86 176
		f 4 -198 -80 201 -199
		mu 0 4 85 33 34 86
		f 4 -200 202 -162 203
		mu 0 4 176 86 87 180
		f 4 -202 -82 -159 -203
		mu 0 4 86 34 36 87
		f 4 -18 204 205 206
		mu 0 4 18 17 158 162
		f 4 -15 207 208 -205
		mu 0 4 17 16 154 158
		f 4 -12 209 210 -208
		mu 0 4 16 15 150 154
		f 4 -9 211 212 -210
		mu 0 4 15 14 146 150
		f 4 -6 213 214 -212
		mu 0 4 14 13 142 146
		f 4 -3 215 216 -214
		mu 0 4 13 12 138 142
		f 4 -36 217 218 -216
		mu 0 4 12 23 184 138
		f 4 -33 219 220 -218
		mu 0 4 23 22 178 184
		f 4 -30 221 222 -220
		mu 0 4 22 21 174 178
		f 4 -27 223 224 -222
		mu 0 4 21 20 170 174
		f 4 -24 225 226 -224
		mu 0 4 20 19 166 170
		f 4 -21 -207 227 -226
		mu 0 4 19 18 162 166
		f 4 228 229 230 231
		mu 0 4 88 187 189 89
		f 4 232 233 234 -230
		mu 0 4 186 91 95 188
		f 4 235 236 237 238
		mu 0 4 183 210 211 137
		f 4 239 240 241 -237
		mu 0 4 210 139 143 211
		f 4 -232 242 243 244
		mu 0 4 88 89 229 230
		f 4 -234 245 -37 246
		mu 0 4 95 91 134 92
		f 4 247 248 249 -243
		mu 0 4 89 93 228 229
		f 4 250 -247 -40 251
		mu 0 4 99 95 92 96
		f 4 252 253 254 -249
		mu 0 4 93 97 227 228
		f 4 255 -252 -42 256
		mu 0 4 103 99 96 100
		f 4 257 258 259 -254
		mu 0 4 97 101 226 227
		f 4 260 -257 -44 261
		mu 0 4 107 103 100 104
		f 4 262 263 264 -259
		mu 0 4 101 105 225 226
		f 4 265 -262 -46 266
		mu 0 4 111 107 104 108
		f 4 267 268 269 -264
		mu 0 4 105 109 224 225
		f 4 270 -267 -48 271
		mu 0 4 115 111 108 112
		f 4 272 273 274 -269
		mu 0 4 109 113 223 224
		f 4 275 -272 -50 276
		mu 0 4 119 115 112 116
		f 4 277 278 279 -274
		mu 0 4 113 117 222 223
		f 4 280 -277 -52 281
		mu 0 4 123 119 116 120
		f 4 282 -279 283 284
		mu 0 4 234 222 117 121
		f 4 285 -282 -54 286
		mu 0 4 127 123 120 124
		f 4 287 288 289 -285
		mu 0 4 121 125 233 234
		f 4 290 -287 -56 291
		mu 0 4 131 127 124 128
		f 4 292 293 294 -289
		mu 0 4 125 129 232 233
		f 4 295 -292 -58 296
		mu 0 4 133 131 128 132
		f 4 297 -297 -60 -246
		mu 0 4 91 133 132 134
		f 4 298 -245 299 -294
		mu 0 4 129 135 231 232
		f 4 -239 300 -217 301
		mu 0 4 183 137 142 138
		f 4 -241 302 -165 303
		mu 0 4 143 139 182 140
		f 4 304 305 -215 -301
		mu 0 4 137 141 146 142
		f 4 306 -304 -169 307
		mu 0 4 147 143 140 144
		f 4 308 309 -213 -306
		mu 0 4 141 145 150 146
		f 4 310 -308 -173 311
		mu 0 4 151 147 144 148
		f 4 312 313 -211 -310
		mu 0 4 145 149 154 150
		f 4 314 -312 -177 315
		mu 0 4 155 151 148 152
		f 4 316 317 -209 -314
		mu 0 4 149 153 158 154
		f 4 318 -316 -181 319
		mu 0 4 159 155 152 156
		f 4 320 321 -206 -318
		mu 0 4 153 157 162 158
		f 4 322 -320 -185 323
		mu 0 4 163 159 156 160
		f 4 324 325 -228 -322
		mu 0 4 157 161 166 162
		f 4 326 -324 -189 327
		mu 0 4 167 163 160 164
		f 4 328 329 -227 -326
		mu 0 4 161 165 170 166
		f 4 330 -328 -193 331
		mu 0 4 171 167 164 168
		f 4 332 333 -225 -330
		mu 0 4 165 169 174 170
		f 4 334 -332 -197 335
		mu 0 4 175 171 168 172
		f 4 336 337 -223 -334
		mu 0 4 169 173 178 174
		f 4 338 -336 -201 339
		mu 0 4 179 175 172 176
		f 4 340 341 -221 -338
		mu 0 4 173 177 184 178
		f 4 342 -340 -204 343
		mu 0 4 181 179 176 180
		f 4 344 -344 -161 -303
		mu 0 4 139 181 180 182
		f 4 345 -302 -219 -342
		mu 0 4 177 183 138 184
		f 4 -231 346 347 -248
		mu 0 4 89 189 191 93
		f 4 -235 -251 348 -347
		mu 0 4 188 95 99 190
		f 4 -348 349 350 -253
		mu 0 4 93 191 193 97
		f 4 -349 -256 351 -350
		mu 0 4 190 99 103 192
		f 4 -351 352 353 -258
		mu 0 4 97 193 195 101
		f 4 -352 -261 354 -353
		mu 0 4 192 103 107 194
		f 4 -354 355 356 -263
		mu 0 4 101 195 197 105
		f 4 -355 -266 357 -356
		mu 0 4 194 107 111 196
		f 4 -357 358 359 -268
		mu 0 4 105 197 199 109
		f 4 -358 -271 360 -359
		mu 0 4 196 111 115 198
		f 4 -360 361 362 -273
		mu 0 4 109 199 201 113
		f 4 -361 -276 363 -362
		mu 0 4 198 115 119 200
		f 4 -363 364 365 -278
		mu 0 4 113 201 203 117
		f 4 -364 -281 366 -365
		mu 0 4 200 119 123 202
		f 4 -366 367 368 -284
		mu 0 4 117 203 205 121
		f 4 -367 -286 369 -368
		mu 0 4 202 123 127 204
		f 4 -369 370 371 -288
		mu 0 4 121 205 207 125
		f 4 -370 -291 372 -371
		mu 0 4 204 127 131 206
		f 4 -372 373 374 -293
		mu 0 4 125 207 209 129
		f 4 -373 -296 375 -374
		mu 0 4 206 131 133 208
		f 4 -233 376 -376 -298
		mu 0 4 91 186 208 133
		f 4 -229 -299 -375 -377
		mu 0 4 185 135 129 209
		f 4 -238 377 378 -305
		mu 0 4 137 211 212 141
		f 4 -242 -307 379 -378
		mu 0 4 211 143 147 212
		f 4 -379 380 381 -309
		mu 0 4 141 212 213 145
		f 4 -380 -311 382 -381
		mu 0 4 212 147 151 213
		f 4 -382 383 384 -313
		mu 0 4 145 213 214 149
		f 4 -383 -315 385 -384
		mu 0 4 213 151 155 214
		f 4 -385 386 387 -317
		mu 0 4 149 214 215 153
		f 4 -386 -319 388 -387
		mu 0 4 214 155 159 215
		f 4 -388 389 390 -321
		mu 0 4 153 215 216 157
		f 4 -389 -323 391 -390
		mu 0 4 215 159 163 216
		f 4 -391 392 393 -325
		mu 0 4 157 216 217 161
		f 4 -392 -327 394 -393
		mu 0 4 216 163 167 217
		f 4 -394 395 396 -329
		mu 0 4 161 217 218 165
		f 4 -395 -331 397 -396
		mu 0 4 217 167 171 218
		f 4 -397 398 399 -333
		mu 0 4 165 218 219 169
		f 4 -398 -335 400 -399
		mu 0 4 218 171 175 219
		f 4 -400 401 402 -337
		mu 0 4 169 219 220 173
		f 4 -401 -339 403 -402
		mu 0 4 219 175 179 220
		f 4 -403 404 405 -341
		mu 0 4 173 220 221 177
		f 4 -404 -343 406 -405
		mu 0 4 220 179 181 221
		f 4 -240 407 -407 -345
		mu 0 4 139 210 221 181
		f 4 -236 -346 -406 -408
		mu 0 4 210 183 177 221
		f 4 -280 408 -141 409
		mu 0 4 223 222 122 118
		f 4 -275 -410 -137 410
		mu 0 4 224 223 118 114
		f 4 -270 -411 -133 411
		mu 0 4 225 224 114 110
		f 4 -265 -412 -129 412
		mu 0 4 226 225 110 106
		f 4 -260 -413 -125 413
		mu 0 4 227 226 106 102
		f 4 -255 -414 -121 414
		mu 0 4 228 227 102 98
		f 4 -250 -415 -117 415
		mu 0 4 229 228 98 94
		f 4 -244 -416 -113 416
		mu 0 4 230 229 94 90
		f 4 -300 -417 -156 417
		mu 0 4 232 231 50 136
		f 4 -295 -418 -153 418
		mu 0 4 233 232 136 130
		f 4 -290 -419 -149 419
		mu 0 4 234 233 130 126
		f 4 -409 -283 -420 -145
		mu 0 4 122 222 234 126;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dsm" 2;
createNode parentConstraint -n "head_geo_parentConstraint1" -p "head_geo";
	rename -uid "EC22A0F0-4503-0AE5-EDF9-AD8BB7D4D595";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Head_RK_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.53454895377752187 0.00021553435896493056 
		-0.0068322099235450301 ;
	setAttr ".tg[0].tor" -type "double3" 2.6957101960956183e-10 -89.723986684826983 
		-140.29167965748084 ;
	setAttr ".lr" -type "double3" -2.7004817578434124e-10 -6.361109362927032e-15 1.4990685125689864e-26 ;
	setAttr ".rst" -type "double3" -5.2041704279304213e-18 -3.5527136788005009e-15 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -2.7004817578434124e-10 -6.361109362927032e-15 1.4990685125689864e-26 ;
	setAttr -k on ".w0";
createNode scaleConstraint -n "head_geo_scaleConstraint1" -p "head_geo";
	rename -uid "1AA8895B-41DD-1D3E-A0E3-3E9418A13134";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Arm_Head_RK_JNTW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F564B971-4D16-4505-F185-579430319064";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode RedshiftOptions -s -n "redshiftOptions";
	rename -uid "7936B402-4E64-7C56-22CF-FA8FE90A5B8A";
	setAttr ".version" 6;
	setAttr ".unifiedFilterSize" 2.5;
	setAttr ".denoiseEngine" 3;
	setAttr ".GIEnabled" yes;
	setAttr ".primaryGIEngine" 4;
	setAttr ".secondaryGIEngine" 2;
	setAttr ".numGIBounces" 4;
	setAttr ".shadingNormalAdaptionTechnique" 1;
	setAttr ".enableLegacyBlackBodyAndDispersionTechnique" no;
	setAttr ".enableLegacyMotionBlurSampling" no;
	setAttr ".enableLegacySSSGI" no;
	setAttr ".enableLegacyVolumePhase" no;
	setAttr ".enableLegacyDispersionNestedDielectricsTechnique" no;
	setAttr ".enableLegacyTimeBehavior" no;
	setAttr ".enableOptiXRTOnSupportedGPUs" yes;
	setAttr ".enableAutomaticSampling" yes;
createNode RedshiftPostEffects -n "defaultRedshiftPostEffects";
	rename -uid "06D11388-4EAC-BAC0-C29B-41AADDF45C62";
	setAttr ".v" 2;
	setAttr -s 2 ".cr[1]" -type "float2" 1 1;
	setAttr -s 2 ".cg[1]" -type "float2" 1 1;
	setAttr -s 2 ".cb[1]" -type "float2" 1 1;
	setAttr -s 2 ".cl[1]" -type "float2" 1 1;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C5FAFEC8-41A2-401E-2D20-36BF80C6C10F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6FCA2301-4619-A9B6-9403-798C39DEF3D9";
createNode displayLayerManager -n "layerManager";
	rename -uid "ECE26C52-4D30-DFED-5F8B-B8A7D6EBB0F9";
	setAttr ".cdl" 3;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "F0E19202-407A-C04D-AE78-C2A57604FA91";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F2F8C11A-41A5-FA5C-6561-1184C5E718FB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "04266A8E-4107-4A3E-6FD7-04802164D9F5";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
	rename -uid "67C31D8F-4007-2077-D22C-D19AA79B7210";
	setAttr ".c" -type "float3" 0.54119998 0.81999999 0.81999999 ;
createNode shadingEngine -n "base_geoSG";
	rename -uid "71F10DDE-4FDB-AA5F-A7CD-EE9FDB40AB8E";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "EB450A8B-4AD2-AFE9-F055-47B9B303018E";
createNode displayLayer -n "geo_layer";
	rename -uid "D997D5BE-4B3E-B28D-0D90-A8930195D086";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 1;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "CEDF303E-40A7-9D7B-C38C-779C7ADE71CB";
	setAttr ".version" -type "string" "5.3.5.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A8DF165C-4C9E-C8B9-5616-748619D19CB0";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C252A0FC-4304-D2B2-20E9-B7AB4249A63B";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "61D42F37-4FA1-8AA9-7B25-B48311EC07C9";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "D57A8E4B-4223-8417-83BC-ABB447C270A6";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode makeNurbCircle -n "makeNurbCircle2";
	rename -uid "A0EC5B11-489F-40DC-97ED-7CB2D8910765";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "99B55798-4BE6-EEB6-2B5A-D488CFDFF258";
createNode transformGeometry -n "transformGeometry1";
	rename -uid "460072FC-4D96-08A4-12D4-67AFEDEA84C0";
	setAttr ".txf" -type "matrix" 3.5600076217057124 0 0 0 0 3.5600076217057124 0 0
		 0 0 3.5600076217057124 0 0 0 0 1;
createNode displayLayer -n "jnt_layer";
	rename -uid "50A048BC-4113-C846-7CA6-F28212095355";
	setAttr ".v" no;
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 2;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "D42A847D-4019-B3E8-CCF6-66ABD496A052";
	setAttr ".txf" -type "matrix" 0 2.3375801669428471 0 0 -2.3375801669428471 0 0 0
		 0 0 2.3375801669428471 0 0 0 0 1;
createNode reverse -n "Arm_IKFK_REV";
	rename -uid "1565A8AB-4233-4547-41FB-67B7AF116C50";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "EAEC8B47-41BD-314C-9405-588215348F78";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1404.4238840304033 -654.84068427269631 ;
	setAttr ".tgi[0].vh" -type "double2" 2509.8616747155766 1285.6354290959007 ;
	setAttr -s 10 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 641.0389404296875;
	setAttr ".tgi[0].ni[0].y" 507.65023803710938;
	setAttr ".tgi[0].ni[0].nvs" 18306;
	setAttr ".tgi[0].ni[1].x" 311.27700805664062;
	setAttr ".tgi[0].ni[1].y" 635.03118896484375;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 187.41493225097656;
	setAttr ".tgi[0].ni[2].y" -124.91860961914062;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 1997.6190185546875;
	setAttr ".tgi[0].ni[3].y" 190.47618103027344;
	setAttr ".tgi[0].ni[3].nvs" 18305;
	setAttr ".tgi[0].ni[4].x" 1333.333251953125;
	setAttr ".tgi[0].ni[4].y" 190.47618103027344;
	setAttr ".tgi[0].ni[4].nvs" 18305;
	setAttr ".tgi[0].ni[5].x" 1111.9046630859375;
	setAttr ".tgi[0].ni[5].y" 190.47618103027344;
	setAttr ".tgi[0].ni[5].nvs" 18305;
	setAttr ".tgi[0].ni[6].x" 1554.7618408203125;
	setAttr ".tgi[0].ni[6].y" 190.47618103027344;
	setAttr ".tgi[0].ni[6].nvs" 18305;
	setAttr ".tgi[0].ni[7].x" 1776.1904296875;
	setAttr ".tgi[0].ni[7].y" 190.47618103027344;
	setAttr ".tgi[0].ni[7].nvs" 18305;
	setAttr ".tgi[0].ni[8].x" 2219.047607421875;
	setAttr ".tgi[0].ni[8].y" 190.47618103027344;
	setAttr ".tgi[0].ni[8].nvs" 18305;
	setAttr ".tgi[0].ni[9].x" -115.71428680419922;
	setAttr ".tgi[0].ni[9].y" 110;
	setAttr ".tgi[0].ni[9].nvs" 18306;
createNode makeNurbCircle -n "makeNurbCircle3";
	rename -uid "FF6D4DC6-4CB4-91A8-E0B7-318AE42EB432";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "67CF4735-4DC9-E30B-4567-C48B35DD4D52";
	setAttr ".txf" -type "matrix" 0 2.637021440520213 0 0 -2.637021440520213 0 0 0 0 0 2.637021440520213 0
		 0 0 0 1;
createNode displayLayer -n "ctrl_layer";
	rename -uid "696E7A39-40C6-EC62-6994-A8A640284AAB";
	setAttr ".ufem" -type "stringArray" 0  ;
	setAttr ".do" 3;
createNode makeNurbCircle -n "makeNurbCircle4";
	rename -uid "0630757E-4B49-3888-0310-238A04C2EB77";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "5C21B3E1-45ED-80A8-7B68-B0A19F321A6D";
	setAttr ".txf" -type "matrix" 0 2.5948380196726282 0 0 -2.5948380196726282 0 0 0
		 0 0 2.5948380196726282 0 0 0 0 1;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "7A14FD43-4B12-5C84-FC8D-E4B3C8471775";
	setAttr ".sst" -type "string" "";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8877E2EC-4850-55AA-FF7D-B99AA9F517B2";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1774\n            -height 1032\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1774\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1774\\n    -height 1032\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "39909E70-417B-F043-BA90-A590EEB12A65";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "jnt_layer.di" "ROOT.do";
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.csx" "Arm_Base_RK_JNT.sx";
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.csy" "Arm_Base_RK_JNT.sy";
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.csz" "Arm_Base_RK_JNT.sz";
connectAttr "ROOT.s" "Arm_Base_RK_JNT.is";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.ctx" "Arm_Base_RK_JNT.tx";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.cty" "Arm_Base_RK_JNT.ty";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.ctz" "Arm_Base_RK_JNT.tz";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.crx" "Arm_Base_RK_JNT.rx";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.cry" "Arm_Base_RK_JNT.ry";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.crz" "Arm_Base_RK_JNT.rz";
connectAttr "Arm_Base_RK_JNT.s" "Arm_Upper_RK_JNT.is";
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.csx" "Arm_Upper_RK_JNT.sx";
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.csy" "Arm_Upper_RK_JNT.sy";
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.csz" "Arm_Upper_RK_JNT.sz";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.ctx" "Arm_Upper_RK_JNT.tx";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.cty" "Arm_Upper_RK_JNT.ty";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.ctz" "Arm_Upper_RK_JNT.tz";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.crx" "Arm_Upper_RK_JNT.rx";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.cry" "Arm_Upper_RK_JNT.ry";
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.crz" "Arm_Upper_RK_JNT.rz";
connectAttr "Arm_Upper_RK_JNT.s" "Arm_Head_RK_JNT.is";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.ctx" "Arm_Head_RK_JNT.tx";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.cty" "Arm_Head_RK_JNT.ty";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.ctz" "Arm_Head_RK_JNT.tz";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.crx" "Arm_Head_RK_JNT.rx";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.cry" "Arm_Head_RK_JNT.ry";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.crz" "Arm_Head_RK_JNT.rz";
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.csx" "Arm_Head_RK_JNT.sx";
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.csy" "Arm_Head_RK_JNT.sy";
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.csz" "Arm_Head_RK_JNT.sz";
connectAttr "Arm_Head_RK_JNT.ro" "Arm_Head_RK_JNT_parentConstraint1.cro";
connectAttr "Arm_Head_RK_JNT.pim" "Arm_Head_RK_JNT_parentConstraint1.cpim";
connectAttr "Arm_Head_RK_JNT.rp" "Arm_Head_RK_JNT_parentConstraint1.crp";
connectAttr "Arm_Head_RK_JNT.rpt" "Arm_Head_RK_JNT_parentConstraint1.crt";
connectAttr "Arm_Head_RK_JNT.jo" "Arm_Head_RK_JNT_parentConstraint1.cjo";
connectAttr "Arm_Head_FK_JNT.t" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tt";
connectAttr "Arm_Head_FK_JNT.rp" "Arm_Head_RK_JNT_parentConstraint1.tg[0].trp";
connectAttr "Arm_Head_FK_JNT.rpt" "Arm_Head_RK_JNT_parentConstraint1.tg[0].trt";
connectAttr "Arm_Head_FK_JNT.r" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tr";
connectAttr "Arm_Head_FK_JNT.ro" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tro";
connectAttr "Arm_Head_FK_JNT.s" "Arm_Head_RK_JNT_parentConstraint1.tg[0].ts";
connectAttr "Arm_Head_FK_JNT.pm" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Head_FK_JNT.jo" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Head_FK_JNT.ssc" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Head_FK_JNT.is" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tis";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.w0" "Arm_Head_RK_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Head_IK_JNT.t" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tt";
connectAttr "Arm_Head_IK_JNT.rp" "Arm_Head_RK_JNT_parentConstraint1.tg[1].trp";
connectAttr "Arm_Head_IK_JNT.rpt" "Arm_Head_RK_JNT_parentConstraint1.tg[1].trt";
connectAttr "Arm_Head_IK_JNT.r" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tr";
connectAttr "Arm_Head_IK_JNT.ro" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tro";
connectAttr "Arm_Head_IK_JNT.s" "Arm_Head_RK_JNT_parentConstraint1.tg[1].ts";
connectAttr "Arm_Head_IK_JNT.pm" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tpm";
connectAttr "Arm_Head_IK_JNT.jo" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tjo";
connectAttr "Arm_Head_IK_JNT.ssc" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tsc";
connectAttr "Arm_Head_IK_JNT.is" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tis";
connectAttr "Arm_Head_RK_JNT_parentConstraint1.w1" "Arm_Head_RK_JNT_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Head_RK_JNT_parentConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Head_RK_JNT_parentConstraint1.w1";
connectAttr "Arm_Head_RK_JNT.ssc" "Arm_Head_RK_JNT_scaleConstraint1.tsc";
connectAttr "Arm_Head_RK_JNT.pim" "Arm_Head_RK_JNT_scaleConstraint1.cpim";
connectAttr "Arm_Head_FK_JNT.s" "Arm_Head_RK_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Head_FK_JNT.pm" "Arm_Head_RK_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.w0" "Arm_Head_RK_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_Head_IK_JNT.s" "Arm_Head_RK_JNT_scaleConstraint1.tg[1].ts";
connectAttr "Arm_Head_IK_JNT.pm" "Arm_Head_RK_JNT_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.w1" "Arm_Head_RK_JNT_scaleConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Head_RK_JNT_scaleConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Head_RK_JNT_scaleConstraint1.w1";
connectAttr "Arm_Upper_RK_JNT.ro" "Arm_Upper_RK_JNT_parentConstraint1.cro";
connectAttr "Arm_Upper_RK_JNT.pim" "Arm_Upper_RK_JNT_parentConstraint1.cpim";
connectAttr "Arm_Upper_RK_JNT.rp" "Arm_Upper_RK_JNT_parentConstraint1.crp";
connectAttr "Arm_Upper_RK_JNT.rpt" "Arm_Upper_RK_JNT_parentConstraint1.crt";
connectAttr "Arm_Upper_RK_JNT.jo" "Arm_Upper_RK_JNT_parentConstraint1.cjo";
connectAttr "Arm_Upper_FK_JNT.t" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tt";
connectAttr "Arm_Upper_FK_JNT.rp" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].trp"
		;
connectAttr "Arm_Upper_FK_JNT.rpt" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].trt"
		;
connectAttr "Arm_Upper_FK_JNT.r" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tr";
connectAttr "Arm_Upper_FK_JNT.ro" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tro"
		;
connectAttr "Arm_Upper_FK_JNT.s" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].ts";
connectAttr "Arm_Upper_FK_JNT.pm" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Upper_FK_JNT.jo" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tjo"
		;
connectAttr "Arm_Upper_FK_JNT.ssc" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tsc"
		;
connectAttr "Arm_Upper_FK_JNT.is" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tis"
		;
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.w0" "Arm_Upper_RK_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Upper_IK_JNT.t" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tt";
connectAttr "Arm_Upper_IK_JNT.rp" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].trp"
		;
connectAttr "Arm_Upper_IK_JNT.rpt" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].trt"
		;
connectAttr "Arm_Upper_IK_JNT.r" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tr";
connectAttr "Arm_Upper_IK_JNT.ro" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tro"
		;
connectAttr "Arm_Upper_IK_JNT.s" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].ts";
connectAttr "Arm_Upper_IK_JNT.pm" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tpm"
		;
connectAttr "Arm_Upper_IK_JNT.jo" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tjo"
		;
connectAttr "Arm_Upper_IK_JNT.ssc" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tsc"
		;
connectAttr "Arm_Upper_IK_JNT.is" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tis"
		;
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.w1" "Arm_Upper_RK_JNT_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Upper_RK_JNT_parentConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Upper_RK_JNT_parentConstraint1.w1";
connectAttr "Arm_Upper_RK_JNT.ssc" "Arm_Upper_RK_JNT_scaleConstraint1.tsc";
connectAttr "Arm_Upper_RK_JNT.pim" "Arm_Upper_RK_JNT_scaleConstraint1.cpim";
connectAttr "Arm_Upper_FK_JNT.s" "Arm_Upper_RK_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Upper_FK_JNT.pm" "Arm_Upper_RK_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.w0" "Arm_Upper_RK_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_Upper_IK_JNT.s" "Arm_Upper_RK_JNT_scaleConstraint1.tg[1].ts";
connectAttr "Arm_Upper_IK_JNT.pm" "Arm_Upper_RK_JNT_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.w1" "Arm_Upper_RK_JNT_scaleConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Upper_RK_JNT_scaleConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Upper_RK_JNT_scaleConstraint1.w1";
connectAttr "Arm_Base_RK_JNT.ro" "Arm_Base_RK_JNT_parentConstraint1.cro";
connectAttr "Arm_Base_RK_JNT.pim" "Arm_Base_RK_JNT_parentConstraint1.cpim";
connectAttr "Arm_Base_RK_JNT.rp" "Arm_Base_RK_JNT_parentConstraint1.crp";
connectAttr "Arm_Base_RK_JNT.rpt" "Arm_Base_RK_JNT_parentConstraint1.crt";
connectAttr "Arm_Base_RK_JNT.jo" "Arm_Base_RK_JNT_parentConstraint1.cjo";
connectAttr "Arm_Base_FK_JNT.t" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tt";
connectAttr "Arm_Base_FK_JNT.rp" "Arm_Base_RK_JNT_parentConstraint1.tg[0].trp";
connectAttr "Arm_Base_FK_JNT.rpt" "Arm_Base_RK_JNT_parentConstraint1.tg[0].trt";
connectAttr "Arm_Base_FK_JNT.r" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tr";
connectAttr "Arm_Base_FK_JNT.ro" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tro";
connectAttr "Arm_Base_FK_JNT.s" "Arm_Base_RK_JNT_parentConstraint1.tg[0].ts";
connectAttr "Arm_Base_FK_JNT.pm" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Base_FK_JNT.jo" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Base_FK_JNT.ssc" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Base_FK_JNT.is" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tis";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.w0" "Arm_Base_RK_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "Arm_Base_IK_JNT.t" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tt";
connectAttr "Arm_Base_IK_JNT.rp" "Arm_Base_RK_JNT_parentConstraint1.tg[1].trp";
connectAttr "Arm_Base_IK_JNT.rpt" "Arm_Base_RK_JNT_parentConstraint1.tg[1].trt";
connectAttr "Arm_Base_IK_JNT.r" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tr";
connectAttr "Arm_Base_IK_JNT.ro" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tro";
connectAttr "Arm_Base_IK_JNT.s" "Arm_Base_RK_JNT_parentConstraint1.tg[1].ts";
connectAttr "Arm_Base_IK_JNT.pm" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tpm";
connectAttr "Arm_Base_IK_JNT.jo" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tjo";
connectAttr "Arm_Base_IK_JNT.ssc" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tsc";
connectAttr "Arm_Base_IK_JNT.is" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tis";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.w1" "Arm_Base_RK_JNT_parentConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Base_RK_JNT_parentConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Base_RK_JNT_parentConstraint1.w1";
connectAttr "Arm_Base_RK_JNT.ssc" "Arm_Base_RK_JNT_scaleConstraint1.tsc";
connectAttr "Arm_Base_RK_JNT.pim" "Arm_Base_RK_JNT_scaleConstraint1.cpim";
connectAttr "Arm_Base_FK_JNT.s" "Arm_Base_RK_JNT_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Base_FK_JNT.pm" "Arm_Base_RK_JNT_scaleConstraint1.tg[0].tpm";
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.w0" "Arm_Base_RK_JNT_scaleConstraint1.tg[0].tw"
		;
connectAttr "Arm_Base_IK_JNT.s" "Arm_Base_RK_JNT_scaleConstraint1.tg[1].ts";
connectAttr "Arm_Base_IK_JNT.pm" "Arm_Base_RK_JNT_scaleConstraint1.tg[1].tpm";
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.w1" "Arm_Base_RK_JNT_scaleConstraint1.tg[1].tw"
		;
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Base_RK_JNT_scaleConstraint1.w0";
connectAttr "Arm_IKFK_REV.ox" "Arm_Base_RK_JNT_scaleConstraint1.w1";
connectAttr "ROOT.s" "Arm_Base_IK_JNT.is";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.ctx" "Arm_Base_IK_JNT.tx";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.cty" "Arm_Base_IK_JNT.ty";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.ctz" "Arm_Base_IK_JNT.tz";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.crx" "Arm_Base_IK_JNT.rx";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.cry" "Arm_Base_IK_JNT.ry";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.crz" "Arm_Base_IK_JNT.rz";
connectAttr "Arm_Base_IK_JNT.s" "Arm_Upper_IK_JNT.is";
connectAttr "Arm_Upper_IK_JNT.s" "Arm_Head_IK_JNT.is";
connectAttr "Arm_Head_IK_JNT_orientConstraint1.crx" "Arm_Head_IK_JNT.rx";
connectAttr "Arm_Head_IK_JNT_orientConstraint1.cry" "Arm_Head_IK_JNT.ry";
connectAttr "Arm_Head_IK_JNT_orientConstraint1.crz" "Arm_Head_IK_JNT.rz";
connectAttr "Arm_Head_IK_JNT.ro" "Arm_Head_IK_JNT_orientConstraint1.cro";
connectAttr "Arm_Head_IK_JNT.pim" "Arm_Head_IK_JNT_orientConstraint1.cpim";
connectAttr "Arm_Head_IK_JNT.jo" "Arm_Head_IK_JNT_orientConstraint1.cjo";
connectAttr "Arm_Head_IK_JNT.is" "Arm_Head_IK_JNT_orientConstraint1.is";
connectAttr "Head_IK_CTRL.r" "Arm_Head_IK_JNT_orientConstraint1.tg[0].tr";
connectAttr "Head_IK_CTRL.ro" "Arm_Head_IK_JNT_orientConstraint1.tg[0].tro";
connectAttr "Head_IK_CTRL.pm" "Arm_Head_IK_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Arm_Head_IK_JNT_orientConstraint1.w0" "Arm_Head_IK_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Arm_Head_IK_JNT.tx" "effector1.tx";
connectAttr "Arm_Head_IK_JNT.ty" "effector1.ty";
connectAttr "Arm_Head_IK_JNT.tz" "effector1.tz";
connectAttr "Arm_Head_IK_JNT.opm" "effector1.opm";
connectAttr "Arm_Base_IK_JNT.ro" "Arm_Base_IK_JNT_parentConstraint1.cro";
connectAttr "Arm_Base_IK_JNT.pim" "Arm_Base_IK_JNT_parentConstraint1.cpim";
connectAttr "Arm_Base_IK_JNT.rp" "Arm_Base_IK_JNT_parentConstraint1.crp";
connectAttr "Arm_Base_IK_JNT.rpt" "Arm_Base_IK_JNT_parentConstraint1.crt";
connectAttr "Arm_Base_IK_JNT.jo" "Arm_Base_IK_JNT_parentConstraint1.cjo";
connectAttr "Base_IK_CTRL.t" "Arm_Base_IK_JNT_parentConstraint1.tg[0].tt";
connectAttr "Base_IK_CTRL.rp" "Arm_Base_IK_JNT_parentConstraint1.tg[0].trp";
connectAttr "Base_IK_CTRL.rpt" "Arm_Base_IK_JNT_parentConstraint1.tg[0].trt";
connectAttr "Base_IK_CTRL.r" "Arm_Base_IK_JNT_parentConstraint1.tg[0].tr";
connectAttr "Base_IK_CTRL.ro" "Arm_Base_IK_JNT_parentConstraint1.tg[0].tro";
connectAttr "Base_IK_CTRL.s" "Arm_Base_IK_JNT_parentConstraint1.tg[0].ts";
connectAttr "Base_IK_CTRL.pm" "Arm_Base_IK_JNT_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Base_IK_JNT_parentConstraint1.w0" "Arm_Base_IK_JNT_parentConstraint1.tg[0].tw"
		;
connectAttr "ROOT.s" "Base_JNT.is";
connectAttr "Base_JNT_orientConstraint1.crx" "Base_JNT.rx";
connectAttr "Base_JNT_orientConstraint1.cry" "Base_JNT.ry";
connectAttr "Base_JNT_orientConstraint1.crz" "Base_JNT.rz";
connectAttr "Base_JNT.ro" "Base_JNT_orientConstraint1.cro";
connectAttr "Base_JNT.pim" "Base_JNT_orientConstraint1.cpim";
connectAttr "Base_JNT.jo" "Base_JNT_orientConstraint1.cjo";
connectAttr "Base_JNT.is" "Base_JNT_orientConstraint1.is";
connectAttr "Base_CTRL.r" "Base_JNT_orientConstraint1.tg[0].tr";
connectAttr "Base_CTRL.ro" "Base_JNT_orientConstraint1.tg[0].tro";
connectAttr "Base_CTRL.pm" "Base_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Base_JNT_orientConstraint1.w0" "Base_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "ROOT.s" "Arm_Base_FK_JNT.is";
connectAttr "Arm_Base_FK_JNT_orientConstraint1.crx" "Arm_Base_FK_JNT.rx";
connectAttr "Arm_Base_FK_JNT_orientConstraint1.cry" "Arm_Base_FK_JNT.ry";
connectAttr "Arm_Base_FK_JNT_orientConstraint1.crz" "Arm_Base_FK_JNT.rz";
connectAttr "Arm_Base_FK_JNT.s" "Arm_Upper_FK_JNT.is";
connectAttr "Arm_Upper_FK_JNT_orientConstraint1.crx" "Arm_Upper_FK_JNT.rx";
connectAttr "Arm_Upper_FK_JNT_orientConstraint1.cry" "Arm_Upper_FK_JNT.ry";
connectAttr "Arm_Upper_FK_JNT_orientConstraint1.crz" "Arm_Upper_FK_JNT.rz";
connectAttr "Arm_Upper_FK_JNT.s" "Arm_Head_FK_JNT.is";
connectAttr "Arm_Head_FK_JNT_orientConstraint1.crx" "Arm_Head_FK_JNT.rx";
connectAttr "Arm_Head_FK_JNT_orientConstraint1.cry" "Arm_Head_FK_JNT.ry";
connectAttr "Arm_Head_FK_JNT_orientConstraint1.crz" "Arm_Head_FK_JNT.rz";
connectAttr "Arm_Head_FK_JNT.ro" "Arm_Head_FK_JNT_orientConstraint1.cro";
connectAttr "Arm_Head_FK_JNT.pim" "Arm_Head_FK_JNT_orientConstraint1.cpim";
connectAttr "Arm_Head_FK_JNT.jo" "Arm_Head_FK_JNT_orientConstraint1.cjo";
connectAttr "Arm_Head_FK_JNT.is" "Arm_Head_FK_JNT_orientConstraint1.is";
connectAttr "Arm_Head_FK_CTRL.r" "Arm_Head_FK_JNT_orientConstraint1.tg[0].tr";
connectAttr "Arm_Head_FK_CTRL.ro" "Arm_Head_FK_JNT_orientConstraint1.tg[0].tro";
connectAttr "Arm_Head_FK_CTRL.pm" "Arm_Head_FK_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Arm_Head_FK_JNT_orientConstraint1.w0" "Arm_Head_FK_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Arm_Upper_FK_JNT.ro" "Arm_Upper_FK_JNT_orientConstraint1.cro";
connectAttr "Arm_Upper_FK_JNT.pim" "Arm_Upper_FK_JNT_orientConstraint1.cpim";
connectAttr "Arm_Upper_FK_JNT.jo" "Arm_Upper_FK_JNT_orientConstraint1.cjo";
connectAttr "Arm_Upper_FK_JNT.is" "Arm_Upper_FK_JNT_orientConstraint1.is";
connectAttr "Arm_Upper_FK_CTRL.r" "Arm_Upper_FK_JNT_orientConstraint1.tg[0].tr";
connectAttr "Arm_Upper_FK_CTRL.ro" "Arm_Upper_FK_JNT_orientConstraint1.tg[0].tro"
		;
connectAttr "Arm_Upper_FK_CTRL.pm" "Arm_Upper_FK_JNT_orientConstraint1.tg[0].tpm"
		;
connectAttr "Arm_Upper_FK_JNT_orientConstraint1.w0" "Arm_Upper_FK_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "Arm_Base_FK_JNT.ro" "Arm_Base_FK_JNT_orientConstraint1.cro";
connectAttr "Arm_Base_FK_JNT.pim" "Arm_Base_FK_JNT_orientConstraint1.cpim";
connectAttr "Arm_Base_FK_JNT.jo" "Arm_Base_FK_JNT_orientConstraint1.cjo";
connectAttr "Arm_Base_FK_JNT.is" "Arm_Base_FK_JNT_orientConstraint1.is";
connectAttr "Arm_Base_FK_CTRL.r" "Arm_Base_FK_JNT_orientConstraint1.tg[0].tr";
connectAttr "Arm_Base_FK_CTRL.ro" "Arm_Base_FK_JNT_orientConstraint1.tg[0].tro";
connectAttr "Arm_Base_FK_CTRL.pm" "Arm_Base_FK_JNT_orientConstraint1.tg[0].tpm";
connectAttr "Arm_Base_FK_JNT_orientConstraint1.w0" "Arm_Base_FK_JNT_orientConstraint1.tg[0].tw"
		;
connectAttr "ctrl_layer.di" "Controls.do";
connectAttr "Transform_CTRL.ArmIKFK" "Arm_Base_FK_CTRL_GRP.v";
connectAttr "transformGeometry2.og" "Arm_Base_FK_CTRLShape.cr";
connectAttr "Arm_IKFK_REV.ox" "Main_IK_CTRL_GRP.v";
connectAttr "transformGeometry1.og" "IK_CTRLShape.cr";
connectAttr "Arm_Base_IK_JNT.msg" "ikHandle1.hsj";
connectAttr "effector1.hp" "ikHandle1.hee";
connectAttr "ikRPsolver.msg" "ikHandle1.hsv";
connectAttr "ikHandle1_poleVectorConstraint1.ctx" "ikHandle1.pvx";
connectAttr "ikHandle1_poleVectorConstraint1.cty" "ikHandle1.pvy";
connectAttr "ikHandle1_poleVectorConstraint1.ctz" "ikHandle1.pvz";
connectAttr "ikHandle1.pim" "ikHandle1_poleVectorConstraint1.cpim";
connectAttr "Arm_Base_IK_JNT.pm" "ikHandle1_poleVectorConstraint1.ps";
connectAttr "Arm_Base_IK_JNT.t" "ikHandle1_poleVectorConstraint1.crp";
connectAttr "PV_CTRL.t" "ikHandle1_poleVectorConstraint1.tg[0].tt";
connectAttr "PV_CTRL.rp" "ikHandle1_poleVectorConstraint1.tg[0].trp";
connectAttr "PV_CTRL.rpt" "ikHandle1_poleVectorConstraint1.tg[0].trt";
connectAttr "PV_CTRL.pm" "ikHandle1_poleVectorConstraint1.tg[0].tpm";
connectAttr "ikHandle1_poleVectorConstraint1.w0" "ikHandle1_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "transformGeometry4.og" "Head_IK_CTRLShape.cr";
connectAttr "transformGeometry3.og" "Base_CTRLShape.cr";
connectAttr "geo_layer.di" "base_geo.do";
connectAttr "base_geo_parentConstraint1.ctx" "base_geo.tx";
connectAttr "base_geo_parentConstraint1.cty" "base_geo.ty";
connectAttr "base_geo_parentConstraint1.ctz" "base_geo.tz";
connectAttr "base_geo_parentConstraint1.crx" "base_geo.rx";
connectAttr "base_geo_parentConstraint1.cry" "base_geo.ry";
connectAttr "base_geo_parentConstraint1.crz" "base_geo.rz";
connectAttr "base_geo_scaleConstraint1.csx" "base_geo.sx";
connectAttr "base_geo_scaleConstraint1.csy" "base_geo.sy";
connectAttr "base_geo_scaleConstraint1.csz" "base_geo.sz";
connectAttr "base_geoShapeOrig.w" "base_geoShape.i";
connectAttr "base_geo.ro" "base_geo_parentConstraint1.cro";
connectAttr "base_geo.pim" "base_geo_parentConstraint1.cpim";
connectAttr "base_geo.rp" "base_geo_parentConstraint1.crp";
connectAttr "base_geo.rpt" "base_geo_parentConstraint1.crt";
connectAttr "Base_JNT.t" "base_geo_parentConstraint1.tg[0].tt";
connectAttr "Base_JNT.rp" "base_geo_parentConstraint1.tg[0].trp";
connectAttr "Base_JNT.rpt" "base_geo_parentConstraint1.tg[0].trt";
connectAttr "Base_JNT.r" "base_geo_parentConstraint1.tg[0].tr";
connectAttr "Base_JNT.ro" "base_geo_parentConstraint1.tg[0].tro";
connectAttr "Base_JNT.s" "base_geo_parentConstraint1.tg[0].ts";
connectAttr "Base_JNT.pm" "base_geo_parentConstraint1.tg[0].tpm";
connectAttr "Base_JNT.jo" "base_geo_parentConstraint1.tg[0].tjo";
connectAttr "Base_JNT.ssc" "base_geo_parentConstraint1.tg[0].tsc";
connectAttr "Base_JNT.is" "base_geo_parentConstraint1.tg[0].tis";
connectAttr "base_geo_parentConstraint1.w0" "base_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "base_geo.pim" "base_geo_scaleConstraint1.cpim";
connectAttr "Base_JNT.s" "base_geo_scaleConstraint1.tg[0].ts";
connectAttr "Base_JNT.pm" "base_geo_scaleConstraint1.tg[0].tpm";
connectAttr "base_geo_scaleConstraint1.w0" "base_geo_scaleConstraint1.tg[0].tw";
connectAttr "geo_layer.di" "lower_arm_geo.do";
connectAttr "lower_arm_geo_parentConstraint1.ctx" "lower_arm_geo.tx";
connectAttr "lower_arm_geo_parentConstraint1.cty" "lower_arm_geo.ty";
connectAttr "lower_arm_geo_parentConstraint1.ctz" "lower_arm_geo.tz";
connectAttr "lower_arm_geo_parentConstraint1.crx" "lower_arm_geo.rx";
connectAttr "lower_arm_geo_parentConstraint1.cry" "lower_arm_geo.ry";
connectAttr "lower_arm_geo_parentConstraint1.crz" "lower_arm_geo.rz";
connectAttr "lower_arm_geo_scaleConstraint1.csx" "lower_arm_geo.sx";
connectAttr "lower_arm_geo_scaleConstraint1.csy" "lower_arm_geo.sy";
connectAttr "lower_arm_geo_scaleConstraint1.csz" "lower_arm_geo.sz";
connectAttr "lower_arm_geoShapeOrig.w" "lower_arm_geoShape.i";
connectAttr "lower_arm_geo.ro" "lower_arm_geo_parentConstraint1.cro";
connectAttr "lower_arm_geo.pim" "lower_arm_geo_parentConstraint1.cpim";
connectAttr "lower_arm_geo.rp" "lower_arm_geo_parentConstraint1.crp";
connectAttr "lower_arm_geo.rpt" "lower_arm_geo_parentConstraint1.crt";
connectAttr "Arm_Base_RK_JNT.t" "lower_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_Base_RK_JNT.rp" "lower_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_Base_RK_JNT.rpt" "lower_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_Base_RK_JNT.r" "lower_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_Base_RK_JNT.ro" "lower_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_Base_RK_JNT.s" "lower_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_Base_RK_JNT.pm" "lower_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Base_RK_JNT.jo" "lower_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Base_RK_JNT.ssc" "lower_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Base_RK_JNT.is" "lower_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "lower_arm_geo_parentConstraint1.w0" "lower_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_arm_geo.pim" "lower_arm_geo_scaleConstraint1.cpim";
connectAttr "Arm_Base_RK_JNT.s" "lower_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Base_RK_JNT.pm" "lower_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "lower_arm_geo_scaleConstraint1.w0" "lower_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "geo_layer.di" "upper_arm_geo.do";
connectAttr "upper_arm_geo_parentConstraint1.ctx" "upper_arm_geo.tx";
connectAttr "upper_arm_geo_parentConstraint1.cty" "upper_arm_geo.ty";
connectAttr "upper_arm_geo_parentConstraint1.ctz" "upper_arm_geo.tz";
connectAttr "upper_arm_geo_parentConstraint1.crx" "upper_arm_geo.rx";
connectAttr "upper_arm_geo_parentConstraint1.cry" "upper_arm_geo.ry";
connectAttr "upper_arm_geo_parentConstraint1.crz" "upper_arm_geo.rz";
connectAttr "upper_arm_geo_scaleConstraint1.csx" "upper_arm_geo.sx";
connectAttr "upper_arm_geo_scaleConstraint1.csy" "upper_arm_geo.sy";
connectAttr "upper_arm_geo_scaleConstraint1.csz" "upper_arm_geo.sz";
connectAttr "upper_arm_geoShapeOrig.w" "upper_arm_geoShape.i";
connectAttr "upper_arm_geo.ro" "upper_arm_geo_parentConstraint1.cro";
connectAttr "upper_arm_geo.pim" "upper_arm_geo_parentConstraint1.cpim";
connectAttr "upper_arm_geo.rp" "upper_arm_geo_parentConstraint1.crp";
connectAttr "upper_arm_geo.rpt" "upper_arm_geo_parentConstraint1.crt";
connectAttr "Arm_Upper_RK_JNT.t" "upper_arm_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_Upper_RK_JNT.rp" "upper_arm_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_Upper_RK_JNT.rpt" "upper_arm_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_Upper_RK_JNT.r" "upper_arm_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_Upper_RK_JNT.ro" "upper_arm_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_Upper_RK_JNT.s" "upper_arm_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_Upper_RK_JNT.pm" "upper_arm_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Upper_RK_JNT.jo" "upper_arm_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Upper_RK_JNT.ssc" "upper_arm_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Upper_RK_JNT.is" "upper_arm_geo_parentConstraint1.tg[0].tis";
connectAttr "upper_arm_geo_parentConstraint1.w0" "upper_arm_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "upper_arm_geo.pim" "upper_arm_geo_scaleConstraint1.cpim";
connectAttr "Arm_Upper_RK_JNT.s" "upper_arm_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Upper_RK_JNT.pm" "upper_arm_geo_scaleConstraint1.tg[0].tpm";
connectAttr "upper_arm_geo_scaleConstraint1.w0" "upper_arm_geo_scaleConstraint1.tg[0].tw"
		;
connectAttr "geo_layer.di" "head_geo.do";
connectAttr "head_geo_parentConstraint1.ctx" "head_geo.tx";
connectAttr "head_geo_parentConstraint1.cty" "head_geo.ty";
connectAttr "head_geo_parentConstraint1.ctz" "head_geo.tz";
connectAttr "head_geo_parentConstraint1.crx" "head_geo.rx";
connectAttr "head_geo_parentConstraint1.cry" "head_geo.ry";
connectAttr "head_geo_parentConstraint1.crz" "head_geo.rz";
connectAttr "head_geo_scaleConstraint1.csx" "head_geo.sx";
connectAttr "head_geo_scaleConstraint1.csy" "head_geo.sy";
connectAttr "head_geo_scaleConstraint1.csz" "head_geo.sz";
connectAttr "head_geo.ro" "head_geo_parentConstraint1.cro";
connectAttr "head_geo.pim" "head_geo_parentConstraint1.cpim";
connectAttr "head_geo.rp" "head_geo_parentConstraint1.crp";
connectAttr "head_geo.rpt" "head_geo_parentConstraint1.crt";
connectAttr "Arm_Head_RK_JNT.t" "head_geo_parentConstraint1.tg[0].tt";
connectAttr "Arm_Head_RK_JNT.rp" "head_geo_parentConstraint1.tg[0].trp";
connectAttr "Arm_Head_RK_JNT.rpt" "head_geo_parentConstraint1.tg[0].trt";
connectAttr "Arm_Head_RK_JNT.r" "head_geo_parentConstraint1.tg[0].tr";
connectAttr "Arm_Head_RK_JNT.ro" "head_geo_parentConstraint1.tg[0].tro";
connectAttr "Arm_Head_RK_JNT.s" "head_geo_parentConstraint1.tg[0].ts";
connectAttr "Arm_Head_RK_JNT.pm" "head_geo_parentConstraint1.tg[0].tpm";
connectAttr "Arm_Head_RK_JNT.jo" "head_geo_parentConstraint1.tg[0].tjo";
connectAttr "Arm_Head_RK_JNT.ssc" "head_geo_parentConstraint1.tg[0].tsc";
connectAttr "Arm_Head_RK_JNT.is" "head_geo_parentConstraint1.tg[0].tis";
connectAttr "head_geo_parentConstraint1.w0" "head_geo_parentConstraint1.tg[0].tw"
		;
connectAttr "head_geo.pim" "head_geo_scaleConstraint1.cpim";
connectAttr "Arm_Head_RK_JNT.s" "head_geo_scaleConstraint1.tg[0].ts";
connectAttr "Arm_Head_RK_JNT.pm" "head_geo_scaleConstraint1.tg[0].tpm";
connectAttr "head_geo_scaleConstraint1.w0" "head_geo_scaleConstraint1.tg[0].tw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "base_geoSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "base_geoSG.message" ":defaultLightSet.message";
connectAttr "defaultRedshiftPostEffects.msg" ":redshiftOptions.postEffects";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "lambert2.oc" "base_geoSG.ss";
connectAttr "base_geoShape.iog" "base_geoSG.dsm" -na;
connectAttr "lower_arm_geoShape.iog" "base_geoSG.dsm" -na;
connectAttr "upper_arm_geoShape.iog" "base_geoSG.dsm" -na;
connectAttr "head_geoShape.iog" "base_geoSG.dsm" -na;
connectAttr "base_geoSG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "layerManager.dli[1]" "geo_layer.id";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "makeNurbCircle1.oc" "transformGeometry1.ig";
connectAttr "layerManager.dli[2]" "jnt_layer.id";
connectAttr "makeNurbCircle2.oc" "transformGeometry2.ig";
connectAttr "Transform_CTRL.ArmIKFK" "Arm_IKFK_REV.ix";
connectAttr "Arm_Base_FK_CTRL_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "Main_IK_CTRL_GRP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "Arm_IKFK_REV.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "Arm_Base_RK_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "Arm_Head_RK_JNT_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "Arm_Head_RK_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Arm_Upper_RK_JNT_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "Arm_Upper_RK_JNT_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "Arm_Base_RK_JNT_scaleConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "Transform_CTRL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "makeNurbCircle3.oc" "transformGeometry3.ig";
connectAttr "layerManager.dli[3]" "ctrl_layer.id";
connectAttr "makeNurbCircle4.oc" "transformGeometry4.ig";
connectAttr "base_geoSG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRedshiftPostEffects.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Arm_IKFK_REV.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of Lamp RK Rig.ma
