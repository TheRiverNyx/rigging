//Maya ASCII 2024 scene
//Name: LampIKjumpAnimation.ma
//Last modified: Fri, Mar 08, 2024 02:37:36 AM
//Codeset: 1252
file -rdi 1 -ns "LampIKRig" -rfn "LampIKRigRN" -op "v=0;p=17" -typ "mayaAscii"
		 "D:/GitHub/rigging//LampIKRig.ma";
file -r -ns "LampIKRig" -dr 1 -rfn "LampIKRigRN" -op "v=0;p=17" -typ "mayaAscii"
		 "D:/GitHub/rigging//LampIKRig.ma";
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.5.2";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "3678E92A-4E45-8E21-62AF-849A7F68290F";
createNode transform -s -n "persp";
	rename -uid "98EFE2AB-4EC2-55C4-4CEE-A7B4D33B737A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -219.42883425208942 94.976074041113662 45.353994554224755 ;
	setAttr ".r" -type "double3" -19.538352732810573 280.59999999988759 -8.6450973882573058e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E00DCCCB-480B-4340-2ED6-519C7501EDB8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 230.85627842650231;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "734BF219-4C29-E985-5CDF-3796FB9908E8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D1A5056A-4383-09BD-8022-1597672CF48C";
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
	rename -uid "E2A40550-4177-59C7-BDAD-348364193A54";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "0FADCDB4-480F-FA2F-9D10-C7AF091453BE";
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
	rename -uid "298E05BA-4C9B-5DC5-D0FA-0181CE6C9D6A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "27A5952E-4A95-7D57-53C2-37884C5B9F3D";
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
createNode transform -n "Ground";
	rename -uid "29FF9059-4531-48DD-5B65-0FB2E7571CA9";
	setAttr ".t" -type "double3" 0 -0.5 0 ;
	setAttr ".s" -type "double3" 152.15105978807631 1 146.31202951828158 ;
createNode mesh -n "GroundShape" -p "Ground";
	rename -uid "E6D1BE87-49D6-525E-7215-ED8348FE34E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Main_Cam";
	rename -uid "A5C76CF3-49A0-B091-0250-E69C0B0B9E7A";
	setAttr ".t" -type "double3" -194.41742899277091 42.860689807938293 84.944327250242736 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -11.13835273280675 286.19999999992626 2.850050245894202e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "Main_CamShape" -p "Main_Cam";
	rename -uid "CACCC6A8-4590-BFB8-5DB3-738EE9401D35";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 190.99015569669959;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "directionalLight1";
	rename -uid "D9E28F91-484D-827C-2C0B-618B9650075A";
	setAttr ".t" -type "double3" -23.3407305622375 16.440106937773038 -8.2410304543142612 ;
	setAttr ".r" -type "double3" -27.322830923541758 -124.92583434937623 0 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "B2FE709D-4764-993C-1A7C-0089AA0A0F8F";
	setAttr -k off ".v";
	setAttr ".ai_exposure" 3.7662336826324463;
createNode transform -n "pointLight1";
	rename -uid "C9058B2D-4661-8625-FD38-95AABAD2B1A5";
	setAttr ".t" -type "double3" 31.329799431979644 21.496596195198524 27.487084994309935 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	rename -uid "DFE017B3-4A59-7442-BE5F-F3B60CFB3742";
	setAttr -k off ".v";
	setAttr ".us" no;
	setAttr ".ai_cast_shadows" no;
	setAttr ".ai_exposure" 10;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8405430E-4E11-2DAD-F7EA-8D9B42EF0403";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DFEEB531-4AD5-EEAC-ABC9-77B6D2FC4ABB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "4FE5DCF3-4735-5790-D788-5FBDE3E3AC4A";
createNode displayLayerManager -n "layerManager";
	rename -uid "06B5A7DB-43DC-A9FC-9156-D2AC833DA52F";
