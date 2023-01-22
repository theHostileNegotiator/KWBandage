# List of things that have been fixed or changed for consistency

## First, the issue will be layed out with the appropriate solution later

### Global:

#### Experience Levels
1. Multiple Inconsistencies and Bugs with experience awards and requirements
	* Change experience awards and requirements appropriately as per unit cost
		- Green: Unit Cost * 1 (/SquadSize) -:- 0
		- Veteran: Unit Cost * 1.3 (/SquadSize) -:- Unit Cost * 3
		- Elite: Unit Cost * 1.6 (/SquadSize) -:- Unit Cost * 6
		- Heroic: Unit Cost * 2 (/SquadSize) -:- Unit Cost * 9
		* Objects Affected
			* All Harvesters
			* All Refineries
			* All Tiberium Silos
			* All Air Transports (V35 and Carryalls)
			* All Epic Units and Corresponding Production Structure
			* GDI/ST/ZOCOM Slingshot
			* GDI/ST/ZOCOM Hammerhead
			* GDI Shatterer
			* GDI Zone Trooper
			* GDI/ST/ZOCOM Power Plant
			* ST Titan
			* ST Wolverine
			* ZOCOM Predator
			* ZOCOM Zone Shatterer
			* ZOCOM Orca
			* ZOCOM Zone Raider
			* NOD/MOK Air Support Structure
			* NOD/BH/MOK Reckoner
			* NOD/MOK Commando
			* NOD/BH Flame Tank
			* NOD/BH/MOK Specter
			* NOD/BH/MOK Obelisk of Light
			* NOD/BH/MOK Raider Buggy
			* NOD/MOK Stealth Tank
			* NOD/MOK Venom
			* BH Confessor Cabal
			* BH Mantis
			* MOK Awakened
			* MOK Enlightened
			* Scrin/R17/T59 Drone Ship (Unpacking)
			* Scrin/T59 Gun Walker
			* Scrin Mechapede
			* Scrin Mastermind
			* Scrin/R17/T59 Mothership
			* Scrin/R17/T59 Disintegrator
			* Scrin/R17/T59 Ravager
			* Scrin/R17/T59 Storm Column
			* R17 Growth Stimulator
			* R17 Shard Walker
			* T59 Prodigy
			* T59 Cultist
2. ZOCOM Harvester has incorrect prerequisite, referencing the GDI Harvester, preventing any potential level ups
	* Fixed prerequisite to refence ZOCOM Harvester.
#### Snipers Spotting for bombardment
1. Veteran and Subfaction Snipers cannot spot for bombardment when garrisoned
	* Include Veteran and Subfaction Snipers in MemberTemplateStatusInfo in garrison HordeContain Modules
#### EMP
1. EMPed units have the ability to crush, despite being immobile
	* Added an attribute modifier to the weapon that reduces the Crusher Level
2. EMP can disable shields of units inside Stasis fields
	* Added ForbiddenTargetObjectStatus for IN_STASIS objects
#### Upgrade Sounds
1. Units will either play sounds when upgraded with something they can't use or will not play sounds when upgraded
	* Add or remove "audioloopupgrade"
		* Objects Affected
			* GDI/ST/ZOCOM Slingshot (- Railgun)
			* GDI/ST/ZOCOM AA Battery (+ Tungsten)
			* GDI Shatterer (- Railgun)
			* GDI/ST Orca (+ Hardpoints)
			* GDI/ST Firehawk (+ Hardpoints)
			* ST Rifleman (- Composite Armor)
			* ST Missile Squad (- Composite Armor)
			* ST Grenadier (- Composite Armor, - EMP Grenades)
			* ZOCOM Shatterer (- Railgun)
			* ZOCOM Rifleman (+ Tiberium Field Suits)
			* ZOCOM Missile Squad (+ Tiberium Field Suits)
			* ZOCOM Grenadier Squad (+ Tiberium Field Suits)
			* ZOCOM Orca (+ Ceramic Armor)
			* ZOCOM Hammerhead (+ Ceramic Armor)
			* ZOCOM Firehawk (+ Ceramic Armor)
			* ZOCOM Guardian Cannon (- Railgun)
			* NOD/BH/MOK SAM Turret (- Railgun, + Tiberium Core Missiles)
			* NOD/MOK Avatar (- Purifying Flame)
			* NOD Black Hand (- Purifying Flame)
			* NOD Flame Tank (- Purifying Flame)
			* NOD Militant Squad (- Black Disciple)
			* NOD/MOK Militant Rocket Squad (- Black Disciple)
			* BH/MOK Raider Buggy (- Laser Capacitor)
			* BH/MOK Scorpion Tank (- Laser Capacitor)
			* BH/MOK Laser Cannon (- Laser Capacitor)
			* BH Shredder Turret (+ Charged Particle Beams)
			* MOK Shredder Turret (+ Super Charged Particle Beams)
			* MOK Enlightened (- Railgun, + Super Charged Particle Beams)
			* MOK Militant Rocket Squad (- Confessor, - Black Disciple)
			* Scrin/R17/T59 Mechapede (- Forcefield Generator)
			* T59 Annihilator Tripod (- Forcefield Generator)
#### Upgraded Textures
1. Units when upgraded would not use the corresponding Specular, NormalMap or House Color Texture
	* Added texture change for Specular, NormalMap or House Color Textures
		* Created New Specular Maps for Ceramic Armor Orca and Firehawk
		* Objects Affected
			* ST Titan (Adaptive Armor)
			* ST Mammoth (Adaptive Armor)
			* ZOCOM Orca (Ceramic Armor)
			* ZOCOM Firehawk (Ceramic Armor)
			* ZOCOM Hammerhead (Ceramic Armor)
			* BH BlackHand (Purifying Flame)
			* MOK Engineer (Cybernetic Legs)
			* MOK Tiberium Trooper (Cybernetic Legs)
			* MOK Enlightened (Cybernetic Legs)
2. Units may not use Tiberium Core Missile Upgrade DAMAGED texture
	* Added texture change for Damaged State
#### Unit Cost (For Hexapod Recycling)
1. Some units and structures have inappropriate build costs. Typically they are members of squads that would not affect anything thing in TW. However it is more important in KW, the Hexapod Recycling is dependent on the build cost.
	* Adjusted Build Cost (and Build Times) of units to be more appropriate.
		* Objects Affected
			* GDI/ZOCOM Sniper (1000 to 500)
			* GDI/ZOCOM Spotter (10 to 500)
			* GDI Zone Trooper (313 to 325)
			* ZOCOM Zone Raider (313 to 325)
			* NOD/BH/MOK Fanatic (160 to 140)
			* NOD Awakened (400 to 10)
			* MOK Awakened (400 to 166)
			* BH Confessor (10 to 66)
			* BH Black Disciple (150 to 10)
			* Scrin/R17/T59 Drone Ship Unpacking (3000 to 3500)
			* Scrin/R17/T59 Ravager (333 to 400)
			* Scrin/R17/T59 Shock Trooper (333 to 266)
			* Scrin/R17/T59 Mechapede Body (1400 to 100)
			* Mutant Marauder (0 to 100)
#### Captured Technology
1. Tiberium Based objects could not be targeted by the Ravagers Agitation ability if technology was captured and built by a different faction
	* Units are given a StatusBitUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
		* Objects Affected
			* Tiberium Trooper
			* Tiberium Chemical Plant
			* Corrupter
			* Growth Accelerator
			* Growth Stimulator
2. Some units do not show Dust Hover effect if technology was captured and built by a different faction
	* Units are given a ModelConditionUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
		* Objects Affected
			* Shatterer
			* Zone Shatterer
			* Orca
			* ZOCOM Orca
			* Hammerhead
3. GDI, Steel Talons and ZOCOM units when upgraded with AP Ammo and is not Heroic, weapon will shoot both AP Ammo and Heroic AP Ammo tracers if technology was captured and built by a different faction.
	* Units are given a StatusBitUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
4. GDI, Steel Talons and ZOCOM Refinery and Reclamation Hub will not generate Tiberium Smoke if technology was captured and built by a different faction.
	* Units are given a ModelConditionUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
5. Black Hand Units will not get the bonus veterancy if technology was captured and built by a different faction
	* Units are given a LevelUpUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
6. Zone Trooper cannot be targeted by Railgun Accelerator if technology was captured and built by a different faction
	* Unit is given a StatisBitUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
7. Black Hand Flame Tanks will not display the flames when firing if technology was captured and built by a different faction.
	* Unit is given a ModelConditionUpgrade which was triggered by the faction upgrades however it was only for certain factions. Added the remaining faction upgrades
#### Sonic Repulsion Field and Laser Fencing
1. Structures when entering DAMAGED state (66%) removes the Support Power which would suggest that the upgrade cannot be applied. However the upgrade can be applied at state, but will not display.
	* Removed ability to be able to apply to damaged structures
2. Commands are referenced from the Tier 3 Structure instead of Tier 2 (This may only be important for AI usage)
	* Changed commands to be referenced by the appropriate structures
3. Powerstores has the ability to deal Cloaking Field damage with the ability and also listed the wrong upgrade.
	* Fixed upgrade reference and removed weapon associations
4. Armor bonus is still applied after upgrade is removed.
	* Changed ArmorUpgrade module attribute "Permanent" to false
#### Tiberium
1. Tiberium looks dull with some GPUs and Drivers
	* Swapped "EnvMap" texture from FXAbaloneEnv to ChromicReflectionCube as the shader expects a cube map, not 2D textures. For all intents and purposes ChromicReflectionCube is the cube version of FXAbalone
#### Tiberium Based Units
1. Units despite being Tiberium based or using Tiberium based weapons are not considered to be Tiberium Based units, therefore are not affect by Tiberium Vibration Scan or do not take extra damage from 'Anti Tiberium' weapons
	* Ravagers, Shard Walkers and Tiberium Troopers are now considered Tiberium Based
		* Unlike Nod Power Plants with Tiberium Core upgrade, units and structures with Tiberium Core Missiles upgrade will not have the "HAVE_TIBERIUM_UPGRADE" flag, making it 'immune' to Tiberium Vibration Scan as it would be able to counter Cloaking Field and Stealth Tanks with a simple click of a button, making the upgrade less desireable against Scrin factions.
