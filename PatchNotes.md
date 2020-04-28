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
			* GDI Shatterer (- Railgun)
			* GDI/ST Orca (+ Hardpoints)
			* GDI/ST Firehawk (+ Hardpoints)
			* ZOCOM Shatterer (- Railgun)
			* ZOCOM Rifleman (+ Tiberium Field Suits)
			* ZOCOM Missile Squad (+ Tiberium Field Suits)
			* ZOCOM Grenadier Squad (+ Tiberium Field Suits)
			* ZOCOM Orca (+ Ceramic Armor)
			* ZOCOM Hammerhead (+ Ceramic Armor)
			* ZOCOM Firehawk (+ Ceramic Armor)
			* NOD/MOK Avatar (- Purifying Flame)
			* NOD Black Hand (- Purifying Flame)
			* NOD Flame Tank (- Purifying Flame)
			* NOD/MOK Militant Rocket Squad (- Black Disciple)
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
#### Sonic Repulsion Field and Laser Fencing
1. Structures when entering DAMAGED state (66%) removes the special power which would suggest that the upgrade cannot be applied. However the upgrade can be applied at state, but will not display.
	* Removed ability to be able to apply to damaged structures
#### Tiberium Based Units
1. Units despite being Tiberium based or using Tiberium based weapons are not considered to be Tiberium Based units, therefore are not affect by Tiberium Vibration Scan or do not take extra damage from 'Anti Tiberium' weapons
	* Ravagers, Shard Walkers and Tiberium Troopers are now considered Tiberium Based
		* Unlike Nod Power Plants with Tiberium Core upgrade, units and structures with Tiberium Core Missiles upgrade will not have the "HAVE_TIBERIUM_UPGRADE" flag, making it 'immune' to Tiberium Vibration Scan as it would be able to counter Cloaking Field and Stealth Tanks with a simple click of a button, making the upgrade less desireable against Scrin factions.
#### Neutral Structures (+ Nod Garrison Armor)
1. All did not have proper House Color Channels after the Shader Changes
	* Edited Specular Maps to have House Color Channel
#### Special Powers
1. Some new Special Powers do not use unique icons or radius cursors, despite being available and compiled
	* Swap the icons and radius cursors to the appropriate textures
		* Powers Affected
			* Zone Raider Drop Pods (Icon)
			* Decoy Temple of Nod (Icon)
			* Ichor Seed (Cursor)
			* Shock Pods (Cursor)
#### AI
1. Campaign AI design was not designed properly, structure based on Multiplayer AI. In TW, there are clear differences between Campaign and Multiplayer Skirmish AI in terms of structure and design.
	* Redesign Campaign AI
2. Multiplayer AI was not adjusted for KW 1.01 and 1.02 new economy
	* Redesign Multiplayer AI
	
### Campaign

#### Persuade Him
1. AI would not attack the player and would instead camp the base
	* Adjusted scripting to gurantee attacks from AI
2. One of the Reckoner defending the bases is assigned Team Neutral instead of Black Hand Team.
	* Changed team of Reckoner
#### MARV Rising
1. Redeemer was supposed to have both Damage and ROF buff for the mission. Instead ROF was nerfed
	* Changed Attribute Modifier so Redeemer is fully Buffed
#### Hearts and Minds
1. Player can use Decoy Army and Radar Jamming Missile despite the two abilities never being available in ALL Campaign Missions.
	* Hidden the Powers
#### Tacitus Interruptus
1. According to the scripts, Reaper 17 was supposed to send constant waves of it's army, depending if all a specific unit is destroyed (If all Ravagers are killed, send in another wave of Ravagers)
	* Reaper 17 will now spawn waves of units when army is destroyed
2. EVA uses wrong sound file for Tiberium Vein Detonation Bonus Objective
	* Change dialogue file to "MN27_NodEVA13"

### GDI:

#### Railgun Accelerator
1. Railgun Accelerator effect on the railgun is bugged with all units either not displaying properly or at all
	* Instead of using Animations, Scripts are used
		* Guardian Cannon Railgun meshs were renamed to match other units
