# KWBandage
 Compilation of files that aim to fix issues with Kanes Wrath including bug fixes, optimisation and balance consistency.  
 These files are provided for convenient access and research purposes and is compatible with WrathEd modding tool.  
 Related changes are documented in the game files  
 
 To fully compile this collection, you will need to use BuildPatch.bat provided in _Extras folder and place the file in the same place as all the other Build batch files.  
 This is neccessary to compile Low Level of Detail Files and Maps.  
 You will need to copy "static_l_common.manifest" and the "maps" folder provided in _Extras\Manifest folder and place it in WrathEd\Game Files\Manifest.  
 This will patch the Low LOD static 1.2 files rather than create a low LOD patch of the mod (If that makes sense). Therefore the low LOD settings from the vanilla game is maintained.  
 Two additional batch files have been provided, if you want to compile without the maps or with only the maps.  

 Credit is appreciated if you intend to re-use or repurpose the files.
 
 Bug fixes are detailed in the PatchNotes.txt and any known issues that have not been fixed in this package are detailed in KnownIssues.txt
 
 ### Required Files
 WrathEd
 
 ### WrathEd Definition changes
 Some errors are present in the latest version of WrathEd definitions and therefore adjustments are made.  
 * Rename files  
 Files, mainly ones containing GameAssets were renamed to have "AssetType" in front.  
 * New Definitions  
 SkirmishAI\\, InGameUI\\, AssetTypeInGameUISettings.  
 * AssetTypeLogicCommand:  
 Element wrongly named "UpgradeTemplate" should be "Upgrade".  
 * Modules\CreateObjectDie
 "UpgradeRequired" and "UpgradeForbidden" should be elements not attributes, removed "IsAttribute="true"" making it by default "false"
 * Modules\EngineerContain
 Attribute "ImmediatelyEnabled" was missing, added it in with default "false"
 * Modules\ScriptedModelDraw:  
 Attributes "MaxRecoilDistance" and "RecoilDamping" have incorrect default values and should be swapped.
 * Modules\SpecialAbilityUpdate:  
 Attribute named "Face Target" has the wrong default value. It should be "true".
 * W3DMesh.cs
 Vertex Color mixes Red and Blue, quick fix done on Line 424 and 426
 
