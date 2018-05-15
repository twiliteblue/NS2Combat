--________________________________
--
--   	NS2 Combat Mod
--	Made by JimWest and MCMLXXXIV, 2012
--
--________________________________

-- Experience based values like avgXpAmount is still in ExperienceData

-- Welcome Message that every player receives who joined our game
combatModifiedMessage = "This mod is not reflective of the standard NS2 experience!!"
combatWelcomeMessage = {combatModifiedMessage,
                        "This server is running a special Combat Mod V." .. kCombatVersion .. ".",
                        "This mod removes RTS elements and gives you upgrades for kills.",
                        "Score = XP and Resources = Upgrade Points to use.",
                        "For more information type /help in the chat or console."
                        }

                        
-- How often to send kills, deaths, nick name changes, etc. for scoreboard
kScoreboardUpdateInterval = 2

-- How often to send ping updates to individual players
kUpdatePingsIndividual = 5

-- How often to send ping updates to all players.
kUpdatePingsAll = 12

						
kCombatUpgradeNotifyInterval = 20
kCombatReminderNotifyInterval = 45
kDirectMessageFadeTime = 8
kDirectMessagesNumVisible = 9

-- Menu tweaks
kCombatAlienBuyMenuTotalAngle = 0.8
kCombatAlienBuyMenuUpgradeButtonDistance = 210

-- Set the respawn timer
kCombatRespawnTimer = 12
kAlienWaveSpawnInterval = 12
kCombatOvertimeRespawnTimer = 16

-- Rebalancing Intervals (secs)
kCombatRebalanceInterval = 300

-- Spawning radius and retries.
kSpawnMaxRetries = 50
kSpawnMinDistance = 2
kSpawnMaxDistance = 70
kSpawnMaxVertical = 30
kSpawnArmoryMaxRetries = 200
kArmorySpawnMinDistance = 7
kArmorySpawnMaxDistance = 60

-- By default, Aliens win after a certain amount of time...
-- Specified in seconds...
-- Time Limit is now specified in ModSwitcher.
--Todo: Move these to a server config
CombatModActive = true
kCombatCompMode = false
kCombatTimeLimit = 1500
kCombatAllowOvertime = true
kCombatDefaultWinner = kTeam2Index
kCombatTimeLeftPlayed = 0
kCombatTimeReminderInterval = 300

-- make xpeffect less "spammy"
kXPEffectTimer = 0.2
kXPForgetTimer = 5

-- Timers for Scan, Resupply and Catalyst packs.
kScanTimer = 14
kResupplyTimer = 6
AmmoPack.kNumClips = 1
kCatalystTimer = 14
-- scan Duration, maybe we need to tune it a bit
kScanDuration = 7

-- Make these less "spammy"
kEMPTimer = 30
kInkTimer = 30
-- reduce ink amount a bit
ShadeInk.kShadeInkDisorientRadius = 9
kCombatTauntCheckInterval = 4

-- Focus
kCombatFocusAttackSpeed = 0.6
kCombatFocusDamageScalar = 1.4

-- Props
kPropEffect = "vortex_destroy"
kPropEffectTimer = 2

-- Gestate Times
kGestateTime = {}
kGestateTime[kTechId.Skulk] = 1
kGestateTime[kTechId.Gorge] = 2
kGestateTime[kTechId.Lerk] = 2
kGestateTime[kTechId.Fade] = 3
kGestateTime[kTechId.Onos] = 6
kSkulkGestateTime = kGestateTime[kTechId.Skulk]

-- Spawn protection
kCombatSpawnProtectDelay = 0.1
kCombatMarineSpawnProtectTime = 2
-- nano shield = spawn Protection
kNanoShieldDuration = kCombatMarineSpawnProtectTime 
-- Alien time includes time spent in the egg.
kCombatAlienSpawnProtectTime = kSkulkGestateTime + 2

-- No eggs
kAlienEggsPerHive = 0

-- Don't try to increase the Infestation radius above kMaxRadius - you will get errors in Infestation.lua
--kHiveInfestationRadius = 20

