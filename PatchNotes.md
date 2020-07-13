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
			* BH Confessor Cabal
			* BH Mantis
			* MOK Awakened
			* MOK Enlightened
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
#### Snipers Spotting for bombardment
1. Veteran and Subfaction Snipers cannot spot for bombardment when garrisoned
	* Include Veteran and Subfaction Snipers in MemberTemplateStatusInfo in garrison HordeContain Modules
#### Upgrade Sounds
1. Units will either play sounds when upgraded with something they can't use or will not play sounds when upgraded
	* Add or remove "audioloopupgrade"
		* Objects Affected
			* GDI/ST/ZOCOM Slingshot (- Railgun)
			* GDI/ST/ZOCOM AA Battery (+ Tungsten)
			* GDI Shatterer (- Railgun)
			* GDI/ST Orca (+ Hardpoints)
			* GDI/ST Firehawk (+ Hardpoints)
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
			* NOD/MOK Militant Rocket Squad (- Black Disciple)
			* BH/MOK Laser Cannon (- Laser Capacitor)
			* BH Shredder Turret (+ Charged Particle Beams)
			* MOK Shredder Turret (+ Super Charged Particle Beams)
			* MOK Enlightened (- Railgun, + Super Charged Particle Beams)
			* MOK Militant Rocket Squad (- Confessor, - Black Disciple)
			* Scrin/R17/T59 Mechapede (- Forcefield Generator)
#### Upgraded Textures
1. Units when upgraded would not use the corresponding Specular, NormalMap or House Color Texture
	* Added texture change for Specular and NormalMap Textures
		* Created New Specular Maps for Ceramic Armor Orca and Firehawk
		* Objects Affected
			* ST Titan (Adaptive Armor)
			* ST Mammoth (Adaptive Armor)
			* ZOCOM Orca (Ceramic Armor)
			* ZOCOM Firehawk (Ceramic Armor)
			* ZOCOM Hammerhead (Ceramic Armor)
			* MOK Engineer (Cybernetic Legs)
			* Tiberium Trooper (Cybernetic Legs)
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
			* Scrin/R17/T59 Ravager (333 to 400)
			* Scrin/R17/T59 Mechapede Body (1400 to 100)
#### Sonic Repulsion Field and Laser Fencing
1. Structures when entering DAMAGED state (66%) removes the Support Power which would suggest that the upgrade cannot be applied. However the upgrade can be applied at state, but will not display.
	* Removed ability to be able to apply to damaged structures
2. Commands are referenced from the Tier 3 Structure instead of Tier 2 (This may only be important for AI usage)
	* Changed commands to be referenced by the appropriate structures
3. Powerstores has the ability to deal Cloaking Field damage with the ability and also listed the wrong upgrade.
	* Fixed upgrade reference and removed weapon associations
#### Tiberium Based Units
1. Units despite being Tiberium based or using Tiberium based weapons are not considered to be Tiberium Based units, therefore are not affect by Tiberium Vibration Scan or do not take extra damage from 'Anti Tiberium' weapons
	* Ravagers, Shard Walkers and Tiberium Troopers are now considered Tiberium Based
		* Unlike Nod Power Plants with Tiberium Core upgrade, units and structures with Tiberium Core Missiles upgrade will not have the "HAVE_TIBERIUM_UPGRADE" flag, making it 'immune' to Tiberium Vibration Scan as it would be able to counter Cloaking Field and Stealth Tanks with a simple click of a button, making the upgrade less desireable against Scrin factions.
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
#### Squad Special Ability Weapons
1. Once ability is activated, 'interrupting' by issuing other commands can lead to unit still move while firing, leading to lead to jank animations, firing weapon backwards, etc. Playing attacking animations but not shooting if ordered to attack.
	* Adjusted how special powers are activated. Squad will now be considered to be 'busy' until weapon has been released, therefore new commands will have to wait until unit is no longer busy before executing. Improving presentation significantly
		* In most cases, special powers have been sped up, to match base weapons speed and to counter fix.
#### Neutral Structures, Nod Garrison Armor and GDI Map Specific Structures
1. All did not have proper House Color Channels after the Shader Changes
	* Edited Specular Maps to have House Color Channel
#### Support Powers
1. Some new Support Powers do not use unique icons or radius cursors, despite being available and compiled
	* Swap the icons and radius cursors to the appropriate textures
		* Powers Affected
			* Zone Raider Drop Pods (Icon)
			* Decoy Temple of Nod (Icon)
			* Ichor Seed (Cursor)
			* Shock Pods (Cursor)
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
#### AI
1. Campaign AI design was not designed properly, structure based on Multiplayer AI. In TW, there are clear differences between Campaign and Multiplayer Skirmish AI in terms of structure and design.
	* Redesign Campaign AI