#### Force Firing
1. Some units because they cannot damage Allies by default also cannot Force Fire against Allies
	* Added workaround: Added ALLIES to RadiusDamageAffects however the Nuggets only affect Enemies and Neutral. Then gave the weapon a warhead with RadiusDamageAffects for ENEMIES AND NEUTRAL, this will only hurt allies when targeted with force firing. Warhead has replicated nuggets from the launcher that only affects Allies
		* Objects Affected
			* Black Hand
			* Tiberium Trooper
			* Flame Tank
			* Avatar (Flame Weapon)
			* Purifier (Flame Weapon)
			* Redeemer (Flame and Tib Goo)
			* Storm Column
			* Ion Storm
#### Upgrade Models
1. Some unit or structure upgrades unnecessarily have game objects use different models instead of hiding and unhiding subobjects
	* Modified models so subobjects are in the base model and are hidden by scripts
		* Objects Affected
			* Attack Bike
			* Mantis
			* Stealth Tank
			* Venom
			* Vertigo
			* SAM Turret Hub (Only Tiberium Core Missiles)
			* SAM Turret
			* Shard Walker
#### Squad Special Ability Weapons
1. Once ability is activated, 'interrupting' by issuing other commands can lead to unit still move while firing, leading to lead to jank animations, firing weapon backwards, etc. Playing attacking animations but not shooting if ordered to attack.
	* Adjusted how special powers are activated. Squad will now be considered to be 'busy' until weapon has been released, therefore new commands will have to queue until unit is no longer busy before executing. Improving presentation significantly
		* In most cases, special powers have been sped up, to match base weapons speed and to counter fix.
	* Objects Affected
		* GDI/ZOCOM Grenadier Squad
		* Shadow Team
		* Confessor Cabal
		* Awakened
		* Enlightened
		* Ravager
#### Formation Preview
1. Some units do not have their own Formation Preview Models, instead borrowing from other units
	* Created New Models for the units (Stygs)
		* Objects Affected
			* Rocket Harvester
			* Shard Walker
			* Reaper Tripod
2. Some units Formation Preview models do not render properly when in front of other GameObjects
	* Increased SortLevel of the Formation Preview Mesh to 1
		* Objects Affected
			* Titan
			* MRT
			* Heavy Harvester
			* Wolverine
			* Slingshot
			* Shatterer
			* Zone Shatterer
			* Behemoth
			* MARV
			* Hammerhead
			* Reckoner
			* Mantis
			* Specter
			* Redeemer
			* Mechapede
			* Eradicator Hexapod
#### Neutral Structures, Nod Garrison Armor and GDI Map Specific Structures
1. All did not have proper House Color Channels after the Shader Changes
	* Edited Specular Maps to have House Color Channel
### EMP Control Center
1. Cannot destroy Devastator Warships and Planetary Assault Carrier when upgraded with Forcefields, when shields are disabled
	* "SHIELDBODY_ENABLED" object status is applied permanently after purchasing Forcefield upgrade, it is still applied when they have been disabled. Instead will use the Weapon Nugget ForbiddenTargetModelCondition and use "USER_19" as the ModelCondition for Shields as it is unused as it will be added or removed depending on the state of the Forcefield
2. Does not affect Devastator Warships and Planetary Assault Carrier with shields
	* Added workaround for EMP effect as there is no CylinderAOE for Palalyze Nugget (AOE is a sphere by default). Weapon with Paralyze Nugget is fired from an object spawned from an OCL at a height of 140 which is the height of ships fly at.
#### Garrison Flags
1. Nod Garrison Flags have a weird appearance, weak House Color and reflective
	* Fixed Specular Map, removed Reflection Channel and fixed House Color Channel
#### Light Mesh Sorting
1. Some mesh, mainly flashing lights do not sort properly when in front of other objects.
	* Increased sort level of Mesh
		* Objects Affected
			* Warfactory
			* Airfield
			* Command Post
			* Armory
			* Tech Center
			* Space Command Uplink
			* Reclamation Hub
			* Combat Support Airfield
			* MARV
			* Secret Shrine
			* Redeemer Engineering Facility
			* Air Support Tower
			* Drone Platform
			* Drone Ship
			* Scrin Disk Projectiles
#### Self Illumination Remapping
1. Due to the changes with ObjectsGDI shader no longer supporting Self Illumination because the Blue Channel of the Spec Map changed functions, the mapping was converted to Reflection Channel instead by the devs. This was not applied to every object.
	* Converted self illumination mapping in Tiberium Wars to reflection map in Kane's Wrath
		* Objects Affected
			* Refinery
			* Barracks
			* Armory
#### Refineries
1. Refund value was not increased in KW 1.02 after Harvesters were made cheaper
	* Increased Refund Value to 700 based on; (RefineryCost - HarvesterCost) -:- 2
2. Harvesters Docking at Nod or Scrin Refineries while the structure is being built can cause the Harvesters to queue at the wrong place and caused an exploit of immediate deposit of Tiberium
	* Added Docking Bones to the Build Skeletons
#### Outposts
1. Do not have Type Description
	* Added Type Description as "Expansion Strucure"
		* Each Main Faction now have their own string set instead of Scrins
		* String File originally had as "Production Structure"
#### Ion Storm
1. Structures can not be built under Ion Storms
	* Removed geometry data
2. Units teleported with Mastermind or Prodigy under Ion Storms can instantly die
	* Removed Crusher Data
#### Support Powers
1. Some new Support Powers do not use unique icons or radius cursors, despite being available and compiled
	* Swap the icons and radius cursors to the appropriate textures
		* Powers Affected
			* Zone Raider Drop Pods (Icon)
			* Decoy Temple of Nod (Icon)
			* Ichor Seed (Cursor)
			* Shock Pods (Cursor)
2. Superweapons and some destructive powers have an OCL to destroy trees and other props, however this also affects destroyed objects, which presents a problem to NOD turrets as they will be permanently destroyed.
	* Delete CLEAR_REMOVABLES flag from the OCL due to the issues. Trees will still be crushed but many props will be preserved
#### UI
1. In TW, if a single Aircraft with Ammo was selected, ammo would be displayed in the unit portrait. This feature is not in KW
	* Modified TacticalHUDSelectionDetails, now ammo will be displayed in the unit portrait
2. In the Settings, the Network Tab had a divided background similar to the Hotkeys Tab. Additionally, the background appears darker
	* Fixed background for Network Tab and adjusted every background to have the same brightness.
3. Disconnect Screen design was not updated in KW after being updated in TW 1.06
	* Changed design of Disconnect Screen
4. Unique to Network or online games, when playing with Widescreen, just before the game finishes loading, players can see the map around the background image. This does not occur in Tiberium Wars.
	* LoadScreen APTUI was missing the HideWideScreen ShellContent Importation.
5. Skirmish or Multiplayer games load screen design was not updated in KW after being updated in TW 1.05
	* Changed design of MP Load Screen
		* Using a different background as a placeholder as the original background can not be found.
6. Skirmish or Multiplayer Timeline bottom bar was too long, causing the save replay button to overlap. (This does not affect replay timeline for some reason)
	* Shorten length of image and geometry
7. Mission Debrief, the Objective headers were still blue instead of yellow. Additionally two bars that briefly appear before the Medal is revealed is also blue.
	* Changed header colors to yellow and bars to red.
8. Credits text are blue
	* Changed Credits text to Red to match the Kane's Wrath Aesthetics
#### Radius Decals
1. Some objects repair and propaganda decal radius can be seen by other players when selected by the owner
	* Set the decal to only be seen by the Local Player (Undocumented fix for other structures in TW 1.05)
		* Objects Affected
			* MRT
			* Reclamation Hub
			* Voice of Kane
			* Redeemer Engineering Facility
2. Repair and Sensor pod textures are offset and have misaligned elements
	* Remade textures
3. Decal Size
	* Adjusted size to be more accurate to the radius, scaling the margins
		* Objects Affected
			* Battlebase
			* MRT
			* Sensor Pod
			* Confessor Cabal
			* Purifier
			* Voice of Kane
			* Disruption Pod
			* Eradicator Hexapod
#### AI
1. Campaign AI design was not designed properly, structure based on Multiplayer AI. In TW, there are clear differences between Campaign and Multiplayer Skirmish AI in terms of structure and design.
	* Redesign Campaign AI
2. Multiplayer AI was not adjusted for KW 1.01 and 1.02 new economy
	* Redesign Multiplayer AI
#### Scoring
1. Some units are not valid to appear in the Favourite Units section
	* Added KindOf Flag CAN_BE_FAVORITE_UNIT
		* Objects Affected
			* Militant Rocket Squad
			* Gun Walker
			* Devourer Tank
			* Drone Ship
			* Explorer
			* Mothership
		* Removed flag from Mechapede Segments
#### Africa Civilian Props Missing Textures
1. African Civilian props are missing Specular and Normal textures, causing them to glow
	* Compiled new (but cheap) Specular and Normal maps
#### Civilian Props Destruction
1. Some props added to Kane's Wrath when destroyed transform into an Egyptian Market
   * Adjusted draws to not use the Market model
		* Objects Affected
		   * Africa Prop 01 - 02
		   * China Prop 01 - 02
		   * Russia Prop 01 - 02
#### Civilian Struture and Prop Geometry
1. Structures added into Kane's Wrath have inconsistent geometry
	* Adjust geometry to be accurate to the model
		* Objects Affected
		   * Africa Prop 01 - 02
		   * Africa Wall 01 - 02
		   * China Structure 01 - 06
		   * China Prop 01 - 02
		   * China Wall 01 - 03
		   * Russia Structure 01 - 06
		   * Russia Prop 01 - 02
		   * Russia Wall 01 - 03
