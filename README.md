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
 WrathEd 1.10_HN  
 https://github.com/theHostileNegotiator/WrathEd2012/releases/tag/v0.1.10-HN  
 Is not supported on Older Builds  
 * Forked from https://github.com/Qibbi/WrathEd2012 by Lauren/Darth Jane.
 
 ### Extra Fixes
 Mechapede Spawn: Mechapede spawn can be fixed by Hex editing cnc3ep1.dat, allowing it to spawn properly at the Gateway and follow rally points. 
 This only works with the Steam and Origin versions excluding the Ultimate Collection, as the other versions are encrypted. 
 It is not recommended to play online with people that do not have this fix. This fix not necessary to run this mod.  
 * Recommended way to setup: In your install path, "RetailExe" folder copy folder "1.2" and name the copy "1.3". Enter into the folder. 
 With a Hex editor open cnc3ep1.dat, search for Hex "FF 90 24 01 00 00 85 C0 75 16". Change 75 to 74. Return to the install path and copy "CNC3EP1_english_1.2.SkuDef" and name it "CNC3EP1_english_1.3.SkuDef". 
 Open with a text editor and replace everything with;  
 set-exe RetailExe\1.3\cnc3ep1.dat  
 add-config CNC3EP1_english_1.2.SkuDef  
 Now you can launch the game and any mod with this fix
 
 ### WrathEd W3D Definition Workaround
 * W3DMesh.cs 
 Vertex Color mixes Red and Blue, quick fix done on Line 1124 and 1126
 
 ### Special Thanks
 SAGE Engine Modding Discord Server  
 Megumi/Darth Jane, Golan, Shmafoozius: WrathEd  
 Bibber: Asset extractor  
 Lauren/Darth Jane: Assimilator Animation extractor  
 Jonwil: APT2XML Tool  
 OpenSAGE Team: OpenSAGE Blender Plugin  
 Stygs: Providing Models
 