createNode displayLayer -n "defaultLayer";
	rename -uid "14244DD5-48AF-D05F-0A26-9E9AC78FC703";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "77BD98CE-496C-F517-5DD9-478D46595471";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5372E9CC-4934-F3A8-D02E-1DBFFD023A8B";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "075E5FB7-4F50-5C3F-DC9B-4783DD11A148";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.3.5.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3147EE6A-4F5D-4207-9583-1CB0A62C4FFD";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "33FE7CFA-407E-DB81-D205-409B6F0D2E55";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "EFDCFE97-4BD5-66AA-FF91-48A97E3FAD33";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "LampIKRigRN";
	rename -uid "76215295-4898-D95A-D823-E7818E182ECB";
	setAttr -s 37 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"LampIKRigRN"
		"LampIKRigRN" 0
		"LampIKRigRN" 37
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[1]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[2]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[3]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[4]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[5]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[6]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[7]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[8]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[9]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[10]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[11]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Base_Ctrl_Grp|LampIKRig:Base_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[12]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[13]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[14]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[15]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[16]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[17]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_PV_Ctrl_Grp|LampIKRig:Arm_PV_Offset|LampIKRig:Arm_PV_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[18]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[19]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[20]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[21]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[22]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[23]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_Base_Ctrl_Grp|LampIKRig:Arm_Base_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[24]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[25]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[26]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[27]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[28]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[29]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[30]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.rotateX" 
		"LampIKRigRN.placeHolderList[31]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.rotateY" 
		"LampIKRigRN.placeHolderList[32]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.rotateZ" 
		"LampIKRigRN.placeHolderList[33]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.translateX" 
		"LampIKRigRN.placeHolderList[34]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.translateY" 
		"LampIKRigRN.placeHolderList[35]" ""
		5 4 "LampIKRigRN" "|LampIKRig:Lamp_Asset|LampIKRig:Controls|LampIKRig:COG_Ctrl_Grp|LampIKRig:COG_Ctrl|LampIKRig:Arm_IK_Main|LampIKRig:Arm_IK_Ctrl_Grp|LampIKRig:Arm_IK_Ctrl|LampIKRig:Head_Ctrl_Grp|LampIKRig:Head_01_Ctrl.translateZ" 
		"LampIKRigRN.placeHolderList[36]" ""
		5 3 "LampIKRigRN" "LampIKRig:geo_layer.drawInfo" "LampIKRigRN.placeHolderList[37]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C18A5D58-4B9C-A190-A924-0ABC65BFEFC1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 638\n            -height 440\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 98\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1266\n            -height 668\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|Main_Cam\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1266\\n    -height 668\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1266\\n    -height 668\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2596664D-4B6D-4B61-7102-8494B0A5DA1F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 60 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube1";
	rename -uid "D0678107-43B1-A08F-9DC4-39892E77D04D";
	setAttr ".cuv" 4;
createNode animCurveTL -n "COG_Ctrl_translateX";
	rename -uid "26942E31-47BA-4ECD-AB98-E48DBB3DCCF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.8214596497756474e-17 8 -1.8214596497756474e-17
		 24 -1.8214596497756474e-17 37 -1.8214596497756474e-17;
createNode animCurveTL -n "Arm_Base_Ctrl_translateX";
	rename -uid "5977C709-4F50-113F-2D4D-0CBF10BB2D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTL -n "Base_Ctrl_translateX";
	rename -uid "ED7158FF-4B99-2BD7-5C18-0CAB13C328EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 8 0 12 0 22 0 25 0 32 0 33 0 35 0 37 0
		 56 0;
createNode animCurveTL -n "Arm_IK_Ctrl_translateX";
	rename -uid "6DC749E2-4D9F-3FA5-F8F8-828D7A8FA820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 0 23 0 32 0 42 0 56 0;