#### Multiplayer Maps
1. Some Maps do not spawn Crates when Multiplayer game has Add Random Crates enabled
	* Added GenericCrateSpawner object to each map that is missing said object
		* Maps Affected
			* Decrepit Arena (MAP_MP_2_BLACK2_redzoned)
			* Gunship Gauntlet (MAP_MP_2_BLACK11_redzoned)
			* Tiber River Valley (MAP_MP_2_BLACK8)
			* Top Gun (MAP_MP_2_BLACK11)
			* Tournament Coastline (MAP_MP_2_CHUCK1)
			* Tournament Decision(BAMAP_DC05_2)
			* Tournament Rift (MAP_MP_2_WILL1)
			* Split Decision (BAMAP_DC05_3)
			* Suburban Slaughterhouse (BAMAP_EW09_03)
			* Tundra Triangle (BAMAP_KK03_3)
			* Arid Remains (BAMAP_DC06_4)
			* Coastline Chaos (MAP_MP_4_CHUCK1)
			* Eastern Promises (BAMAP_EW08_04)
			* Empire City (BAMAP_DC11_4)
			* Heaven and Hell (BAMAP_RH01_4)
			* Missed Opportunity (BAMAP_SB01_4)
			* Mountains of Madness (BAMAP_DC07_4)
			* Murderers Row (BAMAP_DC10_4)
			* Oasis Onslaught (BAMAP_EW03_04)
			* Safety Nest (BAMAP_EW05_04)
			* Shell Shocked (BAMAP_EW06_04)
			* Unsound Investment (BAMAP_EW01_4)
			* Urban Blight (BAMAP_EW07_04)
			* Isthmus of Insanity (BAMAP_EW11_05)
			* Dark Waters (BAMAP_JF03_6)
			* Tiberium Wasteland (BAMAP_EW10_06)
2. Some Red Zone Maps are missing weather overrides to make clouds larger, lower volume of light rays and move slower
	* Added Weather overrides for the maps based of Tiberium Wars values
		* Maps Affected
			* Crater of Carnage (MAP_MP_4_BLACK1)
			* Missed Opportunity (BAMAP_SB01_4)
			* Red Zone Rampage (MAP_MP_4_RAO)
			* Tiberium Gardens III (MAP_MP_5_BLACK1)
			* Dead Six (MAP_MP_6_Hayes)
			* The Rocktagon (MAP_MP_8_BASS)
3. Missed Opportunity (BAMAP_SB01_4) light rays do not represent the cloud formation
	* Changed cloud texure used for the map that matches the light rays
#### Global Conquest
1. Units contained in Upgraded Strike Forces can be given upgrades that can not and should not benefited from
	* Removed upgrade in WorldMapArmoryUpgradesAllowed
		* ZOCOM Predator Tank (Railgun)
		* ZOCOM Mammoth Tank (Railgun)
		* BH Fanatics (Tiberium Infusion)
		* BH/MOK Raider Buggy (Laser Capacitor)
		* BH/MOK Scorpion Tank (Laser Capacitor)
		* T59 Seeker (Attenuated Forcefields)
		* T59 Gun Walker (Attenuated Forcefields)
		* T59 Annihilator Tripod (Forcefield Generator)
	
### Campaign

#### The Rio Insurrection
1. Radio Station would reduce armor of surrounding units instead of increasing
	* Changed Armor Attribute Modifier to match Confessor
#### What's Rightfully Ours
1. Stealth Lab belong to Neutral instead of Steel Talons
	* Added team for Steel Talons that is NOT enemies with Nod.
#### Persuade Him...
1. AI would not attack the player and would instead camp the base
	* Adjusted scripting to gurantee attacks from AI
2. One of the Reckoner defending the bases is assigned Team Neutral instead of Black Hand Team.
	* Changed team of Reckoner
3. All walls and Bunkers belong to Neutral Team instead of Black Hand
	* Added team for Black Hand that is not enemies with Nod.
4. Bunker Doors can be destroyed, breaking the scripts
	* Bunkers can no longer be destroyed. (They can still be targeted)
5. Pulse Scanner idle animation is unused
	* Added Idle Animation to GameObject, the antennae will spin around
		* Exist in Worldbuilder stream, has to be recompiled in map
		* May try to find a way to have it target nearby units as the model Skeleton hints at this
#### A Grand Gesture...
1. Nod Soldier Dialog commenting on GDI Tiberium Lab was not triggered due to object the sound would come from does not exist
	* Reassigned object Nod Soldier Dialog would speak out of (MCV)
#### Keys to the Kingdom
1. Reckoners provided are Black Hand Reckoners instead of Nod
	* Changed Reckoners to Nod
#### The Doctor Vanishes
1. Girauds Lab, Walls and Spaceport belong to Neutral instead of GDI
	* Changed Faction owners
#### MARV Rising
1. Redeemer was supposed to have both Damage and ROF buff for the mission. Instead ROF was nerfed
	* Changed Attribute Modifier so Redeemer is fully Buffed
2. MARV from East ZOCOM base has both missile and sniper modules on the same tread
	* Changed upgrade unlocks in the map file so missile and sniper use different treads
#### The Betrayal of Killian Qatar
1. All walls and Bunkers belong to Neutral Team instead of Kanes Nod
	* Added team for Kanes Nod that is not enemies with LEGION and Alexa.
#### Hearts and Minds
1. Player can use Decoy Army and Radar Jamming Missile despite the two abilities never being available in ALL Campaign Missions.
	* Library maps were not added to the mission map. Added the necessary Campaign Libraries
#### Tacitus Interruptus
1. According to the scripts, Reaper 17 was supposed to send constant waves of it's army, depending if all a specific unit is destroyed (If all Ravagers are killed, send in another wave of Ravagers)
	* Reaper 17 will now spawn waves of units when army is destroyed
2. EVA uses wrong sound file for Tiberium Vein Detonation Bonus Objective
	* Change dialogue file to "MN27_NodEVA13"
#### Will Made Flesh
1. Walls belong to Neutral Team instead of GDI
	* Changed Faction owners
#### Tacitus Regained
1. After the outer barrier is destroyed, units can go through the inner barrier when it is still enabled
	* Fixed script

### GDI:

#### Railgun
1. Railgun Core particle effect uses FXRailgunThread texture instead of FXRailgunCore
	* Particle effect now references the correct texture
#### Doors
1. Barracks and Warfactory doors default to the open position when healed to 100%
	* Adjusted PARSE_DEFAULT animation state calling for the last frame of the closing animation instead of the first frame of the opening animation
#### Grenadier Squad
1. AI will not use EMP Grenades ability
	* Added modules that will allow them to use it
2. When using Formation move, the formation texture uses Rocket Symbols
	* Fixed Texture Coordinate in FXGrenade_FP.w3x
3. Dead squads won't count towards Units Killed and Units Lost in score screen
	* Added SCORE flag to the squad KindOf
#### Sniper Team
1. ZOCOM Teams would have GDI Sniper and Spotter instead of their own
	* ZOCOM will now use ZOCOM Sniper and Spotter in their teams
#### Zone Trooper
1. Scanner Packs upgrade is required to show Power Packs subobject
	* The Hierarchy of the bones regarding Scanner Packs creates this error as it is attached to ZT_SPINE2. Separated Scanner Pack subobject into it's own bone
2. UGJUMP subobject is unused for Jump Jet ability
	* Created new draw that controls showing the UGJUMP subobject using animation scripts
3. Squad Range Finder was increased due to sharing with Zone Raider and that having slightly higher attack range rather than separating the Range Finder weapons
	* Separate Zone Trooper and Zone Raider Range Finder weapon and reduced the range of the Zone Trooper version to match TW
#### Zone Raider
1. Scanner Packs upgrade is required to show Power Packs subobject
	* The Hierarchy of the bones regarding Scanner Packs creates this error as it is attached to ZT_SPINE2. Separated Scanner Pack subobject into it's own bone
2. UGJUMP subobject is unused for Jump Jet ability
	* Created new draw that controls showing the UGJUMP subobject using animation scripts
3. Unit cannot Force Fire against allies
	* Added ALLIES to "Radius Damage Affects" to the weapon launcher. Weapon will not damage allies unless targeted with Forced Fire
4. Infantry may not be able to catch up to the squad while moving
	* Reduced squad speed to match the Zone Trooper squad speed
#### MRT
1. Leash range of Repair Drone was not changed from KW 1.01 to 1.02, despite specified in change log
	* Fixed leash range to 100
2. Repair Drone would not keep up with the MRT when moving
	* Increased speed of repair drone so that it can keep up with the MRT, including when transported with OX Transport
3. Repair Drone would repair Structures, Air units and funnily enough Infantry
	* Removed ability to repair Structures, Air units and Infantry
4. Not necessarily a bug but there was no way to instantly evacuate infantry due to too many abilities
	* Remove "Move to Evacuate Ability" in favour of evacuate infantry
5. Speed of the MRT was based of the APC before TW 1.05
	* Increased speed to match APC
6. There are no sounds for units entering and exiting garrison
	* Added sound effects
7. Unit cannot be ordered to target an object, even when units are garrisoned
	* Added a weapon template, unit can be ordered to target and enter into range
		* Removed Turret Bone references in GameObject
#### Titan
1. Units limping animation is used in the DAMAGED state (Below 66% health)
	* Decided to remove it so it would only be used in the REALLYDAMAGED state (Below 33% health)
2. Did not play a seperate animation when EMPed. Instead it continued to loop the animation it was in before EMP strike
	* Other Mech units used the Bored animation. This technique was applied
3. With Adaptive Armor upgraded or used, when destroyed it will use the standard model, with the special ability activated it will still show the Armor effect.
	* Added new Model Conditions that reference the Rubble Model when DYING with the upgrade or using ability
4. Rubble model is the same as the base model
	* Created new Rubble model with debris and have a noise modifier applied (Stygs)
5. Geometry is a box unlike other walkers which use cylinder
	* Changed geometry shape to cylinder
#### Harvester
1. The Tiberium meter on the rear of the Harvesters shows when destroyed, conflicting with the destruction model
	* Tiberium meter is hidden when destroyed
2. Steel Talons and ZOCOM Harvesters harvests at a slower rate. Rate is based of TW Pre 1.05 Patch.
	* Normalised values with GDI Harvester
3. ZOCOM Harvester had no unique Rubble Model, Debris and Damaged Textures, using GDI textures.
	* Created new models for Rubble, Debris and created new textures.