#### Sub Faction Harvesters
1. Steel Talons and ZOCOM Harvesters harvests at a slower rate. Rate is based of TW Pre 1.05 Patch.
	* Normalised values with GDI Harvester
#### Airfield
1. When selected to be deployed, the upgrade subobjects will appear when replacing cursor. This does not happen with other structures
	* Hide subobjects in animation state
2. Subfactions AI would not use bombing runs and bloodhouds
	* Added the ability for the AI to use the special power
#### Tech Center
1. Tech Center Telescope animation is bugged, socket does not move with telescope
	* Fix animation to match with correct bones
2. ZOCOM AI will not use Sharpshooter ability
	* Added the ability for the AI to use the special power
#### Dig In Structure
1. Advanced units from the Base Factions can not garrison in structure whereas Sub Factions can
	* Exclude Sub Faction advanced units from garrison Dig In Structure
#### Guardian Cannon
1. GDI railgun upgrade is missing in the upgrade icon area and description
	* Added display upgrade and changed the description to add the detail
2. ZOCOM plays railgun upgrade sound
	* Removed audioloopupgrade for Railguns
3. When affected by Railgun Accelerator, fire rate is too fast for recoil animation
	* Reduced Rate of Fire overall cooldown from 1.8s to 2.3s and increased damage proportionaly to from 525 to 670
#### Battle Base
1. Cannons rate of fire and projectile speed is based of TW version. Guardian Cannon ROF and damage was changed between TW and KW
	* Increased Battle Base cannons ROF and decreased damage to better represent current Guardian Cannon
2. Railgun Rate of Fire
	* Rate of Fire reduced and damage increased due to Guardian Cannon changes
#### Hardpoints (And ZOCOM Orca Cannon)
1. When aircraft with Harpoints would dock to reload, sound would not play
	* Added sound effects to reload
#### Composite Armor and Tiberium Field Suits
1. When Missile Squad is upgraded, the extra 50% damage against GUN is removed
	* Increased GUN damage by 50% for upgrades
#### Slingshot
1. There are no unique tracers for Heroic level when using Tungsten Shells
	* Created and added tracers for Heroic Tungsten
2. Unit still hovers when EMPed
	* Created animation based on Shatterer LOWA animation
3. Unit has range change when upgrading to Tungsten Shells
	* Reduced base weapon Range from 355 to 350 matching upgraded version
#### Grenadier Squad
1. AI will not use EMP Grenades ability
	* Added modules that will allow them to use it
2. When using Formation move, the formation texture uses Rocket Symbols
	* Fixed Texture Coordinate in FXGrenade_FP.w3x
#### Hammerhead
1. Will not prioritise infantry over other units
	* Changed Weapon Category from NONE to GUN
2. ZOCOM fired both normal and heroic tracers
	* Changed the "StatusBitsUpgrade" with ID "ModuleTag_ZOCOMNoVeterancyUpgrade" to be triggered by "Upgrade_ZOCOMFaction" instead of "Upgrade_SteelTalonsFaction"
3. Tracers and Muzzle FX will not properly exit from all weapon bones
	* Renamed weapon bones in GUHamhead_SKN.w3x and adapted the changes in the "gameobject"
4. Unit can be used to deflect Beamcannon beams
	* Removed Flag
#### MARV
1. Only required Tier 2 structure (Command Post) compared to other factions which required their respective Tier 3 structure (After Reclamation Hub is deployed)
	* Changed RequiredObject to Tech Center
#### Scanner Pack
1. After the scanner packs upgrade, Unit will not aproach the range to fire their weapon. In fact they will continue their running animation but will not move.
	* Allowed scanner pack to upgrade weapon range
#### Zone Trooper
1. Unit Recycled price (Hexapod passive ability) was not proportional to unit cost
	* Change BuildCost (and BuildTime appropriately) from 313 to 325