2. Multiplayer AI was not adjusted for KW 1.01 and 1.02 new economy
	* Redesign Multiplayer AI
	
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
		* May try to find a way to have it target nearby units as the model Hierarchy hints at this
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
	* Hidden the Powers
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

#### Grenadier Squad
1. AI will not use EMP Grenades ability
	* Added modules that will allow them to use it
2. When using Formation move, the formation texture uses Rocket Symbols
	* Fixed Texture Coordinate in FXGrenade_FP.w3x
#### MRT
1. Leash range of Repair Drone was not changed from KW 1.01 to 1.02, despite specified in change log
	* Fixed leash range to 100
2. Repair Decal radius was not representative of repair radius
	* Fixed Repair size to 215
3. Repair Drone would not keep up with the MRT when moving
	* Increased speed of repair drone so that it can keep up with the MRT, including when transported with OX Transport
4. Repair Drone would repair Structures, Air units and funnily enough Infantry
	* Removed ability to repair Structures, Air units and Infantry
5. Not necessarily a bug but there was no way to instantly evacuate infantry due to too many abilities
	* Remove "Move to Evacuate Ability" in favour of evacuate infantry
6. Speed of the MRT was based of the APC before TW 1.05
	* Increased speed to match APC
7. There are no sounds for units entering and exiting garrison
	* Added sound effects
8. Unit cannot be ordered to target an object, even when units are garrisoned
	* Added a weapon template, unit can be ordered to target and enter into range
		* Removed Turret Bone references in GameObject
#### Titan
1. Units limping animation is used in the DAMAGED state (Below 66% health)
	* Decided to remove it so it would only be used in the REALLYDAMAGED state (Below 33% health)
2. Did not play a seperate animation when EMPed. Instead it continued to loop the animation it was in before EMP strike
	* Other Mech units used the Bored animation. This technique was applied
#### Harvester
1. Steel Talons and ZOCOM Harvesters harvests at a slower rate. Rate is based of TW Pre 1.05 Patch.
	* Normalised values with GDI Harvester
2. ZOCOM Harvester had no unique Rubble Model, Debris and Damaged Textures, using GDI textures.
	* Created new models for Rubble, Debris and created new textures.
#### Wolverine
1. Did not play a seperate animation when EMPed. Instead it continued to loop the animation it was in before EMP strike
	* Other Mech units used the Bored animation. This technique was applied
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
#### Shatterer
1. AI will not use the Unit
	* Added ConquerMetricsOverride for DPS and Damage Type to 300 and CANNON
		* This may be due to the AI not recognising the damage from LinearDamageUpdate Sweep weapon as this was done with the Sonic Emitter.
#### Zone Shatterer
1. AI will not use the Unit
	* Added ConquerMetricsOverride for DPS and Damage Type to 300 and CANNON
		* This may be due to the AI not recognising the damage from LinearDamageUpdate Sweep weapon as this was done with the Sonic Emitter.
2. Weapon Slots had different parameters and behaviours to GDI Shatterer
	* Normalised weapon slot parameters and behaviours
#### Mammoth Tank
1. If playing with Low model LOD setting, uses Low LOD model. Adaptive armor uses High LOD model
	* Added Low LOD model for Adaptive Armor
		* Also fixed shaders for Low LOD Railguns
2. Missile Pods do not use Shaders for Adaptive Armor
	* Changed shaders of ROCKETPODS subobject
#### Behemoth
1. When recovered by engineer, it plays the animation used to leave Warfactory after the getting up animation
	* Changed model so only one is used for build and default state
2. Left leg pistons were bugged
	* The Above fix has removed this issue
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
#### Orca
1. When playing with Low LOD settings, Wings and Sensor Pod subobject is missing
	* Fixed subobject bone reference for Sonic Cannon. In the Hierarchy system, the Sonic Cannon Mesh reference Bone is the parent of the subobjects of the Wings and Sensor Pod. Since it is Hidden, any mesh referencing child Bones will also be hidden
#### Hammerhead
1. Will not prioritise infantry over other units
	* Changed Weapon Category from NONE to GUN
2. ZOCOM fired both normal and heroic tracers
	* Changed the "StatusBitsUpgrade" with ID "ModuleTag_ZOCOMNoVeterancyUpgrade" to be triggered by "Upgrade_ZOCOMFaction" instead of "Upgrade_SteelTalonsFaction"