#### MCV
1. Subfaction MCVs when trained from their respective Warfactory would have the Created voice line delayed. Additionally, all built from the Reclamation Hub suffer the same problem
	* Unit Voice Array had ObjectSpecificEntry for when unit is created from Warfactory. All referenced GDI Warfactory. Changed to reference their own Warfactory and added the Reclamation Hub SpecificEntry for each faction.
#### Wolverine
1. Did not play a seperate animation when EMPed. Instead it continued to loop the animation it was in before EMP strike
	* Other Mech units used the Bored animation. This technique was applied
2. Destroyed State uses the incorrect texture
	* Destroyed unit will use the damaged texture
3. Formation Preview model flashes instead of having a scanline effect like the other units
	* Fixed Mesh, giving second set of Texture Coordinates (Stygs)
#### Rig/Battlebase
1. Subfaction Rigs when unpacking would create GDI Battlebase instead of their own. The same happens with Subfaction Battlebase packing GDI Rigs
	* Packing and unpacking will now create the corresponding faction version
2. When upgraded with railguns does not display upgraded models
	* Railgun subobjects were added to the models, railguns will now be displayed when upgraded
3. GDI and Steel Talons has no upgrades listed in the description
	* Added railguns upgrade in the description
4. Cannons rate of fire and projectile speed is based of TW version. Guardian Cannon ROF and damage was changed between TW and KW
	* Increased Battle Base cannons ROF and decreased damage to better represent current Guardian Cannon
5. Railgun Rate of Fire
	* Rate of Fire reduced and damage increased due to Guardian Cannon changes
6. Subfaction Rigs when trained from their respective Warfactory would have the Created voice line delayed. Additionally, all built from the Reclamation Hub suffer the same problem
	* Unit Voice Array had ObjectSpecificEntry for when unit is created from Warfactory. All referenced GDI Warfactory. Changed to reference their own Warfactory and added the Reclamation Hub SpecificEntry for each faction.
#### Slingshot
1. There are no unique tracers for Heroic level when using Tungsten Shells
	* Created and added tracers for Heroic Tungsten
2. Unit still hovers when EMPed
	* Created animation based on Shatterer LOWA animation
3. Unit has range change when upgrading to Tungsten Shells
	* Reduced base weapon Range from 355 to 350 matching upgraded version
4. SkirmishAIInformation ConquerMetricsOverrideAntiMask
	* Changed ConquerMetricsOverrideAntiMask from ANTI_GROUND to ANTI_AIRBORNE_VEHICLE and ANTI_AIRBORNE_INFANTRY
		* Changed WeaponCategory to MISSILE to lessen priority against Infantry and increase priority against Air units.
5. When destroyed, unit still had Hover Dust Effect.
	* Added DYING Model Condition State to have no Particle Systems.
6. Particle Effects appear in Formation Preview
	* Adjusted Draw to prevent FX in appearing in Formation Preview
#### Shatterer
1. AI will not use the Unit
	* Added ConquerMetricsOverride for DPS and Damage Type to 300 and CANNON
		* This may be due to the AI not recognising the damage from LinearDamageUpdate Sweep weapon as this was done with the Sonic Emitter.
2. Unit does not play Death animation when destroyed
	* Swapped the DYING Model Condition State between TankDraw and ScriptedModelDraw. Will now play animation.
		* The DYING Model Condition State with the Rubble model was used in the Particle Effects ScriptedModelDraw instead of the TankDraw. The Model Condition States in the TankDraw defined no model.
		* Normalised SlowDeath Parameters with a 3 second delay.
3. Animations
	* All animations adjusted the location and orientation of damage fire FX bones insignificantly. Removed unecessary Channels relating to such bones in all animations
4. Unit cannot damage Husks
	* Performed workaround to allow unit to damage husks by adding a projectile. This workaround means that the unit can only damage targeted Husks
#### Zone Shatterer
1. AI will not use the Unit
	* Added ConquerMetricsOverride for DPS and Damage Type to 300 and CANNON
		* This may be due to the AI not recognising the damage from LinearDamageUpdate Sweep weapon as this was done with the Sonic Emitter.
2. Unit does not play Death animation when destroyed
	* Swapped the DYING Model Condition State between TankDraw and ScriptedModelDraw. Will now play animation.
		* The DYING Model Condition State with the Rubble model was used in the Particle Effects ScriptedModelDraw instead of the TankDraw. The Model Condition States in the TankDraw defined no model.
		* Normalised SlowDeath Parameters with a 3 second delay.
3. Animations
	* All animations adjusted the location and orientation of damage fire FX bones insignificantly. Removed unecessary Channels relating to such bones in all animations
4. Weapon Slots had different parameters and behaviours to GDI Shatterer
	* Normalised weapon slot parameters and behaviours
5. Many FX attached to the unit appear higher than they should.
	* Created new skeleton that aligned the bones with the mesh.
		* The Zone Shatterer mesh was lowered as it was too tall for the Warfactory but still shared the standard Shatterer skeleton which meant every bone was higher than it was supposed to be (even the bones made specifically for the Zone Shatterer)
		* Removed Shatterer bones from Zone Shatterer skeleton and vice versa
6. Unit clips through the Warfactory as it accelerates and leans forward (despite already being lowered for this reason).
	* Created new Locomotor specific for the Zone Shatterer reducing the ForwardAccelerationPitchFactor and increasing PitchDamping.
7. Overload ability would only affect the unit targeted instead of all objects in sweep weapon's path. The functionality is unusual, sweep weapon will be fired normally, along with a projectile which will deal the extra damage.
	* Changed weapon behavior, special ability will now force the unit to have an attribute modifier increasing damage of sweep weapon. Special ability weapon no longer does damage
#### Mammoth Tank
1. If playing with Low model LOD setting, uses Low LOD model. Adaptive armor uses High LOD model
	* Added Low LOD model for Adaptive Armor
		* Also fixed shaders for Low LOD Railguns
2. Missile Pods do not use Shaders for Adaptive Armor
	* Changed shaders of ROCKETPODS subobject
3. With Adaptive Armor upgraded or used, when destroyed it will use the standard model, with the special ability activated it will still show the Armor effect.
	* Added new Model Conditions that reference the Rubble Model when DYING with the upgrade or using ability
4. Heroic Missiles do not play sound effects when impacted
	* Added DetonateCallsKill="true" to trigger the OnDeath effects
#### Juggernaught
1. Decoy Sniper Teams can be used to spot for bombardment
	* Added CLONED state to be disallowed in Special Power
2. Nod Shadow Beacons can be used for Spot For Bombardment ability
	* Filtered out Shadow Beacons for Bombardment Special Power
#### Behemoth
1. When recovered by engineer, it plays the animation used to leave Warfactory after the getting up animation
	* Changed model so only one is used for build and default state
2. Left leg pistons were bugged
	* The Above fix has removed this issue
3. Husk model uses standard mesh instead of the rubble mesh like the Juggernaught and Avatar.
	* Husk model now appears more destroyed. The generated Debris actually make sense now.
4. Formation Preview may move around according to the animation it is currently in
	* Forced no animation to be played at ModelState
#### MARV
1. Only required Tier 2 structure (Command Post) compared to other factions which required their respective Tier 3 structure (After Reclamation Hub is deployed)
	* Changed RequiredObject to Tech Center
2. Weapon ID Ordering
	* Changed Weapon ID ordering. (Only Force Firing Ground) ~~Now unit will move into range of Main Cannon. Modules with shorter range will require a separate move order to move into range~~
3. When there is a Sniper Module, unit will enter range for Sniper but will remain outside of the Main Cannon range.
	* Reduced range of Sniper Module to match Main Cannon
4. Sniper Module Rate of Fire and Damage values are representative of Sniper Team before KW (TW 1.09)
	* Reduced Clip Reload Time to 1.7 and Reduced damage to 400
5. Railgun distortion effect override each other. Therefore if more than one railgun module is firing, only the latest shot will have a distortion effect.
	* Added new Weapons, Laser Draws and Laser States.
6. Turrets can have weird behaviors, rotation is based on eachother
	* Removed Turret Hierarchy Setup so there are no dependencies on rotation and weird behaviors.
7. Model was not dynamic based on design
	* Added Articulations to the treads
8. Model, Skeleton and Animations needs refinement
	* Fixed Model, Skeleton and Animations
9. If unit was Forced Stopped while moving and turning, animation snaps
	* Added animation to default state with blend time
10. Turning animation is backwards when Reverse Moving, while this happens on most units it is most noticeable for the MARV
	* Added new animation states for Reverse moving.
#### Orca
1. When playing with Low LOD settings, Wings and Sensor Pod subobjects are missing
	* Fixed subobject bone reference for Sonic Cannon. In the Skeleton, the Sonic Cannon Mesh reference Bone is the parent of the subobjects of the Wings and Sensor Pod. Since it is Hidden, any mesh referencing child Bones will also be hidden
2. Exhaust effect only appears from the left thrusters
	* Reassigned the right jetwash to the correct bone instead of the left thrusters.
#### Hammerhead
1. Will not prioritise infantry over other units
	* Changed Weapon Category from NONE to GUN
2. ZOCOM fired both normal and heroic tracers
	* Changed the "StatusBitsUpgrade" with ID "ModuleTag_ZOCOMNoVeterancyUpgrade" to be triggered by "Upgrade_ZOCOMFaction" instead of "Upgrade_SteelTalonsFaction"
3. Tracers and Muzzle FX will not properly exit from all weapon bones
	* Renamed weapon bones in GUHamhead_SKN.w3x and adapted the changes in the "gameobject"
4. Unit can be used to deflect Beamcannon beams
	* Removed Flag
5. Weapon is set up to have unlimited clip size but uses different method compared to other weapons that also have unlimited clip size
	* While inconsequential, will now have a ClipSize of "0" and given a tiny firing duration.
6. Unit only leaves behind small debris when destroyed, does not leave a husk to crash to the ground like other air units
	* Added model from APOC's art pack, new debris object and added it to the "OCL_GDIHammerheadInitialDebris" OCL
#### FireHawk
1. Contrails show when in Formation Preview and when Stratofighing
	* Changed how draws work. Particle Effects will not show under specific conditions, use PARSE_NORMAL Condition "NONE" instead of PARSE_DEFAULT