#### Ox Transports
1. Steel Talons and ZOCOM Ox transports health use values before TW 1.05
	* Increased Health to 2500 to match GDI's version
#### Adaptive Armor
1. When Adaptive Armor was used, it gave the unit a weird appearance with the House Color Glowing too much
	* Created New Shaders
#### Behemoth
1. When recovered by engineer, it plays the animation used to leave Warfactory after the getting up animation
	* Changed model so only one is used for build and default state
2. Left leg pistons were bugged
	* The Above fix has removed this issue
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
#### Mechs EMP Animation
1. Titans and Wolverines did not play a seperate animation when EMPed. Instead it continued to loop the animation it was in before EMP strike
	* Other Mech units used the Bored animation. This technique was used for both the Titan and Wolverine
#### Titan
1. Units limping animation is used in the DAMAGED state (Below 66% health)
	* Decided to remove it so it would only be used in the REALLYDAMAGED state (Below 33% health)
#### Mammoth Tank
1. If playing with Low model LOD setting, uses Low LOD model. Adaptive armor uses High LOD model
	* Added Low LOD model for Adaptive Armor
		* Also fixed shaders for Low LOD Railguns
#### Construction Yard
1. Selling ZOCOM Con Yard would give you GDI Rifle Squad and GDI Engineer
	* Changed OCL to spawn ZOCOM Rifle Squad and ZOCOM Engineer instead
#### Armory
1. If owning both GDI and ZOCOM armory and upgraded Composite Armor, subobject will be showed on both despite ZOCOM not having access. It also overlaps Field Suits subobject
	* Removed Composite Armor upgrade references from ZOCOM Armory
#### Orca
1. When playing with Low LOD settings, Wings and Sensor Pod subobject is missing
	* Fixed subobject bone reference for Sonic Cannon. In the Hierarchy system, the Sonic Cannon Mesh reference Bone is the parent of the subobjects of the Wings and Sensor Pod. Since it is Hidden, any mesh referencing child Bones will also be hidden
#### FireHawk
1. ZOCOM Firehawks would not display Stratofigher thrusters properly, especially when upgraded with Ceramic Armor
	* Fixed Animations
#### Rig/Battlebase
1. Subfaction Rigs when unpacking would create GDI Battlebase instead of their own. The same happens with Subfaction Battlebase packing GDI Rigs
	* Packing and unpacking will now create the corresponding faction version
2. When upgraded with railguns does not display upgraded models
	* Railgun subobjects were added to the models, railguns will now be displayed when upgraded
3. GDI and Steel Talons has no upgrades listed in the description
	* Added railguns upgrade in the description
#### Space Command Uplink
1. Smoke Effects do not appear. It is possible an attempt was made to add distortion affect but removed the smoke
	* Fixed Particle Effects to match TW (Will need to find a way to add distortion effect)
#### Combat Support Airfield
1. Online Games causes desyncs when Structure is created
	* Removed POWERED_POWERS_ONLY KindOf Flag which is possibly causing Desyncs
2. Particle Effects at damage states were borrowed from Airfield
	* Removed Particle Effects
3. Landing Pad order is different to the Airfield
	* Changed the order to represent the Airfield

### Nod:

#### MCV
1. MCV when unpacking does not have REALLYDAMAGED state
	* Fixed typo therefore MCV will visually appear damaged when unpacking
#### Airtower
1. When selected to be deployed, the upgrade subobjects will appear when replacing cursor. This does not happen with other structures
	* Hide subobjects in animation state
#### Turret Hub
1. Models are bugged, mainly in regards to the turret sections
	* Fixed models vertices and bone influences (Thanks OpenSAGE Blender Plugin)
2. Structure would use multiple models between standard and upgraded version
	* Attempted to use one model for each hub type (Shredder, Laser, SAM) between standard and upgrade
#### Shredder Turret
1. If using Nod Shredder Turret and Black Hand Tech Center, upgrade Charged Particle Beams, the Nod Shredder Turret will be upgraged
	* Removed Upgrade for Nod Shredder Turret