3. Tracers and Muzzle FX will not properly exit from all weapon bones
	* Renamed weapon bones in GUHamhead_SKN.w3x and adapted the changes in the "gameobject"
4. Unit can be used to deflect Beamcannon beams
	* Removed Flag
#### FireHawk
1. ZOCOM Firehawks would not display Stratofigher thrusters properly, especially when upgraded with Ceramic Armor
	* Fixed Animations
2. Unit can be seen through, mainly with Ceramic Armor textures due DXT compression creating Alpha pixels
	* Removed alpha support
#### Ox Transports
1. Steel Talons and ZOCOM Ox transports health use values before TW 1.05
	* Increased Health to 2500 to match GDI's version
#### Construction Yard
1. Selling ZOCOM Con Yard would give you GDI Rifle Squad and GDI Engineer
	* Changed OCL to spawn ZOCOM Rifle Squad and ZOCOM Engineer instead
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
#### Dig In Structure
1. Advanced units from the Base Factions can not garrison in structure whereas Sub Factions can
	* Exclude Sub Faction advanced units from garrison Dig In Structure
#### Guardian Cannon
1. GDI railgun upgrade is missing in the upgrade icon area and description
	* Added display upgrade and changed the description to add the detail
2. When affected by Railgun Accelerator, fire rate is too fast for recoil animation
	* Reduced Rate of Fire, increasing overall cooldown from 1.8s to 2.3s and increased damage proportionaly to from 525 to 670
#### Sonic Emitter
1. AI underestimates the DPS output of defensive structure (Damage was buffed in TW 1.05 to counteract a bug fix but AI DPS was never updated in TW or KW)
	* Increased ConquerMetricsOverrideDPS to 500
#### Combat Support Airfield
1. Online Games causes desyncs when Structure is created
	* Removed POWERED_POWERS_ONLY KindOf Flag which is possibly causing Desyncs
2. Particle Effects at damage states were borrowed from Airfield
	* Removed Particle Effects
3. Landing Pad order is different to the Airfield
	* Changed the order to represent the Airfield
4. Radar Dish is not present as shown in unit portrait unless under construction or destroyed.
	* Added Radar Dish to Base and Damaged model and adjusted animations to have it function.
#### Scanner Pack
1. After the scanner packs upgrade, Unit will not aproach the range to fire their weapon. In fact they will continue their running animation but will not move.
	* Allowed scanner pack to upgrade weapon range
2. GDI and ZOCOM upgrades are not shared, despite same cost and upgrade time
	* Removed ZOCOM variant and will use GDI instead so upgrade is shared between factions.
#### Hardpoints (And ZOCOM Orca Cannon)
1. When aircraft with Harpoints would dock to reload, sound would not play
	* Added sound effects to reload
#### Composite Armor and Tiberium Field Suits
1. When Missile Squad is upgraded, the extra 50% damage against GUN is removed
	* Increased GUN damage by 50% for upgrades
#### Power Pack
1. GDI and ZOCOM upgrades are not shared, despite same cost and upgrade time
	* Removed ZOCOM variant and will use GDI instead so upgrade is shared between factions.
#### Adaptive Armor
1. When Adaptive Armor was used, it gave the unit a weird appearance with the House Color Glowing too much
	* Created New Shaders
2. There are no damaged textures for for upgraded units
	* Created damaged textures (Titan Only)
#### Railgun Accelerator
1. Railgun Accelerator effect on the railgun is bugged with all units either not displaying properly or at all
	* Instead of using Animations, Scripts are used
		* Guardian Cannon Railgun meshs were renamed to match other units

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
1. If there is access to BH Tech Lab, unit can be upgraded with Charged Particle Beam
	* Remove Upgrade
2. Individual unit used Black Hand portrait instead of it's own (This is noticable in the mission Will Made Flesh)
	* Changed unit portrait to Awakened
3. Unit in Formation Preview uses Black Hand Icon instead of it's own
	* Added new Formation model for Awakened to have unique icon
#### Militant Rocket Squad
1. Black Hand Militant Rocket Squad can be upgraded with Tiberium Infusion with NOD or MOK Secret Shrine.
	* Removed upgrade
#### Saboteur
1. Has directional armor allowing it to take extra damage from the side and back. Typically infantry do not have directional armor penalties
	* Remove Directional Armor Penalty
#### Fanatic
1. Subfaction Fanatics would be affected by their own explosion. This does not occur with Nod
	* Added Subfaction Fanatics to Damage Scalar.
2. Black Hand Fanatic Squads can be upgraded with Tiberium Infusion with NOD or MOK Secret Shrine.
	* Removed upgrade