2. ZOCOM Firehawks would not display Stratofigher thrusters properly, especially when upgraded with Ceramic Armor
	* Fixed Animations
3. Unit can be seen through, mainly with Ceramic Armor textures due DXT compression creating Alpha pixels
	* Removed alpha support
#### Ox Transports
1. Particle Effects appear in Formation Preview
	* Adjusted Draw to prevent FX in appearing in Formation Preview
2. Steel Talons and ZOCOM Ox transports health use values before TW 1.05
	* Increased Health to 2500 to match GDI's version
#### Construction Yard
1. Selling ZOCOM Con Yard would give you GDI Rifle Squad and GDI Engineer
	* Changed OCL to spawn ZOCOM Rifle Squad and ZOCOM Engineer instead
#### Command Post
1. Upgrading Sensor Pods and Scanner Packs show the incorrect Subobject
	* Swapped the ShowSubObjects between Sensor Pods and Scanner Packs
2. Scanner Packs sub object can be shown for Steel Talons if upgraded from a GDI or ZOCOM Command Post, even though they don't have the upgrade available
	* Removed SubObjectsUpgrade for Scanner Packs for Steel Talons
#### Airfield
1. When selected to be deployed, the upgrade subobjects will appear when replacing cursor. This does not happen with other structures
	* Hide subobjects in animation state
2. Subfactions AI would not use bombing runs and bloodhouds
	* Added the ability for the AI to use the Support Power
3. Upgrade subobjects uses Generic shader instead of the GDI shader
	* Changed shader to ObjectsGDI.fx
4. A Hardpoint subobject would appear in REALLYDAMAGED state when upgrade hasn't been purchased
	* Fixed typo; renamed subobject UG_HARDPOINTS03Z to UG_HARDPOINTS03
#### Armory
1. If owning both GDI and ZOCOM armory and upgraded Composite Armor, subobject will be showed on both despite ZOCOM not having access. It also overlaps Field Suits subobject
	* Removed Composite Armor upgrade references from ZOCOM Armory
#### Tech Center
1. Tech Center Telescope animation is bugged, socket does not move with telescope
	* Fix animation to match with correct bones
		* Additionally, animation will not play when Not Powered or EMPed
2. ZOCOM AI will not use Sharpshooter ability
	* Added the ability for the AI to use the Support Power
#### Space Command Uplink
1. Smoke Effects do not appear. It is possible an attempt was made to add distortion affect but removed the smoke
	* Fixed Particle Effects to match TW (Will need to find a way to add distortion effect)
#### Reclamation Hub
1. The ramp in Low LOD in the REALLYDAMAGED state appears in the incorrect position
	* Fixed bone references for the REALLYDAMAGED model
2. The ramp does not show arrows pointing to the exit
	* Give FX_GUIDEARROWS mesh SortLevel 1
3. Ramp animation when the MARV exits the structure is conflicting
	* Fixed animation so the ramp tilts earlier
4. Lights are clipping with the mesh
	* Adjustments made to the light mesh (Masterleaf)
#### Crane
1. Damaged model had an extra clean mesh on top of the damaged mesh which nullifies missing segments
	* Removed extra mesh
2. Has no Faction Colors due to new HC map for Guardian Cannon. Even with the old HC map, there are no Faction Colors with Low LOD model
	* Created alternate Guardian Cannon SPM texture with old HC map and added HC section to the Crane claw part in Conyard SPM
		* HC on claw affects MCV
3. Crates do not appear in the preview cursor. This is because the source texture has alpha which is what hides the crates in the preview
	* Replaced texture to not have alpha
		* Use new texture that requires adjusting of UVs, added Specular and Normal mapping and uses ObjectsGDI shader
#### Dig In Structure
1. Advanced units from the Base Factions can not garrison in structure whereas Sub Factions can
	* Exclude Sub Faction advanced units from garrison Dig In Structure
#### Guardian Cannon
1. GDI railgun upgrade is missing in the upgrade icon area and description
	* Added display upgrade and changed the description to add the detail
2. When affected by Railgun Accelerator, fire rate is too fast for recoil animation
	* Reduced Rate of Fire, increasing overall cooldown from 1.8s to 2.3s and increased damage proportionaly to from 525 to 670
3. Low LOD Rubble Model uses standard textures instead of damaged
	* Swapped textures to be the damaged version
#### Sonic Emitter
1. AI underestimates the DPS output of defensive structure (Damage was buffed in TW 1.05 to counteract a bug fix but AI DPS was never updated in TW or KW)
	* Increased ConquerMetricsOverrideDPS to 500
2. Structure cannot damage Husks
	* Performed workaround to allow unit to damage husks by adding a projectile. This workaround means that the unit can only damage targeted Husks
#### Combat Support Airfield
1. Online Games causes desyncs when Structure is created
	* Removed POWERED_POWERS_ONLY KindOf Flag which is possibly causing Desyncs
2. Particle Effects at damage states were borrowed from Airfield
	* Removed Particle Effects
3. Landing Pad order is different to the Airfield
	* Changed the order to represent the Airfield
4. Radar Dish is not present as shown in unit portrait unless under construction or destroyed.
	* Added Radar Dish to Base and Damaged model and adjusted animations to have it function.
5. Geometry is inaccurate, based of GDI Airfield
	* Adjusted geometry to be more representative of the model
#### Ion Cannon Control Center
1. Animations don't play properly when firing the Ion Cannon
	* Changed how the Animations work, changing Conditions and using Transition animations and increased PackTime to 8 seconds so the Satellite stays open throughout the entire Ion Cannon animation
#### Scanner Pack
1. After the scanner packs upgrade, Unit will not aproach the range to fire their weapon. In fact they will continue their running animation but will not move.
	* Allowed scanner pack to upgrade weapon range
2. GDI and ZOCOM upgrades are not shared, despite same cost and upgrade time
	* Removed ZOCOM variant and will use GDI instead so upgrade is shared between factions.
#### Hardpoints (And ZOCOM Orca Cannon)
1. When aircraft with Harpoints would dock to reload, sound would not play
	* Added sound effects to reload
#### Ceramic Armor
1. There are no damaged textures for for upgraded units
	* Created damaged textures
#### Composite Armor and Tiberium Field Suits
1. When Missile Squad is upgraded, the extra 50% vulnerability from GUN damage is removed
	* Increased GUN damage vulnerability by 50% for upgrades
2. Tiberium Field Suits upgrade cost and time were originally based of TW 1.00 Composite Armor stats. In KW 1.02, most upgrades were made cheaper but Composite Armor and Field Suits still don't match
	* Increased cost and build time to match Composite Armor
#### Power Pack
1. GDI and ZOCOM upgrades are not shared, despite same cost and upgrade time
	* Removed ZOCOM variant and will use GDI instead so upgrade is shared between factions.
#### Adaptive Armor
1. When Adaptive Armor was used, it gave the unit a weird appearance with the House Color Glowing too much
	* Created New Shaders
2. There are no damaged textures for for upgraded units
	* Created damaged textures
#### Railgun Accelerator
1. Railgun Accelerator effect on the railgun is bugged with all units either not displaying properly or at all
	* Instead of using Animations, Scripts are used
2. Damage penalty can be removed as soon as object is healed either from Repair Drone or Repair Tool
	* Changed weapon nuggets from DOTNugget to Multiple DamageNugget with delays to when damage is applied

### Nod:

#### Cyborg EMP Ability
1. Cyborg units had the possibility to misfire ability
	* Tweeked range for better performance
2. AI would not use this ability when against vehicles or structures
	* Enabled ability for AI to use
3. Update 1.01 removed pre fire delay of EMP blast ability, however animations were not adjusted as it relys on such delay
	* Added new EMP blast animation that removes the pre fire and adjusted animation states
#### Flame Weaponry (+Tiberium Goo)
1. Purifying Flame, Tiberium Goo and new units that use flame weaponry are missing garrison clearing effect as they inherit the base weapons before TW 1.05
	* Added garrison clearing effect to affected units
2. Purifying Flame, Tiberium Goo and new units that use flame weaponry will de-garrison units the instant it fires
	* Added separate projectile to add delay to de-garrisoning
		* This was an undocumented change for TW 1.05 relating to the addition of garrison clearing effects.
3. Purifying Flame, Tiberium Goo and new units that use flame weaponry Reacquire targets differently to the base weapons use as they inherit the values before TW 1.05
	* Changed ReAcquireDetailType to PER_CLIP
		* This was an undocumented change for TW 1.05
#### Defense Structure Vision Range
1. Vision range for most defensive structures is a lot higher than the weapon range. Therefore when placing the structure, the displayed range would provided misinformation.
	* Reduced vision range of defensive structure
#### Black Hand Structure Selling
1. Selling some structures allowed to create Confessor Cabals at a significant discount.
	* Reduced the amount of infantry units in Confessor Cabal squads to maximum of 4 when strucuture is sold or destroyed.
#### Leadership Buff (Confessor, Confessor Cabal, Purifier, Voice of Kane)
1. Has Fire Rate buff despite being removed in TW 1.09
	* Removed Rate of Fire bonus
2. When affected, each unit has a visual FX. However if closly looked for each squad, there is a visual FX for nothing. This is because the squad object is also affected and an FX is added
	* Excluded HORDE from being affected by Aura
#### Confessor Cabal
1. Unit had Flags that did not allow it to path through infantry
	* Added "PATH_THROUGH_INFANTRY" Kindof flag
2. Unit is not classed as infantry
	* Give the UnitCategory="INFANTRY"
3. If there is access to NOD or MOK Secret Shrine, unit can be upgraded with Tiberium infusion
	* Removed Upgrade
4. Hallucinegetic Grenades
	* Tweeked range for better performance
5. Unit cannot detect stealth units at close range, something that all other infantry unit can do
	* Added Stealth detection to squad
6. Unit prioritise the wrong unit types with weapon
	* Changed WeaponCategory from BLAST to GUN
7. Targetting garrisoned structure changes the cursor representative of garrison clear despite having no ability to do so (Except when upgraded with Black Disciples)
	* Removed "ANTI_GARRISON" Kindof flag
8. AI does not garrison this unit despite basic infantry status (Squad seems to be modified Black Hand squad)
	* Removed "SKIRMISH_AI_DONT_GARRISON" Kindof Flag