createNode animCurveTL -n "Arm_PV_Ctrl_translateX";
	rename -uid "55B05CCE-4781-F767-DFE0-4AB5A36A3185";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTL -n "Head_01_Ctrl_translateX";
	rename -uid "234BBEF6-47D0-3E8E-02F2-01A3690521DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 15 0 32 0 42 0 56 0;
createNode animCurveTL -n "COG_Ctrl_translateY";
	rename -uid "F64F7B23-4FC6-953D-D5B0-B7B575F39A07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 8 0 24 18.313948309682868 37 0;
createNode animCurveTL -n "Arm_Base_Ctrl_translateY";
	rename -uid "9BEFBDA8-415B-DE1B-2765-05A57F0B316B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTL -n "Base_Ctrl_translateY";
	rename -uid "4E1F45A4-42E2-7F87-0D57-498CC0848E08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 8 0 12 0 22 0 25 0 32 0 33 0 35 0 37 0
		 56 0;
createNode animCurveTL -n "Arm_IK_Ctrl_translateY";
	rename -uid "53FB446C-4BAD-BF3F-6E87-59A5AA9FC43B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 -11.601730791169821 15 10.04267924147179
		 23 -4.1546993324055475 32 6.3843341055091631 42 -11.203591374381467 56 0;
createNode animCurveTL -n "Arm_PV_Ctrl_translateY";
	rename -uid "ABBD09DE-4428-8E08-CF5E-B58D87E78A96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTL -n "Head_01_Ctrl_translateY";
	rename -uid "F53918CC-4B44-BA29-2477-46A31ED7A63D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 15 0 32 0 42 0 56 0;
createNode animCurveTL -n "COG_Ctrl_translateZ";
	rename -uid "8C14B1EB-44E2-7C18-C7C5-57A0B481C918";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 8 0 24 10.927659997656839 37 23.983002406589854;
createNode animCurveTL -n "Arm_Base_Ctrl_translateZ";
	rename -uid "551DE248-447B-44E6-6F61-E49430494F66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTL -n "Base_Ctrl_translateZ";
	rename -uid "53E4E65D-49EF-4D3C-DD54-5284E461DF2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 8 0 12 0 22 0 25 0 32 0 33 0 35 0 37 0
		 56 0;
createNode animCurveTL -n "Arm_IK_Ctrl_translateZ";
	rename -uid "08734323-4386-138C-BF94-50A26C9CE361";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 7.2891710230134557 23 -5.186662771417847
		 32 -16.739486402743999 42 3.4583216598600863 56 0;
createNode animCurveTL -n "Arm_PV_Ctrl_translateZ";
	rename -uid "3772B146-477C-7C3C-C609-ADAB3EE60C7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTL -n "Head_01_Ctrl_translateZ";
	rename -uid "73778ECA-48E6-1C78-FA17-A49500FC4585";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 15 0 32 0 42 0 56 0;
createNode animCurveTA -n "COG_Ctrl_rotateX";
	rename -uid "71AE7D52-4149-9A32-2CBA-55908DC0A8B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -5.779738133270245e-11 8 -5.779738133270245e-11
		 24 -5.779738133270245e-11 37 -5.779738133270245e-11;
createNode animCurveTA -n "Arm_Base_Ctrl_rotateX";
	rename -uid "22F040D3-4861-D39F-07A2-A1891B7B8414";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTA -n "Base_Ctrl_rotateX";
	rename -uid "C8AA0EA9-41EE-1F5E-BB4B-91BD2E6E18CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 8 0 11 -24.125587613248861 16 -39.115571621520708
		 25 -10.667483050234356 32 31.130378638061892 37 0 56 0;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  0.97054548404962404 0.4777067828902109 
		1 1 1;
	setAttr -s 8 ".kiy[3:7]"  -0.24091795987613893 0.87851933933219983 
		0 0 0;
	setAttr -s 8 ".kox[3:7]"  0.97054548434686061 0.4777067828902109 
		1 1 1;
	setAttr -s 8 ".koy[3:7]"  -0.24091795867871196 0.87851933933219983 
		0 0 0;