2. Black Hand turrets do not display Quad Turret upgrade in the UI
	* Added Quad Turrets to the display list
3. When use as a cursor, the Muzzleflash fx is shown when no Shredders have been placed
	* Added animation state to hide Subobjects when used as cursor
#### Tech Lab
1. AI would use the Redemption Power on friendly vehicles when it is only used on friendly infantry
	* Changed Includes to Infantry
2. When Black Hand Tech Lab is selected to be deployed, some of the upgrade subobjects will appear when replacing cursor.
	* Hide the existing subobjects in animation state
#### Tiberium Core Missiles
1. Units with this upgrade would use two models for 'Base' and 'Upgrade' when it could of just hide and show subobjects
	* Changed SKN files so it would only require to hide and show objects
2. Weapons have damage scalars that match values before TW 1.05, significantly buffing the weapons against aircraft
	* Adjust damage scales to match unupgraded counterparts
#### Attack Bike
1. The rockets fired would only come out of one rocket pod
	* Changed bone names so burst would alternate between pods
#### Harvester
1. Black Hand variant could not be cloaked with NOD Cloaking Field special power
	* Restored ability for it to be cloaked and defaulted parameters
#### Avatar
1. Particle System when in REALLYDAMAGED mode was not shown when using Kane's Edition Skin
	* Fixed Model Condition States
2. Could not comandeer MOK Attack Bike technology
	* Included MOK Attack Bike to be targeted in special power
3. Caputuring MOK Avatar Husk would spawn NOD Avatar instead of MOK Avatar
	* Changed OCL to spawn MOK Avatar
4. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
#### Specter
1. Unit will rotate body to fire after deployed
	* Remove requirement RotateToTargetWhenAiming
2. Black Hand variant could not be cloaked with NOD Cloaking Field special power
	* Restored ability for it to be cloaked and defaulted parameters
3. Black Hand will randomly play NOD voice sounds referencing stealth. (This is due to inheriting NOD Specter and not removing sounds)
	* Removed NOD variant sound
#### Saboteur
1. Has directional armor allowing it to take extra damage from the side and back. Typically infantry do not have directional armor penalties
	* Remove Directional Armor Penalty
#### Tiberium Infusion
1. Upgrade removes Militant Rockets and Fanatics extra GUN penalty damage
	* Added the penalty damage to Tiberium Infusion Armor (Created new armor for Militant Rocket)
#### Shadow Team
1. Members can be left behind when squad is moving
	* Increased Shadows speed so it is faster than the squad speed
2. Most members of the squad will attempt to fire their weapon outside of the max range after KW 1.02
	* Reduced range of 'range finder' from 225-175 so squad will fully enter into range of their weapons (1.02 Patch refers to weapon range, not squad range)
#### Secret Shrine
1. Black Hand default side was set to BlackHandSecretShrine (Issues with Worldbuilder)
	* Changed side to BlackHand
#### Black Disciple
1. Black Disciple can be upgraded with Purifying Flame. This is an issue as it would mean that Confessor Cabals have access to 3 Tech Upgrades (Charged Particle Beams + Black Disciples) where the max is 2
	* Remove Purifying Flame upgrade to Black Disciples to ensure max tech upgrade of 2
#### Confessor Cabal
1. Unit had Flags that did not allow it to path through infantry
	* Added "PATH_THROUGH_INFANTRY" Kindof flag
2. Unit is not classed as infantry
	* Give the UnitCategory="INFANTRY"
3. Hexapod recycling is not proportional to the squad cost
	* Changed build cost of individual unit
4. If there is access to NOD or MOK Secret Shrine, unit can be upgraded with Tiberium infusion
	* Removed Upgrade
5. Hallucinegetic Grenades
	* Tweeked range for better performance
6. Unit cannot detect stealth units at close range, something that all other infantry unit can do
	* Added Stealth detection to squad