-- Tweaks for weapons and upgrades
-- Camouflage
kCamouflageTime = 2
kCamouflageUncloakFactor = 2 / 3

-- The rate at which players heal the hive/cc should be multiplied by this ratio.
kHiveCCHealRate = 0.3
-- The rate at which players gain XP for healing... relative to damage dealt.
kHealXpRate = 1
-- Rate at which players gain XP for healing other players...
kPlayerHealXpRate = 0

-- Power points
kPowerPointHealth = 1200	
kPowerPointArmor = 500	
kPowerPointPointValue = 0
-- Moved to CombatConfig.json
--kCombatPowerPointsTakeDamage = true
kCombatPowerPointAutoRepairTime = 300

-- Alien vision should be free
kAlienVisionCost = 0
kAlienVisionEnergyRegenMod = 1

-- kill hydras after some time if the owner isn't a gorge
kHydraKillTime = 30

-- Time delay for exo suits to power up.
kExoPowerUpTime = 3

-- Grenade Launcher nerf
kGrenadeLauncherGrenadeDamage = 135

-- Ammo for mines
kNumMines = 1

-- number of handgrenaeds
kMaxHandGrenades = 1

-- Override the costs of each of our entries.
-- These won't take effect on the client side until we import this file into the client side mods

-- at the moment, nobody should buy something, it needs to be implemented before
kPlayerInitialIndivRes = 0
local generalCost = 99

kShotgunCost = generalCost
kMinesCost = generalCost
kGrenadeLauncherCost = generalCost
kFlamethrowerCost = generalCost
kJetpackCost = generalCost
kExosuitCost = generalCost
kMinigunCost = generalCost
kDualMinigunCost = generalCost

-- Used by alien buy menu
kGorgeCost = 1
kLerkCost = 2
kFadeCost = 4
kOnosCost = 5

kCarapaceCost = generalCost
kRegenerationCost = generalCost
kAuraCost = generalCost
kSilenceCost = generalCost
kHydraAbilityCost = generalCost
kHydraCost = 0
kWebBuildCost = 0
kPiercingCost = generalCost
kAdrenalineCost = generalCost
kFeintCost = generalCost
kSapCost = generalCost
kBoneShieldCost = generalCost
kCelerityCost = generalCost
kHyperMutationCost = generalCost
kGorgeTunnelCost = generalCost
kBabblerCost = 0

-- to get it loaded into the TechData
SetCachedTechData(kTechId.Hydra, kTechDataCostKey, kHydraCost)
SetCachedTechData(kTechId.GorgeTunnel, kTechDataCostKey, kGorgeTunnelCost)
SetCachedTechData(kTechId.BabblerEgg, kTechDataCostKey, kBabblerCost)
SetCachedTechData(kTechId.Web, kTechDataCostKey, kWebBuildCost)

-- Health values
-- Make the marine structures slightly less squishy...
kArmoryHealth = 3500
kCommandStationHealth = 6000

-- Range for evolving to Onos/Exo from the Hive/CommandStation
kTechRange = 20.0

-- nerf range of xeno
kXenocideRange = 9

-- EMP energy drain
kEMPBlastEnergyDamage = 75

--set starting personal resources to 0
kMarineInitialIndivRes = 0
kAlienInitialIndivRes = 0

-- Cooldown for buying exo/onos
-- disabled this for better balance
kHeavyTechCooldown = 0

-- Alien Tier to Ability map
kCombatAlienTierTwoTechIds = { kTechId.Leap, kTechId.BabblerEgg, kTechId.BabblerAbility, kTechId.Umbra, kTechId.MetabolizeEnergy, kTechId.MetabolizeHealth, kTechId.Charge, kTechId.BoneShield }
kCombatAlienTierThreeTechIds = { kTechId.BileBomb, kTechId.Web, kTechId.BoneShield, kTechId.Spores, kTechId.Stab, kTechId.Stomp }
if not kCombatCompMode then
	-- Add Xenocide only if not competitive mode
	table.insert(kCombatAlienTierThreeTechIds, kTechId.Xenocide)
end