createNode animCurveTA -n "Arm_IK_Ctrl_rotateX";
	rename -uid "5C1D73D2-4A04-9189-EF5D-DBAF4CBD0C34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 0 23 0 32 0 42 0 56 0;
createNode animCurveTA -n "Arm_PV_Ctrl_rotateX";
	rename -uid "DE4E5CFC-49D6-5689-CC40-209F7D8A323E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTA -n "Head_01_Ctrl_rotateX";
	rename -uid "77151F80-423C-A652-5976-2CB1BF9DA420";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 -27.644831347748859 15 -49.402000530454849
		 32 -75.853120614523391 42 -35.26512901390128 56 0;
createNode animCurveTA -n "COG_Ctrl_rotateY";
	rename -uid "CF6BEF66-4F45-DE8F-1E86-EA8004B0F87B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1.0308072118267247e-16 8 1.0308072118267247e-16
		 24 1.0308072118267247e-16 37 1.0308072118267247e-16;
createNode animCurveTA -n "Arm_Base_Ctrl_rotateY";
	rename -uid "704EA6D8-4B79-5E45-14A8-DE964BF624E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTA -n "Base_Ctrl_rotateY";
	rename -uid "C8C4F59A-4185-B3D3-34BD-008152B509D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 8 0 12 0 22 0 25 0 32 0 33 0 35 0 37 0
		 56 0;
createNode animCurveTA -n "Arm_IK_Ctrl_rotateY";
	rename -uid "B16F6FCB-4B94-5DF4-086D-68A58CDA62DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 0 23 0 32 0 42 0 56 0;
createNode animCurveTA -n "Arm_PV_Ctrl_rotateY";
	rename -uid "25894835-453F-E245-C108-8FA7276A27A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTA -n "Head_01_Ctrl_rotateY";
	rename -uid "484B3380-4D38-EB83-8C15-F0B21B2B2D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 15 0 32 0 42 0 56 0;
createNode animCurveTA -n "COG_Ctrl_rotateZ";
	rename -uid "27B682FF-43FF-680A-43F8-0DA857DF237E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.6807539248303488e-17 8 -2.6807539248303488e-17
		 24 -2.6807539248303488e-17 37 -2.6807539248303488e-17;
createNode animCurveTA -n "Arm_Base_Ctrl_rotateZ";
	rename -uid "B324BC93-4FD5-5F3A-1882-18BF49496A14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 56 0;
createNode animCurveTA -n "Base_Ctrl_rotateZ";
	rename -uid "0035AC62-4CE6-0ABA-4165-A4B76A40E5E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 8 0 12 0 22 0 25 0 32 0 33 0 35 0 37 0
		 56 0;
createNode animCurveTA -n "Arm_IK_Ctrl_rotateZ";
	rename -uid "6D916B82-4380-EC38-F6D9-52B527BC55B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 8 0 15 0 23 0 32 0 42 0 56 0;
createNode animCurveTA -n "Arm_PV_Ctrl_rotateZ";
	rename -uid "7C79EC2D-4823-277A-DDF0-C78D5D01EF06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 8 0;