7. Unit prioritise the wrong unit types with weapon
	* Changed WeaponCategory from BLAST to GUN
8. Targetting garrisoned structure changes the cursor representative of garrison clear despite having no ability to do so (Except when upgraded with Black Disciples)
	* Removed "ANTI_GARRISON" Kindof flag
9. AI does not garrison this unit despite basic infantry status (Squad seems to be modified Black Hand squad)
	* Removed "SKIRMISH_AI_DONT_GARRISON" Kindof Flag
10. Unit has range change when upgrading to Charged Particle Beam
	* Reduced base weapon Range from 325 to 300 matching upgraded version
#### Confessor
1. Unit in squads does not properly path through infantry
	* Added "PATH_THROUGH_INFANTRY" Kindof flag
2. Weapon Range
	* Weapon Range is nerfed due to changes to Confessor Cabal
#### Fanatic
1. Subfaction Fanatics would be affected by their own explosion. This does not occur with Nod
	* Added Subfaction Fanatics to Damage Scalar.
#### Purifier
1. Will randomly play Avatar voice sounds. (This is due to inheriting NOD Avatar and not removing sounds)
	* Removed Avatar sound
2. Flame weapon would not display Purifying Flame upgrade
	* Added Upgraded Flame Tank texture
3. Flame weapon particle effects would still be used when EMPed
	* Added new state to disable particle effects when EMPed
#### Leadership Buff (Confessor, Confessor Cabal, Purifier, Voice of Kane)
1. Has Fire Rate buff despite being removed in TW 1.09
	* Removed Rate of Fire bonus
#### Militant Rocket Squad
1. Black Hand Militant Rocket Squad can be upgraded with Tiberium Infusion with NOD or MOK Secret Shrine.
	* Removed upgrade
#### Redeemer
1. Had an issue when NOD Confessor or BH Black Disciple are the last member of an upgraded squad of NOD Militants, BH Confessor Squad or Militant Squad entering the Redeemer will cause the unit to freeze
	* Added NOD Confesor and BH Black Disciple to the CanAlwaysEnter and PassengerFilter
2. Flame weapon particle effects would still be when after EMPed
	* Added new state to disable particle effects when EMPed
3. Turrets do not rotate, despite being able to attack 360 degrees
	* Fixed Models and Turret Data
		* Also reduced turret idle angles to significantly reduce chance of turrets clipping through each other.
#### Mantis
1. Turret is not effective at tracking Air Units, often misfiring
	* Improved Turret Settings to match Slingshot
2. Unit could not be cloaked with NOD Cloaking Field special power
	* Restored ability for it to be cloaked and defaulted parameters
3. Damage values were inherited from Stealth Tank TW 1.09. Stealth Tank damage was reduced in KW 1.00.
	* Reduced Damage of Rockets to match the current Stealth Tank values
#### Shadow Strike Team
1. Marked of Kane Strike team spawns NOD Shadows instead of MOK Shadows
	* Created new support power for MOK Shadows
#### Cyborg EMP Ability
1. Cyborg units had the possibility to misfire ability
	* Tweeked range for better performance
2. AI would not use this ability when against vehicles or structures
	* Enabled ability for AI to use
#### Awakened
1. If there is access to BH Tech Lab, unit can be upgraded with Charged Particle Beam
	* Remove Upgrade
2. Individual unit used Black Hand portrait instead of it's own (This is noticable in the mission Will Made Flesh)
	* Changed unit portrait to Awakened
#### Enlightened
1. Supercharged Particle Beam upgrade sound would use Railgun sound instead of it's own
	* Swapped upgrade sounds
#### Tiberium Trooper
1. Health, speed and weapon damage values were inherited from Black Hand pre TW 1.05
	* Changed values to match Black Hand
#### Flame Weaponry (+Tiberium Goo)
1. Purifying Flame, Tiberium Goo and new units that use flame weaponry are missing garrison clearing effect as they inherit the base weapons before TW 1.05
	* Added garrison clearing effect to affected units