3. Fanatics contained in Black Hand Upgraded Strike teams in Global Conquest will be upgraded with Tiberium Infusion, despite not being available to the Subfaction
	* Removed upgrade in WorldMapArmoryUpgradesAllowed
#### Tiberium Trooper
1. Health, speed and weapon damage values were inherited from Black Hand pre TW 1.05
	* Changed values to match Black Hand
2. Upgraded texture has Nod Emblem instead of Marked of Kane
	* Adjusted texture
		* Reduced resolution as texture compile is 256^2, the ArtPack came with 128^2
#### Shadow Team
1. Members can be left behind when squad is moving
	* Increased Shadows speed so it is faster than the squad speed
2. Most members of the squad will attempt to fire their weapon outside of the max range after KW 1.02
	* Reduced range of 'range finder' from 225-175 so squad will fully enter into range of their weapons (1.02 Patch refers to weapon range, not squad range)
#### Attack Bike
1. The rockets fired would only come out of one rocket pod
	* Changed bone names so burst would alternate between pods
2. Low LOD model turrets do not rotate
	* While this isn't necessarily a bug, the problem is the Tib Core subobjects would rotate independently on it's own, therefore the bike mesh was changed from normal to skin and now the turrets will move
#### Harvester
1. Black Hand variant could not be cloaked with NOD Cloaking Field Support Power
	* Restored ability for it to be cloaked and defaulted parameters
#### MCV
1. MCV when unpacking does not have REALLYDAMAGED state
	* Fixed typo therefore MCV will visually appear damaged when unpacking
#### Mantis
1. Turret is not effective at tracking Air Units, often misfiring
	* Improved Turret Settings to match Slingshot
2. Unit could not be cloaked with NOD Cloaking Field Support Power
	* Restored ability for it to be cloaked and defaulted parameters
3. Damage values were inherited from Stealth Tank TW 1.09. Stealth Tank damage was reduced in KW 1.00.
	* Reduced Damage of Rockets to match the current Stealth Tank values
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
#### Avatar
1. Particle System when in REALLYDAMAGED mode was not shown when using Kane's Edition Skin
	* Fixed Model Condition States
2. Could not comandeer MOK Attack Bike technology
	* Included MOK Attack Bike to be targeted in Special Ability
3. Caputuring MOK Avatar Husk would spawn NOD Avatar instead of MOK Avatar
	* Changed OCL to spawn MOK Avatar
4. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
#### Purifier
1. Will randomly play Avatar voice sounds. (This is due to inheriting NOD Avatar and not removing sounds)
	* Removed Avatar sound
2. Flame weapon would not display Purifying Flame upgrade
	* Added Upgraded Flame Tank texture
3. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
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
#### Vertigo Bomber
1. Stealth Model uses it's own Hierarchy instead of the standard version, despite sharing animations
	* Changed Container and Mesh to refer to the standard version like the Stealth Tank
2. Stealth Model does not include the Disruption Pod attachment, making the effect seem incomplete
	* Added Disruption Pod Mesh to Stealth Model
#### Airtower
1. When selected to be deployed, the upgrade subobjects will appear when replacing cursor. This does not happen with other structures
	* Hide subobjects in animation state
#### Secret Shrine
1. Black Hand default side was set to BlackHandSecretShrine (Issues with Worldbuilder)
	* Changed side to BlackHand
#### Tech Lab
1. AI would use the Redemption Power on friendly vehicles when it is only used on friendly infantry
	* Changed Includes to Infantry
2. When Black Hand Tech Lab is selected to be deployed, some of the upgrade subobjects will appear when replacing cursor.
	* Hide the existing subobjects in animation state
#### Turret Hub
1. Models are bugged, mainly in regards to the turret sections
	* Fixed models vertices and bone influences (Thanks OpenSAGE Blender Plugin)
2. Bones between Standard Hub and Quad Turret Hubs have discrepancy, missing important bones such as StealthDetector
	* Fixed Bones, Unupgraded Hub and Quad Turret Hub uses the same Hierarchy per turret type.
#### Shredder Turret
1. If using Nod Shredder Turret and Black Hand Tech Center, upgrade Charged Particle Beams, the Nod Shredder Turret will be upgraged
	* Removed Upgrade for Nod Shredder Turret
2. Black Hand turrets do not display Quad Turret upgrade in the UI
	* Added Quad Turrets to the display list
3. When use as a cursor, the Muzzleflash fx is shown when no Shredders have been placed
	* Added animation state to hide Subobjects when used as cursor