9. Unit has range change when upgrading to Charged Particle Beam
	* Reduced base weapon Range from 325 to 300 matching upgraded version
#### Awakened
1. One of the Transition to idle animation can cause the EMP weapon to detatch from the model
	* Removed problematic and unnecessary animations channels relating to the EMP weapon bone
2. If there is access to BH Tech Lab, unit can be upgraded with Charged Particle Beam
	* Remove Upgrade
3. Individual unit used Black Hand portrait instead of it's own (This is noticable in the mission Will Made Flesh)
	* Changed unit portrait to Awakened
4. Unit in Formation Preview uses Black Hand Icon instead of it's own
	* Added new Formation model for Awakened to have unique icon
#### Militant Rocket Squad
1. Black Hand Militant Rocket Squad can be upgraded with Tiberium Infusion with NOD or MOK Secret Shrine.
	* Removed upgrade
2. Marked Of Kane Militant Rocket Squad can be upgraded with Confessor with NOD Secret Shrine.
	* Removed upgrade
#### Saboteur
1. Has directional armor allowing it to take extra damage from the side and back. Typically infantry do not have directional armor penalties
	* Remove Directional Armor Penalty
#### Fanatic
1. Subfaction Fanatics would be affected by their own explosion. This does not occur with Nod
	* Added Subfaction Fanatics to Damage Scalar.
2. Black Hand Fanatic Squads can be upgraded with Tiberium Infusion with NOD or MOK Secret Shrine.
	* Removed upgrade
3. Portrait was zoomed in from TW, hiding the bomb strap
	* Reused Tiberium Wars Portrait
#### Tiberium Trooper
1. Health, speed and weapon damage values were inherited from Black Hand pre TW 1.05
	* Changed values to match Black Hand
2. Upgraded texture has Nod Emblem instead of Marked of Kane
	* Adjusted texture
		* Reduced resolution as texture compile is 256^2, the ArtPack came with 128^2
3. Cloned units can still slow down vehicles
	* Created a second weapon with the AttributeModifierNugget removed to be used by the clonned versions
		* Affects Redeemer
#### Shadow Team
1. Members can be left behind when squad is moving
	* Increased Shadows speed so it is faster than the squad speed
2. Most members of the squad will attempt to fire their weapon outside of the max range after KW 1.02
	* Reduced range of 'range finder' from 225-175 so squad will fully enter into range of their weapons (1.02 Patch refers to weapon range, not squad range)
#### Enlightened
1. One of the Transition to idle animation can cause the EMP weapon to detatch from the model
	* Removed problematic and unnecessary animations channels relating to the EMP weapon bone
2. EMP weapon would 'detach' itself with some animations
	* Fixed bone reference of mesh
3. Low LOD model has Super Charged Particle Beam weapon when upgrade has not been purchased
	* Swapped weapon mesh for Charged Particle Beam, upgraded model now has Low LOD version
4. Will prioritise infantry over vehicles
	* Changed Weapon Category from GUN to CANNON
#### Commando
1. Has directional armor allowing it to take extra damage from the side and back. Typically infantry do not have directional armor penalties
	* Remove Directional Armor Penalty
#### Attack Bike
1. The rockets fired would only come out of one rocket pod
	* Changed bone names so burst would alternate between pods
2. Low LOD model turrets do not rotate
	* While this isn't necessarily a bug, the problem is the Tib Core subobjects would rotate independently on it's own, therefore the bike mesh was changed from normal to skin and now the turrets will move
#### Raider Buggy
1. Laser Capacitor lowers DPS against Infantry
	* Increased Damage Scalar of Laser weapon against infantry from 50% to 75%, matching the base weapon
2. Black Hand unit can be upgraded with Laser Capacitors from captured Nod Tech Center
	* Removed references to Laser Capacitor
3. Marked of Kane missing Call For Transport ability in description. Format for Stealth Detection in description is also incorrect
	* Added Call For Transport ability in string file and fixed formatting
#### Scorpion Tank
1. Black Hand unit can be upgraded with Laser Capacitors from captured Nod Tech Center
	* Removed references to Laser Capacitor
#### Harvester
1. Black Hand variant could not be cloaked with NOD Cloaking Field Support Power
	* Restored ability for it to be cloaked and defaulted parameters
#### MCV
1. MCV when unpacking does not have REALLYDAMAGED state
	* Fixed typo "REALLY4D" therefore MCV will visually appear damaged when unpacking
2. Subfaction MCVs when trained from their respective Warfactory would have the Created voice line delayed. Additionally, all built from the Redeemer Engineering Facility suffer the same problem
	* Unit Voice Array had ObjectSpecificEntry for when unit is created from Warfactory. All referenced Nod Warfactory. Changed to reference their own Warfactory and added the Redeemer Engineering Facility SpecificEntry for each faction.
#### Reckoner
1. Destroyed Model is broken due to incorrect bone references. Additionally destroyed model is too clean
	* Fixed bone references in model container and added noise modifier to model (Thanks Stygs, in particular the noise modifier)
2. When deployed while moving, extra treads appearg
	* Fixed tread draws
3. Structures can be place on deployed Reckoners
	* Added dummy object that spawns when deployed which will prevent structures from building on
4. Engine sounds will still play when deployed despite it being unecessary considering that it permanently cannot move (unless they need it for air conditioning).
	* Removed idle sound from being played when in deployed state
5. Unit can still crush units when deployed
	* Changed the Attribute Modifier CRUSHER_LEVEL to be -100%
		* For some reason this was sufficient with Dozer Blades upgrade. It is possible that the modifier further at the bottom of Behaviors overrides the CRUSHER_LEVEL, as it would not crush Zone Troopers or Shock Troopers but would crush other infantry when deployed.
#### Mantis
1. Turret is not effective at tracking Air Units, often misfiring
	* Improved Turret Settings to match Slingshot
2. Unit could not be cloaked with NOD Cloaking Field Support Power
	* Restored ability for it to be cloaked and defaulted parameters
3. Damage values were inherited from Stealth Tank TW 1.09. Stealth Tank damage was reduced in KW 1.00.
	* Reduced Damage of Rockets to match the current Stealth Tank values
4. Formation Preview model textures appear off.
	* Fixed UV Texture Coordinates
#### Stealth Tank
1. Stealth Model does not include the Tib Core Missile attachment, making the effect seem incomplete
	* Added Tib Core Missile Mesh to Stealth Model
#### Specter
1. Unit will rotate body to fire after deployed
	* Remove requirement RotateToTargetWhenAiming
2. Black Hand variant could not be cloaked with NOD Cloaking Field Support Power
	* Restored ability for it to be cloaked and defaulted parameters
3. Black Hand will randomly play NOD voice sounds referencing stealth. (This is due to inheriting NOD Specter and not removing sounds)
	* Removed NOD variant sound
4. Sniper Teams can be used for Spot for Bombardment ability
	* Filtered out Sniper Teams for Bombardment Special Power
#### Avatar
1. Particle System when in REALLYDAMAGED mode was not shown when using Kane's Edition Skin
	* Fixed Model Condition States
2. Could not comandeer MOK Attack Bike technology
	* Included MOK Attack Bike to be targeted in Special Ability
3. Caputuring MOK Avatar Husk would spawn NOD Avatar instead of MOK Avatar
	* Changed OCL to spawn MOK Avatar
4. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
5. Damaged Textures are inconsistent with the base texture with some elements being outdated
	* Adjusted Damaged Textures to better match the base texture
#### Purifier
1. Will randomly play Avatar voice sounds. (This is due to inheriting NOD Avatar and not removing sounds)
	* Removed Avatar sound
2. Flame weapon would not display Purifying Flame upgrade
	* Added Upgraded Flame Tank texture
3. Flame Weapon does not do extra damage to structures compared to the Avatar
	* Added Damage Scalar to weapons
4. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
5. Formation Preview shows all upgrade objects instead of only the Flame object
	* Adjusted Formation Preview Model.
		* Changed model stance to be more like the Avatar
6. Textures used is based of outdated Avatar texture
	* Updated textures to better match the Avatar
#### Redeemer
1. Had an issue when NOD Confessor or BH Black Disciple are the last member of an upgraded squad of NOD Militants, BH Confessor Squad or Militant Squad entering the Redeemer will cause the unit to freeze
	* Added NOD Confessor and BH Black Disciple to the CanAlwaysEnter and PassengerFilter
2. Flame weapon particle effects would still be when after EMPed
	* Added new state to disable particle effects when EMPed
3. Turrets do not rotate, despite being able to attack 360 degrees
	* Fixed Models and Turret Data
		* Also reduced turret idle angles to significantly reduce chance of turrets clipping through each other.
4. Tiberium Trooper module cannot attack while unit is moving
	* Allowed weapon to attack while unit is moving
5. Attacking animation play for any weapon firing instead of only the main weapon
	* Changed Animation Condition to WEAPONSLOTID_01
6. Unit would play Avatar death voice instead of it's own
	* Swapped VoiceDie Audio Event in FX, removed Generic Voice Die as it was redundant
7. Voice Move Attack
	* Unit will now use Voice Move Attack Audio Event when targetting a unit outside of it's range, requiring it to move.
#### Vertigo Bomber
1. Stealth Model uses it's own Skeleton instead of the standard version, despite sharing animations
	* Changed Container and Mesh to refer to the standard version like the Stealth Tank
2. Stealth Model does not include the Disruption Pod attachment, making the effect seem incomplete
	* Added Disruption Pod Mesh to Stealth Model
3. Bombs are missing an extra sound effect when impacted
	* Added DetonateCallsKill="true" to trigger the OnDeath effects
#### Operations Center
1. Parts of the model are clean in Damaged States
	* Added texture swaps for damaged states in ModuleTag_Draw_Missle
2. Dish does not spin when Radar Jammer special power is ready
	* Separated the Dish from the Missile Model and is used in a different draw with it's own animation
#### Airtower
1. When selected to be deployed, the upgrade subobjects will appear when replacing cursor. This does not happen with other structures
	* Hide subobjects in animation state
#### Secret Shrine
1. Black Hand default side was set to BlackHandSecretShrine (Issues with Worldbuilder)
	* Changed side to BlackHand
