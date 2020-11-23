# Here are issues that are known that have not been fixed in this package

#### MOD ONLY
* Switching Model LOD setting and then navigating to Skirmish, MP or Global Conquest to another menu crashes the game (Something to do with Skirmish AI)

#### NOD Turrets
* Shredder turrets and Laser Cannons have no visual update when upgraded. Need to reuse models and create unique visuals for the Hubs, like Tibcore upgrade

#### Quad Turrets
* Quad Turrets cause Desyncs in online multiplayer. A theory on the cause is the object is given a weapon after having none.
* Models have been worked around but still want to refine it, and create proper damage animations. Still need to create RUBBLE animations

#### Space Command Uplink Effects
* It is possible the devs intended to add a distortion effect but instead broke everything, removing the smoke. While the smoke has been fixed, the distortion has been removed.

#### EMP
* EMP effects have the tendency to lag online games, most notable with EMP grenade probably due to overlap
 
#### Cultist
* AI are not able to use mind control
 
#### Ravager
* AI are not able to use Tiberium Agitation properly
* Head bones have issues
 
#### Railgun Accelerator Heal
* Objects affected by Railgun Accelerator when healed by repair drone or structure repair will no longer take penalty damage when still under the effect

#### Redeemer
* Rage Generator effect begins as soon as the ability is activated instead of when the visual effect takes place. Whether or not this was intentional

#### MARV
* Unit will not move into range of Main Cannon if there is a sniper module. This is because it will only move into range of the sniper weapon as it has more range. Unfortunately, the best workaround at the moment is to reduce the sniper range.

#### Sonic Repulsion Field and Laser Fencing
* If structure was already targeted by a commando or engineer when the special power was added, commandos will still destroy the structure and engineers will still capture
* Your own engineer cannot enter your own structure to repair when Field or Fence is in effect.
 
#### Mechapede
* Mechapede Head does not spawn from the Warp Sphere, instead spawning at the rally point (Bug was introduced in 1.01). Don't think it's possible to fix

#### GDI Foxhole
* An exploit exist where the infantry creating the structure can be crushed by a unit in formation move when garrisoned

#### OCL_Generic_Tree_Crusher
* The intended purpose of this OCL is to remove objects in RubbleState, however this has the side effect of permanently destroying NOD Turrets. Best solution would be to remove it from all weapons
 
#### Force Fire
* Some units cannot Forcefire onto friendly or own objects and more importantly; own husks

#### LOW LOD Mammoth Tank
* Right railguns are offset

#### Campaign EVA
* A Grand Gesture... has a bonus objective that is missing an EVA dialogue. Unfortunately, the sound file pertaining to the objective is missing and there are no appropriate substitutes

#### APTUI
* Will need to investigate every APTUI and update them accordingly
	* HUDReplayControlPanel (The only missing APTUI which allows Fast Fowarding Replays. Schema modification (InGameUI FixedButtonHelp) is required, attempts to modify results in crashes. High possibility that feature is not possible)
	* Options (Based in the Apt Code, the geniuses at EA decided to replace the functionality of "Enable Kane Edition Content" for Classic Mouse Option INSTEAD of making different buttons)
	* LoadScreen (Outdated design, will need clean background to begin making changes)