#### Voice of Kane
1. Has Kindof Flag BROADCASTS_INVISIBILITY which may suggest (to the AI) that it has the functionallity of a Disruption Tower
	* Removed flag
2. Structure when sold or destroyed are not supposed to create an Infantry squad. However subfaction structures generates units.
	* Removed OCL from subfaction structures
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
#### Tiberium Infusion
1. Upgrade removes Militant Rockets and Fanatics extra GUN penalty damage
	* Added the penalty damage to Tiberium Infusion Armor (Created new armor for Militant Rocket)
#### Confessor
1. Unit in squads does not properly path through infantry
	* Added "PATH_THROUGH_INFANTRY" Kindof flag
2. Weapon Range
	* Weapon Range is nerfed due to changes to Confessor Cabal
3. The animation to throw grenades is not synced with the grenade throw
	* Changed NODConfessorGrenade weapon timing, fire duration is shorter but clip reload time is longer so ROF is the same
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
	* Fixed targeting parameters of Tiberium Agitation. Will now target Scrin Devourer Tank, BH and Mok Power Plant with Tiberium Core upgrade. Additionally will not target units that is empty of Tiberium
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
#### Seeker
1. Will prioritise infantry over aircraft or vehicles
	* Changed Weapon Category from GUN to MISSILE
2. Seekers contained in Traveler59 Upgraded Strike teams in Global Conquest will be upgraded with Attenuated Forcefields, despite not being available to the Subfaction
	* Removed upgrade in WorldMapArmoryUpgradesAllowed
#### Harvester
1. Will play generic EVA event when attacked instead of a unique Harvester EVA event
	* Changed EVA event for Harvester Under Attack
2. Reaper 17 has higher health value under the shields
	* Normalised health from 6000 to 5000
		* Reduced shield cooldown from 120 to 100 seconds to further match behaviour with Attenuated Forcefield
#### Corrupter
1. Healing ability may not work on certain sub faction units (such as the Explorer)
	* Added missing units into the ability
#### Reaper Tripod
1. Conversion Reserves would significantly decrease the damage of the conversion beams
	* Increased Damage to match unupgraded counterpart
2. Husk would use Annihilator Tripod Husk Model with the Reaper Tripod Texture
	* Created a new Reaper Tripod Husk model to be used instead
#### Mechapede
1. Subfactions use Scrin Mechapede Members instead of their own
	* Create new members for each faction
#### Eradicator Hexapod
1. Disintegrator visual lasers override each other. Therefore if more than one laser is firing, only the latest shot laser will show.
	* Added new Weapons, Laser Draws and Laser States.
		* Added Heroic Laser Effects
#### Drone Platform
1. Subfaction Drone Platforms when undeploying have the ability to teleport with Mastermind and Prodigy or Phased with Phasefield ability. This was not present with Base Faction, even in Tiberium Wars
	* Removed ability to target undeploying Drone Platforms
#### Stormrider
1. Weapon has reduced damage applied to 'light' units, but not to sub faction units
	* Added appropriate units to damage scalar
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
5. Ion Model Hierarchy
	* Ion model will now refer to the base Hierarchy (AUDevWar_SKL) rather than it's own (AUDevWarIon)
#### Planetary Assault Carrier
1. Unit when under Ion Storm does not show Traveler Engines
	* Added Traveler Engine to the model
2. Traveler Engine will flash when unit starts moving
	* Traveler Engines will show when Accelerating.
		* The FX are not supposed to show until it reaches top speed but unfortunately this is the best workaround at the moment
3. Ion Model Hierarchy
	* Ion model will now refer to the base Hierarchy (AUPACarrier_SKL) rather than it's own (AUPACarrierIon)
4. Fighters use different textures when under Ion Storm
	* Changed textures to match default
#### Attenuated Forcefield
1. Scrin and Reaper 17 do not share upgrade, despite cost and time is identical
	* Reaper 17 units and upgrade refer to Scrin shields
#### Infestation
1. The Tiberium Hive when destroyed will spawn a Buzzer. This does not happen with the Lightning Spike
	* For consistency, Buzzers will no longer spawn when Tiberium Hive is destroyed
#### Reaper 17 Shock Pods
1. Uses Scrin Veteran Shock Troopers instead of it's own
	* Created new Veteran Shock Trooper for Reaper 17
#### Mothership
1. Weapon would affect Subfaction Motherships but not Scrin
	* Weapon will no longer affect Subfaction Motherships


### Behind the Scenes
1. SP and MP maps use the same MapMetaData streams.
	* Separated the MapMetaData streams