2. Cybernetic legs subobject has unused idle animations associated with it which can actually be seen when transitioning betweed damage states
	* Added idle animations to Cybernetic Legs
		* Separated Cybernetic Legs into it's own draw so animation is more consistent
#### Tech Lab
1. AI would use the Redemption Power on friendly vehicles when it is only used on friendly infantry
	* Changed Includes to Infantry
2. When Black Hand Tech Lab is selected to be deployed, some of the upgrade subobjects will appear when replacing cursor.
	* Hide the existing subobjects in animation state
#### Redeemer Engineering Facility
1. Structure can be seen through due DXT compression creating Alpha pixels
	* Removed alpha support
2. Top of the gantries turn red from gray when in the DAMAGED state
	* Fixed texture inconsistency
3. Models and Draws
	* Models, Animations and Draws were redone to reduce redundency and fix certain bugs, such as resetting the Opening animation when entering the REALLYDAMAGED state.
#### Turret Hub
1. Models are bugged, mainly in regards to the turret sections
	* Fixed models vertices and bone influences (Thanks OpenSAGE Blender Plugin)
2. Bones between Standard Hub and Quad Turret Hubs have discrepancy, missing important bones such as StealthDetector
	* Fixed Bones, Unupgraded Hub and Quad Turret Hub uses the same Skeleton per turret type.
#### Shredder Turret
1. If using Nod Shredder Turret and Black Hand Tech Center, upgrade Charged Particle Beams, the Nod Shredder Turret will be upgraged
	* Removed Upgrade for Nod Shredder Turret
2. Black Hand turrets do not display Quad Turret upgrade in the UI
	* Added Quad Turrets to the display list
3. When use as a cursor, the Muzzleflash fx is shown when no Shredders have been placed
	* Added animation state to hide Subobjects when used as cursor
#### SAM Turret
1. Fire sounds are missing when upgraded with Tiberium Core Missiles
	* Added fire sounds to the FireFX
#### Voice of Kane
1. Has Kindof Flag BROADCASTS_INVISIBILITY which may suggest (to the AI) that it has the functionallity of a Disruption Tower
	* Removed flag
2. Structure when sold or destroyed are not supposed to create an Infantry squad. However subfaction structures generates units.
	* Removed OCL from subfaction structures
3. Orientation of structure was not representative of the direction
	* Rotated Mesh
4. It is stated that structure suppresses enemy infantry, this does not happen and there is little evidence to suggest for it to be implemented in final build
	* Remove ability in Description string
#### Air Support Tower
1. Online Games causes desyncs when Structure is created
	* Removed POWERED_POWERS_ONLY KindOf Flag which is possibly causing Desyncs
2. Building and ReallyDamaged states models used the incorrect shader (ObjectsGDI.fx)
	* Changed meshes to use the correct shader (ObjectsNOD.fx)
3. Particle Effects at damage states were borrowed from GDI Airfield
	* Removed Particle Effects
4. All air units faced the same direction when docked
	* Reoriented direction of landing pads, based on the Air Tower (AKA, facing away from the center)
		* Changed order to represent Air Tower
5. Geometry is inaccurate being too large
	* Adjusted geometry to be more representative of the model
6. Build, ReallyDamaged and Rubble Model uses multiple Normal mesh instead of singular Skin mesh
	* Changed model
7. There is a slight model geometry error with one of the Barrels in the model, the Normals are inverted
	* Fixed the problematic normals
8. Damaged FX is too small
	* Changed list to use larger FX
#### Temple Of NOD
1. If units are in the potential blast radius of the Super Weapon when the Missile is landing, even if they move away, they will take the full damage. Concurrently, any units outside can enter the radius and not take any damage
	* Damage is dealt from the death of Missile seed object instead of using a Delay in the weapon nugget of the launch weapon
2. Nuke does no damage when fired and then Stasis
	* Above fix solves this issue
#### Tiberium Infusion
1. Upgrade removes Militant Rockets and Fanatics extra GUN damage type vulnerability
	* Added the extra damage from GUN to Tiberium Infusion Armor (Created new armor for Militant Rocket)
#### Confessor
1. Unit in squads does not properly path through infantry
	* Added "PATH_THROUGH_INFANTRY" Kindof flag
2. Weapon Range
	* Weapon Range is nerfed due to changes to Confessor Cabal
3. The animation to throw grenades is not synced with the grenade throw
	* Changed NODConfessorGrenade weapon timing, fire duration is shorter but clip reload time is longer so ROF is the same
4. Unit would benefit from Charged Particle Beams from a Black Hand Technology Assembler
	* Removed Upgrade
5. Unit would not be upgraded with Tiberium Infusion in an Upgraded Strike Force in Global Conquest
	* Added Upgrade_TiberiumInfusion in WorldMapArmoryUpgradesAllowed
6. Upgrade sound effect is applied to infantry members instead of the squad
	* Removed upgrade sound effect from members to the squad units
#### Black Disciple
1. Black Disciple can be upgraded with Purifying Flame. This is an issue as it would mean that Confessor Cabals have access to 3 Tech Upgrades (Charged Particle Beams + Black Disciples) where the max is 2
	* Remove Purifying Flame upgrade to Black Disciples to ensure max tech upgrade of 2
#### Purifying Flame
1. Description
	* Improved description of upgrade
#### Tiberium Core Missiles
1. Units with this upgrade would use two models for 'Base' and 'Upgrade' when it could of just hide and show subobjects
	* Changed SKN files so it would only require to hide and show objects
2. Weapons have damage scalars that match values before TW 1.05, significantly buffing the weapons against aircraft
	* Adjust damage scales to match unupgraded counterparts
#### Decoy Army
1. Can select and clone Drone Ships
	* Removed Drone ships from being cloned
#### Power Signature Scan
1. Support Power deducted resources twice, as the SpecialPower Update Module attribute UpdateModuleStartsAttack was not set to "true"
	* Set attribute for SpecialPower Update Module "ModuleTag_PowerSignatureScan" UpdateModuleStartsAttack to "true"
		* Fixes sound playing twice
#### Cloaking Field
1. Advanced Units have a damage reduction to ability except for Sub-factions
	* Applied damage reduction to Sub-faction Advanced Units
#### Shadow Strike Team
1. Marked of Kane Strike team spawns NOD Shadows instead of MOK Shadows
	* Created new Support Power for MOK Shadows
#### Tiberium Vein Detonation
1. Weapon was not nerfed despite being documented in 1.01
	* Nerfed detonation damage by 20%
2. Support Power is considered to be a Super Weapon to the AI
	* Changed Support Power Type to SPECIAL_POWER_ENEMY_TYPE_KILLER_STRUCTURES
		* Will need to test it's attack restrictions
3. Support Power deducted resources twice, as it deducted for OCL and WeaponFire
	* Removed WeaponFireSpecialAbilityUpdate, created a new OCL to spawn a "trigger" GameObject that will create another OCL for the GameObject FloodUpdate and a FireWeaponUpdate for the large detonation
		* This appeared to be a planned fix by EA as it was supplied with APOC's xml files.
4. If units are in the radius of the Power when it is activated, even if they move away, they will take the full damage. Concurrently, any units outside can enter the radius and not take any damage
	* Same solution as above. The "trigger" GameObject will control the timings of the weapon with FireWeaponNugget instead of the WeaponTemplate as it only delays damage.
		* APOC's xml files have different Weapon timings. Instead tried to replicate the current timings of Support Power.

### Scrin:

#### Conversion Beam
1. Inconsistencies with Damage FX between multiple units
	* Normalised type to GDI_RAILGUN
#### Buzzer
1. Subfactions use Scrin Buzzer instead of their own
	* Create new buzzer units for each faction
		* Subfaction Buzzer Swarm Support Power will use the new Buzzers
#### Disintegrator
1. Reaper 17 uses Scrin Disintegrator instead of their own
	* Create new disintegrator units for Reaper 17
2. Traveler 59 uses speed values before TW 1.05 Patch
	* Increased squad speed from 50 to 65
3. Crush Damage Penalty would be applied to subfaction Scorpion tanks with the Dozer Upgrade
	* Damage is no longer applied to subfaction Scorpion tanks with the Dozer Upgrade
#### Assimilator
1. Reaper 17 uses Scrin Assimilator instead of their own
	* Created Reaper 17 assimilator units for Reaper 17, edited required structures and husks to support new engineer unit.
#### Cultist
1. Armor, in particular CANNON vulnerability is representative of general Infantry Armor before TW 1.05
	* Reduced CANNON vulnerability to 25%
#### Ravager
1. When firing or using Tiberium Agitation, projectiles or laser exits the wrong area, above it's head
	* Animations moved weapon firing bones above it's head for some reason. Removed ChannelScalars ChannelQuaternions specific for Weapon FX Bones in all animations.
2. Tiberium Agitation target requirements are inconsistent, it does not target Scrin Devourer Tank and BH and Mok Power Plant with Tiberium Core upgrade.
	* Fixed targeting parameters of Tiberium Agitation. Will now target Scrin Devourer Tank, BH and Mok Power Plant with Tiberium Core upgrade. Additionally will not target units that are empty of Tiberium
3. Blue Shards upgrade would cause the Tiberium part to disappear momentarily
	* Set upgrade FadeTimeInSeconds 0s
4. Tiberium Agitation effects are incomplete
	* Added DetonateCallsKill="true" to trigger the OnDeath effects
5. Tiberium Agitation does not do full damage to moving units
	* Projectile would miss, added ability for projectile to 'track' targets.
6. Unit cannot detect stealth units at close range, something that all other infantry unit can do
	* Added Stealth detection to squad
#### Mastermind
1. Can control subfaction base defense
	* Removed ability to target base defense structures
2. Teleport ability can target Drone Ships
	* Removed ability to teleport Drone Ships
#### Prodigy
1. Can control subfaction base defense
	* Removed ability to target base defense structures
2. Teleport ability can target Drone Ships
	* Removed ability to teleport Drone Ships
3. AI does not use Area Mind Control
	* AI will now use Area Mind Control on ground units