2. Purifying Flame, Tiberium Goo and new units that use flame weaponry will de-garrison units the instant it fires
	* Added separate projectile to add delay to de-garrisoning
		* This was an undocumented change for TW 1.05 relating to the addition of garrison clearing effects.
3. Purifying Flame, Tiberium Goo and new units that use flame weaponry Reacquire targets differently to the base weapons use as they inherit the values before TW 1.05
	* Changed ReAcquireDetailType to PER_CLIP
		* This was an undocumented change for TW 1.05
#### Cloaking Field
1. Advanced Units have a damage reduction to ability except for Sub-factions
	* Applied damage reduction to Sub-faction Advanced Units
#### Decoy Army
1. Can select and clone Drone Ships
	* Removed Drone ships from being cloned
#### Tiberium Vein Detonation
1. Weapon was not nerfed despite being documented in 1.01
	* Nerfed detonation damage by 20%
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

### Scrin:

#### Drone Platform
1. Subfaction Drone Platforms when undeploying have the ability to teleport with Mastermind and Prodigy or Phased with Phasefield ability. This was not present with Base Faction, even in Tiberium Wars
	* Removed ability to target undeploying Drone Platforms
#### Buzzer
1. Subfactions use Scrin Buzzer instead of their own
	* Create new buzzer units for each faction
		* Subfaction Buzzer Swarm Special Power will use the new Buzzers
#### Disintegrator
1. Reaper 17 use Scrin Disintegrator instead of their own
	* Create new disintegrator units for each faction
2. Traveler 59 uses speed values before TW 1.05 Patch
	* Increased squad speed from 50 to 65
3. Crush Damage Penalty would be applied to subfaction Scorpion tanks with the Dozer Upgrade
	* Damage is no longer applied to subfaction Scorpion tanks with the Dozer Upgrade
#### Seeker
1. Will prioritise infantry over aircraft or vehicles
	* Changed Weapon Category from GUN to MISSILE
#### Harvester
1. Will play generic EVA event when attacked instead of a unique Harvester EVA event
	* Changed EVA event for Harvester Under Attack
2. Reaper 17 has higher health value under the shields
	* Normalised health from 6000 to 5000
		* Reduced shield cooldown from 120 to 100 seconds to further match behaviour with Attenuated Forcefield
#### Corrupter
1. Healing ability may not work on certain sub faction units (such as the Explorer)
	* Added missing units into the ability
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
#### Mechapede
1. Hexapod recycling is not proportional to the segment cost
	* Change BuildCost (and BuildTime appropriately) from 1400 to 100
2. Subfactions use Scrin Mechapede Members instead of their own
	* Create new members for each faction
#### Stormrider
1. Weapon has reduced damage applied to 'light' units, but not to sub faction units
	* Added appropriate units to damage scalar
#### Reaper Tripod
1. Conversion Reserves would significantly decrease the damage of the conversion beams
	* Increased Damage to match unupgraded counterpart
2. Husk would use Annihilator Tripod Husk Model with the Reaper Tripod Texture
	* Created a new Reaper Tripod Husk model to be used instead
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
#### Mothership
1. Weapon would affect Subfaction Motherships but not Scrin
	* Weapon will no longer affect Subfaction Motherships
#### Attenuated Forcefield Upgrade
1. Scrin and Reaper 17 do not share upgrade, despite cost and time is identical
	* Reaper 17 units and upgrade refer to Scrin shields
#### Reaper 17 Shock Pods
1. Uses Scrin Veteran Shock Troopers instead of it's own
	* Created new Veteran Shock Trooper for Reaper 17
#### Conversion Beam
1. Inconsistencies with Damage FX between multiple units
	* Normalised type to GDI_RAILGUN
#### Eradicator Hexapod
1. Disintegrator visual lasers overwrite each other. Therefore if more than one laser is firing, only the latest shot laser will show.
	* Added new Weapons, Laser Draws and Laser States.
		* Added Heroic Laser Effects