createNode animCurveTA -n "Head_01_Ctrl_rotateZ";
	rename -uid "98A5EB10-4312-4458-19FE-D9B62D9740FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 8 0 15 0 32 0 42 0 56 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "97CB41B8-449E-3EE3-80B7-26BB815DA779";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 60;
	setAttr ".unw" 60;
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
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
	setAttr -s 2 ".l";
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
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".an" yes;
	setAttr ".ef" 60;
	setAttr ".pff" yes;
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".w" 1024;
	setAttr ".h" 768;
	setAttr ".pa" 1;
	setAttr ".dar" 1.3329999446868896;
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
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
connectAttr "COG_Ctrl_translateY.o" "LampIKRigRN.phl[1]";
connectAttr "COG_Ctrl_translateZ.o" "LampIKRigRN.phl[2]";
connectAttr "COG_Ctrl_translateX.o" "LampIKRigRN.phl[3]";
connectAttr "COG_Ctrl_rotateX.o" "LampIKRigRN.phl[4]";
connectAttr "COG_Ctrl_rotateY.o" "LampIKRigRN.phl[5]";
connectAttr "COG_Ctrl_rotateZ.o" "LampIKRigRN.phl[6]";
connectAttr "Base_Ctrl_rotateX.o" "LampIKRigRN.phl[7]";
connectAttr "Base_Ctrl_rotateY.o" "LampIKRigRN.phl[8]";
connectAttr "Base_Ctrl_rotateZ.o" "LampIKRigRN.phl[9]";
connectAttr "Base_Ctrl_translateY.o" "LampIKRigRN.phl[10]";
connectAttr "Base_Ctrl_translateZ.o" "LampIKRigRN.phl[11]";
connectAttr "Base_Ctrl_translateX.o" "LampIKRigRN.phl[12]";
connectAttr "Arm_PV_Ctrl_translateY.o" "LampIKRigRN.phl[13]";
connectAttr "Arm_PV_Ctrl_translateZ.o" "LampIKRigRN.phl[14]";
connectAttr "Arm_PV_Ctrl_translateX.o" "LampIKRigRN.phl[15]";
connectAttr "Arm_PV_Ctrl_rotateX.o" "LampIKRigRN.phl[16]";
connectAttr "Arm_PV_Ctrl_rotateY.o" "LampIKRigRN.phl[17]";
connectAttr "Arm_PV_Ctrl_rotateZ.o" "LampIKRigRN.phl[18]";
connectAttr "Arm_Base_Ctrl_translateY.o" "LampIKRigRN.phl[19]";
connectAttr "Arm_Base_Ctrl_translateZ.o" "LampIKRigRN.phl[20]";
connectAttr "Arm_Base_Ctrl_translateX.o" "LampIKRigRN.phl[21]";
connectAttr "Arm_Base_Ctrl_rotateX.o" "LampIKRigRN.phl[22]";
connectAttr "Arm_Base_Ctrl_rotateY.o" "LampIKRigRN.phl[23]";
connectAttr "Arm_Base_Ctrl_rotateZ.o" "LampIKRigRN.phl[24]";
connectAttr "Arm_IK_Ctrl_translateX.o" "LampIKRigRN.phl[25]";
connectAttr "Arm_IK_Ctrl_translateY.o" "LampIKRigRN.phl[26]";
connectAttr "Arm_IK_Ctrl_translateZ.o" "LampIKRigRN.phl[27]";
connectAttr "Arm_IK_Ctrl_rotateX.o" "LampIKRigRN.phl[28]";
connectAttr "Arm_IK_Ctrl_rotateY.o" "LampIKRigRN.phl[29]";
connectAttr "Arm_IK_Ctrl_rotateZ.o" "LampIKRigRN.phl[30]";
connectAttr "Head_01_Ctrl_rotateX.o" "LampIKRigRN.phl[31]";
connectAttr "Head_01_Ctrl_rotateY.o" "LampIKRigRN.phl[32]";
connectAttr "Head_01_Ctrl_rotateZ.o" "LampIKRigRN.phl[33]";
connectAttr "Head_01_Ctrl_translateX.o" "LampIKRigRN.phl[34]";
connectAttr "Head_01_Ctrl_translateY.o" "LampIKRigRN.phl[35]";
connectAttr "Head_01_Ctrl_translateZ.o" "LampIKRigRN.phl[36]";
connectAttr "LampIKRigRN.phl[37]" "Ground.do";
connectAttr "polyCube1.out" "GroundShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "GroundShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
// End of LampIKjumpAnimation.ma