#### Shard Walker
1. Cannot fire while moving unlike the Gun Walker
	* Added CanFireWhileMoving parameter and an Acceptable Aim Delta of 10 degrees and updated Turret Data
		* This was an undocumented change for TW 1.05
2. Unit shields can show when dead
	* Added DYING Model Condition that has no model to guarantee shields will not show when dead
#### Seeker
1. Will prioritise infantry over aircraft or vehicles
	* Changed Weapon Category from GUN to MISSILE
#### Harvester
1. Will play generic EVA event when attacked instead of a unique Harvester EVA event
	* Changed EVA event for Harvester Under Attack
2. Shielded Harvester has higher health value under the shields
	* Normalised health from 6000 to 5000
		* Reduced shield cooldown from 120 to 100 seconds to further match behaviour with Attenuated Forcefield
3. Shielded Harvester shields can show when dead
	* Added DYING Model Condition that has no model to guarantee shields will not show when dead
#### Corrupter
1. Healing ability may not work on certain sub faction units (such as the Explorer)
	* Added missing units into the ability
#### Reaper Tripod
1. Conversion Reserves would significantly decrease the damage of the conversion beams
	* Increased Damage to match unupgraded counterpart
2. Husk would use Annihilator Tripod Husk Model with the Reaper Tripod Texture
	* Created a new Reaper Tripod Husk model to be used instead
3. Unit would not benefit from Forcefield Generator upgrade in Global Conquest
	* Swapped Upgrade_AlienReactorForcefieldGenerator for Upgrade_Reaper17ReactorForcefieldGenerator in WorldMapArmoryUpgradesAllowed
#### Mechapede
1. Subfactions use Scrin Mechapede Members instead of their own
	* Create new members for each faction
2. Unit cannot be stealthed by cloaking field and has slow Heroic heal for a vehicle
	* Members have base Infantry behaviors instead of Vehicle, swapped the behaviors and removed Stances from BaseVehicle
3. Formation Preview shows Shock Trooper Icon
	* Removed ModelCondition for Squad Unit
4. Segments would turn individually to face target when stationary, appearing to separate itself
	* Added RotateToTargetWhenAiming="false"
5. Squad Unit has SoundEffects which should only be reserved for the Members
	* Removed Sound Effects from the squad unit
6. SoundEffect plays when using Formation Preview
	* Removed AudioArraySound entry for soundAmbient which is was a workaround for spawning new segments. The Head doesn't need it. The segments will make the spawn sound from an AudioLoopUpgrade instead
7. Members are supposed to make looping sound effect when moving
	* AudioEntry "soundMoveLoop" does not work, probably due to being contained in squad and not moving in max speed. Instead used ModelConditionAudioLoopClientBehavior where the AudioEvent will be played for ModelCondition "MOVING"
8. Unit won't play VoiceCreated AudioEvent
	* Due to how the unit spawns, workaround is used in the squad unit. AudioEvent is contained in an FXList which is played by an AnimationState in the Condition "COMING_OUT_OF_FACTORY"
9. Mechapede healing with toxic segment requires Force Firing. If mechapede has mixed segments, unit will both attack and heal frienly units when force firing
	* Removed ability for Mechapede to heal with Toxic segment as it conflicts with the properties and functionality of the unit
10. Unit cannot Force Fire against allies with Disc and Shard Segments
	* Added ALLIES to "Radius Damage Affects" to the weapon launchers. Weapon will not damage allies unless targeted with Forced Fire
#### Eradicator Hexapod
1. Disintegrator visual lasers override each other. Therefore if more than one laser is firing, only the latest shot laser will show.
	* Added new Weapons, Laser Draws and Laser States.
		* Added Heroic Laser Effects
2. Parts of the unit does not use Damaged textures when Really Damaged as second main texture (AUEradHex2) was not swapped to the Damaged texture.
	* Second texture was changed to the damaged version when Really Damaged
3. Attacking animation play for any weapon firing instead of only the main weapon
	* Changed Animation Condition to WEAPONSLOTID_01 and AllowInterleavedFiring="true"
4. Attacking animation would be prioritised, playing while attacking and moving, causing the legs to 'spaz' and slide across the ground. And there are no unique attack while moving animations
	* Reordered animation conditions and priorities, attacking animations will not play while moving.
5. Rubble Model appears to be the same as the base model with incorrect bone references
	* Created new Rubble Model having parts missing representative of the debris models that already exists
6. Recycling tends to be inconsistent, destroyed units may not give resources when in range of the Hexapod
	* Increased Duration of AttributeModifier_Recyclotron to 1.55 seconds
#### Drone Ship
1. Subfaction Drone Ships when undeploying have the ability to teleport with Mastermind and Prodigy or Phased with Phasefield ability. This was not present with Base Faction, even in Tiberium Wars
	* Removed ability to target undeploying Drone Ships
2. Subfaction Drone Ships when trained from their respective Gravity Stabilizer would have the Created voice line delayed.
	* Unit Voice Array had ObjectSpecificEntry for when unit is created from Gravity Stabilizer. All referenced Scrin Gravity Stabilizer. Changed to reference their own Gravity Stabilizer.
#### Stormrider
1. Weapon has reduced damage applied to 'light' units, but not to sub faction units
	* Added appropriate units to damage scalar
2. Contrails show when in Formation Preview
	* Changed how draws work. Particle Effects will not show under specific conditions, use PARSE_NORMAL Condition "NONE" instead of PARSE_DEFAULT
#### Devastator Warship
1. Has target priority representative of Cannon based weapon despite GRENADE damage type
	* Changed Weapon Category from CANNON to BLAST
2. Turret doesn't rotate when under the effect of the Ion Storm
	* Fixed model so turret can rotate
3. Unit when under Ion Storm does not show Traveler Engines
	* Added Traveler Engine to the model
4. Traveler Engine will flash unit starts moving
	* Traveler Engines will show when Accelerating.
		* The FX are not supposed to show until it reaches top speed but unfortunately this is the best workaround at the moment
5. Ion Model Skeleton
	* Ion model will now refer to the base Skeleton (AUDevWar_SKL) rather than it's own (AUDevWarIon)
6. Traveler Engine Particle Effects source from the center instead of the rear
	* Created a new bone that is positioned at the rear for the particle effects
		* Traveler Engine Mesh now reference this bone
#### Planetary Assault Carrier
1. Unit when under Ion Storm does not show Traveler Engines
	* Added Traveler Engine to the model
2. Traveler Engine will flash when unit starts moving
	* Traveler Engines will show when Accelerating.
		* The FX are not supposed to show until it reaches top speed but unfortunately this is the best workaround at the moment
3. Ion Model Skeleton
	* Ion model will now refer to the base Skeleton (AUPACarrier_SKL) rather than it's own (AUPACarrierIon)
4. Fighters use different textures when under Ion Storm
	* Changed textures to match default
5. Traveler Engine Particle Effects source from the center instead of the rear
	* Created a new bone that is positioned at the rear for the particle effects
		* Traveler Engine Mesh now reference this bone
#### Extractor
1. Harvester spawn and rally point are based on the GDI Refinery which are not representative of the Extractor
	* Changed spawn and rally point in QueueProductionExitUpdate based on the Bone Locations
2. Harvester instantly spawns instead of fading in like GDI and NOD Harvesters
	* Added Initial Delay and Fade in Time to SpawnBehavior
#### Technology Assembler
1. Missing FS_TECHNOLOGY KindOf Flag that other Tier 3 units have
	* Added missing flag
#### Warp Chasm
1. Models and Draws
	* Models, Animations and Draws were redone to reduce redundency and fix certain bugs, such as resetting the Opening animation when entering the REALLYDAMAGED state.
2. Damaged and Rubble Models appear to have lighting issues and do not have House Colors
	* Swapped Specular and Normal Textures to existing textures
3. Rubble model uses multiple Normal Meshes for the debris instead of a single Skin Mesh like the other structures
	* Merged all meshes together to make a single Skin Mesh
#### Growth Stimulator
1. When selecting structure, it will sometimes play the Growth Accelerator select sound instead of the Stimulator select sound.
	* Removed Growth Accelerator sound effects which was due to the Stimulator inheriting the Accelerator and not removing sounds.
#### Storm Column
1. Missile Jammer has incorrect firing effects, using the Mammoth fire FX
	* Changed Fire FX of weapon and added Weapon Bone references in the GameObject
#### Explorer
1. Reaper 17 unit is slower than the other factions
	* Normalized speed to match the other factions
#### Attenuated Forcefield
1. Scrin and Reaper 17 do not share upgrade, despite cost and time is identical
	* Reaper 17 units and upgrade refer to Scrin shields
2. Shield mesh uses the incorrect texture for the Diffuse
	* Replace FXIonHull with FXShieldDiffuse in the Diffuse Mesh
		* Also removed the Seeker mesh in the shield model
#### Blue Shards
1. Heroic units with upgrade, projectile impacts are green instead of blue
	* Fixed FXList FX_AlienTibShardHitBlueHeroic and FX_AlienTibShardHitBlueHeroicBuilding to reference Blue effects instead of Green.
#### Infestation
1. The Tiberium Hive when destroyed will spawn a Buzzer. This does not happen with the Lightning Spike
	* For consistency, Buzzers will no longer spawn when Tiberium Hive is destroyed
2. Particle Effects would persist, even when destroyed.
	* Added SystemLifetime="30" to the TibInfestationBugsHuddle particle system. Also adjusted the offset of the FX.
#### Reaper 17 Shock Pods
1. Uses Scrin Veteran Shock Troopers instead of it's own
	* Created new Veteran Shock Trooper for Reaper 17
#### Overlords Wrath
1. The Tiberium Field it leaves behind persists for the entire game which has Tiberium continously growing at the impact, it's supposed to end after 5 minutes
	* Added DestroyDie module to the Tiberium Field behaviors
#### Mothership
1. Weapon would affect Subfaction Motherships but not Scrin
	* Weapon will no longer affect Subfaction Motherships
2. Light Mesh rendering sorts incorrectly
	* Added SortLevel 1 to the affect mesh
3. Mothership can be crushed by Drone Ships
	* Increased Crushable Level to 2


### Behind the Scenes
1. SP and MP maps use the same MapMetaData streams.
	* Separated the MapMetaData streams
