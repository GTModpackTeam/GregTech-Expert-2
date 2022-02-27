# v1.1.1(hotfix)
## Fix recipes
### AE2
* 2k Spatial Component
* 16k Spatial Component
* 128k Spatial Component
* Nether Quartz Rod
* Certus Quartz Rod
* Fluix Crystal

### Torch Master
* Mega Torch

* * *

# v1.1.0
## Information
* This version doesn't do it yet, but we will disable EU->RF conversion for GT cables in the next update. 
* Also, this version will be a grace period for the complete migration to the Converter, which has been added to GT.

## Modpack update
* Quest include v0.6.4.
* More languages are now supported by modpack. However, quests are not supported.
* Also, I haven't completed the support for all but en_us and ja_jp, but I will do my best to update them.
    * ja_JP
    * en_US
    * ru_RU
    * zh_cn

## Upgrade mods
* GregTech CE: Unofficial
* Not Enough Energistics

## Add mod
* Zen Utils
    * Introduced to support multiple languages.

## New items
### AE2
* Matrix Core

### EnderIO
* Stellar Capacitor

### GregTech
* Nether Quartz Rod
* Certus Quartz Rod
* Quartzite Quartz Rod

## Fix recipes
### AE2
* Formation Core
* Annihilation Core

### EnderIO
* Reviewed EBF processing temperature and voltage set for all ingots.

## Update recipes
### AE2
* Reviewed circuit and voltage settings for all Components.
* Wireless Terminal
* Fluix Block
* Quartz Fiber
* Quantum Ring
* Spatial IO Port
* ME Drive
* ME Interface
* ME Fluid Interface
* Dense Energy Cell
* Liquid Charged Certus Quartz Crystal
* Charged Certus Quartz Dust
* Charged Certus Quartz Crystal
* Fluix Crystal

### Extra Cells
* Reviewed circuit and voltage settings for all Components.
* ME Fluid Assembler

### EnderIO
* Farming Station
* Slice'N'Splice
* Soul Binder
* Powered Spawner
* Dimensional Transceiver
* Ender Armors
* The Ender Mark IV
* Stellar Tools
* Stellar Armors

### Minecraft
* Lead
* Brewing Stand

### Torchmaster
* Mega Torch

### Volumetric Flask
* Interface

### Modpack
* Creative Energy Cell
* Creative Capacitor Bank

* * *

# v1.0.3
## Downgrade mods
* AE2 Unofficial Extended Life v50f -> v50b(The error has not been fixed)

## Server start error
* We found that the server did not start, so we distributed a patch here.

* * *

# v1.0.2
## Upgrade mod
* ReAuth -> OAuth
* AE2 Unofficial Extended Life
* GregTech CE: Unofficial
* Gregicality Multiblocks
* GregTech Food Option

## Del mods
* Extra CPUs(Support had been terminated)
* Manually delete the gregtech-1.12.2-2.2.0-beta-gte.jar in mods.

## Add mods
* Born in a Barn
* Devtech
* RandomPatches

## Modpack update
* I put a Discord link on the CMM 😎
* Quest updated to v0.6.2.
* Fixed a bug that prevented the multiblock machine from completing assembly.
* Added SawMill as a new multiblock machine.
* Creative Energy Cell liquid requirements have changed.
* Changed all recipes for Certus Quartz and Quartzite to the same number of creations as Nether Quartz.

# Del recipes
## Minecraft
* Path(Because changes were made to allow for recovery).

## Update recipes
### AE2
* Quartz Block -> GT Quartz Block

## Fix recipes
### AE2
* Certus Quartz
* Charged Certus Quartz Crystal
* Fluix
* Certus Quartz Dust
* Quartzite Dust
* Charged Certus Quartz Dust
* Fluix Dust
* Certus Quartz
* Charged Certus Quartz Crystal
* Fluix Crystal

### GregTech
* Quartzite
* Certus Quartz Plate
* Quartzite Plate
* Quartzite Block

#### Internal stuff not relevant to the crafter
* Individualized ZenScript for Multiblock from GregTech.zs. It's hard to check when there are too many.

* * *

# v1.0.1
Respond to the fact that GTFO is not included and that quests are not included.

* * *

# v1.0.0
## 💣 Update Warning 💣
* Make a backup of your world before updating.
    * Fluix Dust and Charged Certus Quartz Dust are now made by GT and should be used up before the update. 
    * Removed the EIO cables as there are already various GT cables.

## EnderIO rework
* EnderIO has been acquired by GT...?
    * Until now, EIO has not been strongly associated with GT, but this update reflects the atmosphere of GT more strongly.
    * In other words, EIO became GT.

## Quest plz plz plz!!
* I implemented the quest this time because I had received feedback in my DMs and on Twitter, including from the original GTE.

## Del mods
* Compact Drawers
* JustEnoughItems -> Had Enough Items

## New mods
* Ding
* AE2 Wireless Fluid Terminal
* AE2 Wireless Interface Terminal
* Wireless Pattern Terminal

## Update mods
* AE2 Unofficial Extended Life
* CraftTweaker
* GregTech Food Option
* CensoredASM
* MixinBooter
* Not Enough Energistics

## Config update
### FTB Ultimine
* maxBlocks=64 -> maxBlocks=128

### FTB Utilities
* B:chunk_loading=true -> B:chunk_loading=false
    * **To use Chicken Chunks**

### GregTech
* B:recipeProgressLowEnergy=false -> B:recipeProgressLowEnergy=true
    * 💣 Like GT5u, the work is reset when the power is insufficient. 💣
* B:hardWoodRecipes=false -> B:hardWoodRecipes=true
    * Wood-related crafts are becoming more difficult.

## Update recipe
### Ender Storage
* Pouch
* Chest
* Tank

### Exchanging Gadget
* Building Gadget
* Copy-Paste Gadget
* Exchanging Gadget
* Destruction Gadget

## Add recipe
### AE2WTLib
* Wireless Crafting Terminal
* Wireless Fluid Terminal
* Wireless Interface Terminal
* Wireless Pattern Terminal
* Wireless Universal Terminal
* Wireless Booster Card
* Magnet Card

## Del recipe
#### AE2
* Charger
* ME Import Bus
* ME Fluid Import Bus
* ME Export Bus
* ME Fluid Export Bus

### Extra Cells
* Wireless Fluid Terminal
* Wireless Universal Terminal
* ME Ore Dictionary Export Bus

### Minecraft
* Granite
* Diorite
* Andesite
* Clay Block

### Modpack Update(recipe)
* Creative Energy Cell
* Creative Capacitor Bank
* GTE ME Storage Fake Component
* Infinite GT Energy Unit Emitter
