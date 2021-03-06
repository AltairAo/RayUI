local R, L, P, G = unpack(select(2, ...)) --Import: Engine, Locales, ProfileDB, GlobalDB
local CT = R:GetModule("CombatText")

CT.merges = {}
CT.merge2h = {}
local function CreateMergeSpellEntry(class, interval, desc, prep)
  return {
         class = class      or "ITEM",
      interval = interval   or 3,
          prep = prep       or interval or 3,
          desc = desc,
    }
end

-- ---------------------------
-- Rogue                    --
-- ---------------------------

-- All Specs
CT.merges[152150]    = CreateMergeSpellEntry("ROGUE", 0.5, 0)            -- Death from Above
CT.merges[209043]    = CreateMergeSpellEntry("ROGUE", 0.5, 0)            -- Insignia of Ravenholdt (Legendary Ring - All Specs)

-- Assassination (ID: 259)
CT.merges[5374]      = CreateMergeSpellEntry("ROGUE", 0.5, 259)          -- Mutilate (MH)
CT.merges[2818]      = CreateMergeSpellEntry("ROGUE", 3.5, 259)          -- Deadly Poison (DoT)
CT.merges[113780]    = CreateMergeSpellEntry("ROGUE", 0.5, 259)          -- Deadly Poison (Instant)
CT.merges[51723]     = CreateMergeSpellEntry("ROGUE", 0.5, 259)          -- Fan of Knives
CT.merges[192660]    = CreateMergeSpellEntry("ROGUE", 2.5, 259)          -- Poison Bomb
CT.merge2h[192380]   = 113780                                            -- Artifact: Poison Knives
CT.merge2h[27576]    = 5374                                              -- Mutilate (OH)

-- Outlaw (ID: 260)
CT.merges[22482]     = CreateMergeSpellEntry("ROGUE", 1.5, 260)          -- Blade Flurry
CT.merges[57841]     = CreateMergeSpellEntry("ROGUE", 3.5, 260)          -- Killing Spree
CT.merges[185779]    = CreateMergeSpellEntry("ROGUE", 2.0, 260)          -- Talent: Cannonball Barrage
CT.merges[202822]    = CreateMergeSpellEntry("ROGUE", 0.5, 260)          -- Artifact: Greed
CT.merges[193315]    = CreateMergeSpellEntry("ROGUE", 0.5, 260)          -- Saber Slash
CT.merge2h[202823]   = 202822                                            -- [MH/OH Merger] Artifact: Greed
CT.merge2h[197834]   = 193315                                            -- [Proc Merger] Saber Slash

-- Sublety (ID: 261)
CT.merges[197835]    = CreateMergeSpellEntry("ROGUE", 0.5, 261)          -- Shuriken Storm
CT.merges[197800]    = CreateMergeSpellEntry("ROGUE", 0.5, 261)          -- Shadow Nova



-- ---------------------------
-- Warrior                  --
-- ---------------------------

-- All Specs
CT.merges[52174]     = CreateMergeSpellEntry("WARRIOR", 0.5, 0)          -- Heroic Leap
CT.merges[46968]     = CreateMergeSpellEntry("WARRIOR", 0.5, 0)          -- Shockwave
CT.merges[156287]    = CreateMergeSpellEntry("WARRIOR", 2.5, 0)          -- Ravager

-- Arms (ID: 71)
CT.merges[845]       = CreateMergeSpellEntry("WARRIOR", 0.5, 71)         -- Cleave
CT.merges[12294]     = CreateMergeSpellEntry("WARRIOR", 0.5, 71)         -- Talent: Sweeping Strikes (Mortal Strike)
CT.merges[772]       = CreateMergeSpellEntry("WARRIOR", 3.5, 71)         -- Talent: Rend
CT.merges[215537]    = CreateMergeSpellEntry("WARRIOR", 2.5, 71)         -- Talent: Trauma
CT.merges[209569]    = CreateMergeSpellEntry("WARRIOR", 2.5, 71)         -- Artifact: Corrupted Blood of Zakajz
CT.merges[209700]    = CreateMergeSpellEntry("WARRIOR", 0.5, 71)         -- Artifact: Void Cleave
CT.merges[209577]    = CreateMergeSpellEntry("WARRIOR", 2.5, 71)         -- Artifact: Warbreaker
CT.merges[199658]    = CreateMergeSpellEntry("WARRIOR", 1.5, 71)         -- Whirlwind
CT.merge2h[199850]   = 199658                                            -- [Spell Merger] Whirlwind

-- Fury (ID: 72)
CT.merges[184367]    = CreateMergeSpellEntry("WARRIOR", 2.5, 72)         -- Rampage (Red Face Icon)
CT.merges[96103]     = CreateMergeSpellEntry("WARRIOR", 0.5, 72)         -- Raging Blow
CT.merges[199667]    = CreateMergeSpellEntry("WARRIOR", 1.5, 72)         -- Whirlwind
CT.merges[23881]     = CreateMergeSpellEntry("WARRIOR", 0.5, 72)         -- Bloodthirst (Whirlwind: Meat Cleaver)
CT.merges[113344]    = CreateMergeSpellEntry("WARRIOR", 2.5, 72)         -- Talent: Bloodbath
CT.merges[118000]    = CreateMergeSpellEntry("WARRIOR", 0.5, 72)         -- Talent: Dragon Roar
CT.merges[50622]     = CreateMergeSpellEntry("WARRIOR", 2.5, 72)         -- Talent: Bladestorm
CT.merges[205546]    = CreateMergeSpellEntry("WARRIOR", 3.0, 72)         -- Artifact: Odyn's Fury (DoT)
CT.merge2h[205547]   = 205546                                            -- Artifact: Odyn's Fury (Hit)
CT.merge2h[85384]    = 96103                                             -- [MH/OH] Raging Blow
CT.merge2h[44949]    = 199667                                            -- [MH/OH] Whirlwind
CT.merge2h[95738]    = 50622                                             -- [MH/OH] Bladestorm
CT.merge2h[218617]   = 184367                                            -- Rampage (1st Hit)
CT.merge2h[184707]   = 184367                                            -- Rampage (2nd Hit)
CT.merge2h[184709]   = 184367                                            -- Rampage (3rd Hit)
CT.merge2h[201364]   = 184367                                            -- Rampage (4th Hit)
CT.merge2h[201363]   = 184367                                            -- Rampage (5th Hit)

-- Protection (ID: 73)
CT.merges[6572]      = CreateMergeSpellEntry("WARRIOR", 0.5, 73)         -- Revenge
CT.merges[115767]    = CreateMergeSpellEntry("WARRIOR", 3.5, 73)         -- Deep Wounds
CT.merges[6343]      = CreateMergeSpellEntry("WARRIOR", 0.5, 73)         -- Thunder Clap
CT.merges[7922]      = CreateMergeSpellEntry("WARRIOR", 0.5, 73)         -- Talent: Warbringer
CT.merges[222944]    = CreateMergeSpellEntry("WARRIOR", 3.0, 73)         -- Talent: Inspiring Presence
CT.merges[203526]    = CreateMergeSpellEntry("WARRIOR", 3.5, 73)         -- Artifact: Neltharion's Fury


-- ---------------------------
-- Priest                   --
-- ---------------------------

-- All Specs
CT.merges[589]       = CreateMergeSpellEntry("PRIEST", 2.5, 0)           -- Shadow Word: Pain
CT.merges[122128]    = CreateMergeSpellEntry("PRIEST", 2.5, 0)           -- Talent: Divine Star (Damage)
CT.merges[110745]    = CreateMergeSpellEntry("PRIEST", 2.5, 0)           -- Talent: Divine Star (Heal)
CT.merges[120696]    = CreateMergeSpellEntry("PRIEST", 2.0, 0)           -- Talent: Halo (Damage)
CT.merges[120692]    = CreateMergeSpellEntry("PRIEST", 2.0, 0)           -- Talent: Halo (Heal)
-- Discipline (ID: 256)
CT.merges[81751]     = CreateMergeSpellEntry("PRIEST", 2.5, 256)         -- Atonement
CT.merges[47666]     = CreateMergeSpellEntry("PRIEST", 2.5, 256)         -- Penance (Heal)
CT.merges[194509]    = CreateMergeSpellEntry("PRIEST", 0.5, 256)         -- Power Word: Radiance
CT.merges[204065]    = CreateMergeSpellEntry("PRIEST", 0.5, 256)         -- Talent: Shadow Covenant
CT.merges[47750]     = CreateMergeSpellEntry("PRIEST", 2.5, 256)         -- Talent: Penance (Damage)
CT.merges[204213]    = CreateMergeSpellEntry("PRIEST", 2.5, 256)         -- Talent: Purge the Wicked (DoT)
CT.merge2h[204197]   = 204213                                            -- Talent: Purge the Wicked (Instant)

-- Holy (ID: 257)
CT.merges[139]       = CreateMergeSpellEntry("PRIEST", 3.5, 257)         -- Renew
CT.merges[14914]     = CreateMergeSpellEntry("PRIEST", 2.5, 257)         -- Holy Fire
CT.merges[132157]    = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Holy Nova
CT.merges[34861]     = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Holy Word: Sanctify
CT.merges[596]       = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Prayer of Healing
CT.merges[77489]     = CreateMergeSpellEntry("PRIEST", 3.5, 257)         -- Mastery: Echo of Light
CT.merges[2061]      = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Talent: Trail of Light (Flash Heal)
CT.merges[32546]     = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Talent: Binding Heal
CT.merges[204883]    = CreateMergeSpellEntry("PRIEST", 0.5, 257)         -- Talent: Circle of Healing

-- Shadow (ID: 258)
CT.merges[49821]     = CreateMergeSpellEntry("PRIEST", 1.5, 258)         -- Mind Sear
CT.merges[34914]     = CreateMergeSpellEntry("PRIEST", 2.5, 258)         -- Vampiric Touch
CT.merges[148859]    = CreateMergeSpellEntry("PRIEST", 2.5, 258)         -- Shadowy Apparition
CT.merges[15407]     = CreateMergeSpellEntry("PRIEST", 2.0, 258)         -- Mind Flay
CT.merges[205386]    = CreateMergeSpellEntry("PRIEST", 0.5, 258)         -- Talent: Shadow Crash
CT.merges[217676]    = CreateMergeSpellEntry("PRIEST", 0.5, 258)         -- Talent: Mind Spike
CT.merges[193473]    = CreateMergeSpellEntry("PRIEST", 2.0, 258)         -- Artifact: Void Tendril (Mind Flay)
CT.merges[205065]    = CreateMergeSpellEntry("PRIEST", 2.0, 258)         -- Artifact: Void Torrent
CT.merges[194238]    = CreateMergeSpellEntry("PRIEST", 2.5, 258)         -- Artifact: Sphere of Insanity
CT.merges[204778]    = CreateMergeSpellEntry("PRIEST", 2.5, 258)         -- Honor Talent: Void Shield


-- ---------------------------
-- Paladin                  --
-- ---------------------------

-- All Specs
CT.merges[81297]     = CreateMergeSpellEntry("PALADIN", 2.5, 0)          -- Consecration
CT.merges[105421]    = CreateMergeSpellEntry("PALADIN", 0.5, 0)          -- Talent: Blinding Light
CT.merges[183811]    = CreateMergeSpellEntry("PALADIN", 2.5, 0)          -- Talent: Judgment of Light

-- Holy (ID: 65)
CT.merges[225311]    = CreateMergeSpellEntry("PALADIN", 0.5, 65)         -- Light of Dawn
CT.merges[53652]     = CreateMergeSpellEntry("PALADIN", 1.5, 65)         -- Becon of Light
CT.merges[119952]    = CreateMergeSpellEntry("PALADIN", 2.5, 65)         -- Talent: Light's Hammer (Heal)
CT.merges[114919]    = CreateMergeSpellEntry("PALADIN", 2.5, 65)         -- Talent: Light's Hammer (Damage)
CT.merges[114852]    = CreateMergeSpellEntry("PALADIN", 0.5, 65)         -- Talent: Holy Prism (Heal)
CT.merges[114871]    = CreateMergeSpellEntry("PALADIN", 0.5, 65)         -- Talent: Holy Prism (Damage)
CT.merges[210291]    = CreateMergeSpellEntry("PALADIN", 2.5, 65)         -- Talent: Aura of Mercy
CT.merges[200654]    = CreateMergeSpellEntry("PALADIN", 2.5, 65)         -- Artifact: Tyr's Deliverance

-- Protection (ID: 66)
CT.merges[31935]     = CreateMergeSpellEntry("PALADIN", 1.5, 66)         -- Avenger's Shield
CT.merges[88263]     = CreateMergeSpellEntry("PALADIN", 0.5, 66)         -- Hammer of the Righteous
CT.merges[204301]    = CreateMergeSpellEntry("PALADIN", 2.5, 66)         -- Blessed Hammer
CT.merges[209478]    = CreateMergeSpellEntry("PALADIN", 1.5, 66)         -- Artifact: Tyr's Enforcer
CT.merges[209202]    = CreateMergeSpellEntry("PALADIN", 0.5, 66)         -- Artifact: Eye of Tyr

-- Retribution (ID: 70)
CT.merges[224266]    = CreateMergeSpellEntry("PALADIN", 1.0, 70)         -- Templar's Verdict (Echo of the Highlord) *Delay on second hit
CT.merges[205729]    = CreateMergeSpellEntry("PALADIN", 1.0, 70)         -- Greater Blessing of Might
CT.merges[217020]    = CreateMergeSpellEntry("PALADIN", 0.5, 70)         -- Zeal
CT.merges[203539]    = CreateMergeSpellEntry("PALADIN", 5.5, 70)         -- Greater Blessings of Wisdom
CT.merges[184689]    = CreateMergeSpellEntry("PALADIN", 0.5, 70)         -- Shield of Vengeance
CT.merges[20271]     = CreateMergeSpellEntry("PALADIN", 1.5, 70)         -- Talent: Greater Judgment
CT.merges[198137]    = CreateMergeSpellEntry("PALADIN", 2.5, 70)         -- Talent: Divine Hammer
CT.merges[210220]    = CreateMergeSpellEntry("PALADIN", 0.5, 70)         -- Talent: Holy Wrath
CT.merges[205273]    = CreateMergeSpellEntry("PALADIN", 2.0, 70)         -- Artifact: Wake of Ashes
CT.merges[224239]    = CreateMergeSpellEntry("PALADIN", 1.5, 70)         -- Artifact: Divine Tempest (Divine Storm)
CT.merges[20271]     = CreateMergeSpellEntry("PALADIN", 0.5, 70)         -- Judgment
CT.merge2h[228288]   = 20271                                             -- [Bounce Merger] Judgment
CT.merge2h[216527]   = 20271                                             -- [PvP Talent] Lawbringer


-- ---------------------------
-- Hunter                   --
-- ---------------------------

-- All Specs
CT.merges[2643]      = CreateMergeSpellEntry("HUNTER", 0.5, 0)           -- Multi-Shot
CT.merges[131900]    = CreateMergeSpellEntry("HUNTER", 2.5, 0)           -- Talent: A Murder of Crows
CT.merges[194392]    = CreateMergeSpellEntry("HUNTER", 0.5, 0)           -- Talent: Volley
CT.merges[120361]    = CreateMergeSpellEntry("HUNTER", 1.5, 0)           -- Talent: Barrage

-- Beast Mastery (ID: 253)
CT.merges[118459]    = CreateMergeSpellEntry("HUNTER", 2.5, 253)         -- Pet: Beast Cleave
CT.merges[201754]    = CreateMergeSpellEntry("HUNTER", 0.5, 253)         -- Talent: Stomp
CT.merges[217207]    = CreateMergeSpellEntry("HUNTER", 0.5, 253)         -- Talent: Dire Frenzy
CT.merges[171454]    = CreateMergeSpellEntry("HUNTER", 0.5, 253)         -- Talent: Chimaera Shot
CT.merges[197465]    = CreateMergeSpellEntry("HUNTER", 0.5, 253)         -- Artifact: Surge of the Stormgod
CT.merges[207097]    = CreateMergeSpellEntry("HUNTER", 1.5, 253)         -- Artifact: Titan's Thunder
CT.merge2h[171457]   = 171454                                            -- [Cleave Merger] Chimaera Shot

-- Marksmanship (ID: 254)
CT.merges[19434]     = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Aimed Shot (Talent: Trick Shot + Windburst)
CT.merges[212621]    = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Marked Shot
CT.merges[186387]    = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Bursting Shot
CT.merges[212680]    = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Talent: Explosive Shot
CT.merges[214581]    = CreateMergeSpellEntry("HUNTER", 1.5, 254)         -- Talent: Sidewinders
CT.merges[198670]    = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Talent: Piercing Shot
CT.merges[191070]    = CreateMergeSpellEntry("HUNTER", 0.5, 254)         -- Artifact: Call of the Hunter
CT.merge2h[191043]   = 19434                                             -- Windburst

-- Survival (ID: 255)
CT.merges[187708]    = CreateMergeSpellEntry("HUNTER", 0.5, 255)         -- Carve
CT.merges[13812]     = CreateMergeSpellEntry("HUNTER", 2.5, 255)         -- Explosive Trap
CT.merges[194279]    = CreateMergeSpellEntry("HUNTER", 2.5, 255)         -- Talent: Caltrops
CT.merges[212436]    = CreateMergeSpellEntry("HUNTER", 0.5, 255)         -- Talent: Butchery
CT.merges[203413]    = CreateMergeSpellEntry("HUNTER", 2.5, 255)         -- Artifact: Fury of the Eagle
CT.merges[194859]    = CreateMergeSpellEntry("HUNTER", 2.5, 255)         -- Artifact: Dragonsfire Conflagration
CT.merges[194858]    = CreateMergeSpellEntry("HUNTER", 2.5, 255)         -- Artifact: Dragonsfire Grenade
CT.merges[164857]    = CreateMergeSpellEntry("HUNTER", 5.0, 255)         -- Passive: Survivalist


-- ---------------------------
-- Shaman                   --
-- ---------------------------

-- Elemental (ID: 262)
CT.merges[51505]     = CreateMergeSpellEntry("SHAMAN", 1.0, 262)         -- Lavaburst (Elemental)
CT.merges[188196]    = CreateMergeSpellEntry("SHAMAN", 1.0, 262)         -- Lightning Bolt (Elemental)
CT.merges[188443]    = CreateMergeSpellEntry("SHAMAN", 1.5, 262)         -- Chain Lightning (Elemental)
CT.merges[77478]     = CreateMergeSpellEntry("SHAMAN", 1.5, 262)         -- Earthquake
CT.merges[191732]    = CreateMergeSpellEntry("SHAMAN", 1.5, 262)         -- Artifact Greater Lightning Elemental
CT.merges[205533]    = CreateMergeSpellEntry("SHAMAN", 1.5, 262)         -- Artifact Greater Lightning Elemental
CT.merges[188389]    = CreateMergeSpellEntry("SHAMAN", 2.5, 262)         -- Flame Shock
CT.merges[51490]     = CreateMergeSpellEntry("SHAMAN", 0.5, 262)         -- Thunderstorm
CT.merges[192231]    = CreateMergeSpellEntry("SHAMAN", 2.5, 262)         -- Talent: Liquid Magma Totem
CT.merges[170379]    = CreateMergeSpellEntry("SHAMAN", 2.0, 262)         -- Talent: Earthn Rage
CT.merges[197568]    = CreateMergeSpellEntry("SHAMAN", 0.5, 262)         -- Talent: Lightning Rod
CT.merges[117588]    = CreateMergeSpellEntry("SHAMAN", 0.5, 262)         -- Talent: Primal Elementalist [Fire]
CT.merge2h[77451]    = 51505                                             -- [Mastery Merger] Lavaburst Overload
CT.merge2h[45297]    = 188443                                            -- [Mastery Merger] Chain Lightning Overload
CT.merge2h[45284]    = 188196                                            -- [Mastery Merger] Lightning Bolt Overload

-- Enhancement (ID: 263)
CT.merges[195256]    = CreateMergeSpellEntry("SHAMAN", 1.5, 263)         -- Stormlash (Gets Spammy!)
CT.merges[187874]    = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Crash Lightning
CT.merges[192592]    = CreateMergeSpellEntry("SHAMAN", 1.5, 263)         -- Stormstrike: Crash Lightning (TODO: Not working?)
CT.merges[25504]     = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Windfury Attacks
CT.merges[32175]     = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Stormstrike MH/OH Merger
CT.merges[10444]     = CreateMergeSpellEntry("SHAMAN", 1.5, 263)         -- Flametongue
CT.merges[199054]    = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Artifact: Unleash Doom
CT.merges[198485]    = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Artifact: Alpha Wolf
CT.merges[198483]    = CreateMergeSpellEntry("SHAMAN", 1.5, 263)         -- Artifact: Doom Wolves
CT.merges[199116]    = CreateMergeSpellEntry("SHAMAN", 2.0, 263)         -- Artifact: Doom Vortex
CT.merges[210854]    = CreateMergeSpellEntry("SHAMAN", 0.5, 263)         -- Talent: Hailstorm
CT.merges[210801]    = CreateMergeSpellEntry("SHAMAN", 2.5, 263)         -- Talent: Crashing Storm
CT.merges[197385]    = CreateMergeSpellEntry("SHAMAN", 2.5, 263)         -- Talent: Fury of Air
CT.merges[197214]    = CreateMergeSpellEntry("SHAMAN", 2.5, 263)         -- Talent: Sundering
CT.merge2h[32176]    = 32175                                             -- [MH/OH Merger] Stormstrike
CT.merge2h[199053]   = 199054                                            -- [MH/OH Merger] Artifact: Unleash Weapons

-- Restoration (Shaman) (ID: 264)
CT.merges[421]       = CreateMergeSpellEntry("SHAMAN", 0.5, 264)         -- Chain Lightning (Resto)
CT.merges[1064]      = CreateMergeSpellEntry("SHAMAN", 0.5, 264)         -- Chain Heal
CT.merges[73921]     = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Healing Rain
CT.merges[61295]     = CreateMergeSpellEntry("SHAMAN", 3.5, 264)         -- Riptide
CT.merges[52042]     = CreateMergeSpellEntry("SHAMAN", 3.0, 264)         -- Healing Stream Totem
CT.merges[114942]    = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Healing Tide Totem
CT.merges[197997]    = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Talent: Wellspring
CT.merges[114911]    = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Talent: Ancestral Guidance
CT.merges[157503]    = CreateMergeSpellEntry("SHAMAN", 0.5, 264)         -- Talent: Cloudburst
CT.merges[114083]    = CreateMergeSpellEntry("SHAMAN", 1.5, 264)         -- Talent: Ascendance
CT.merges[201633]    = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Talent: Earthen Shield
CT.merges[209069]    = CreateMergeSpellEntry("SHAMAN", 2.5, 264)         -- Artifact: Tidal Pools
CT.merges[208899]    = CreateMergeSpellEntry("SHAMAN", 3.0, 264)         -- Artifact: Queen's Decree
CT.merges[207778]    = CreateMergeSpellEntry("SHAMAN", 0.5, 264)         -- Artifact: Gift of the Queen


-- ---------------------------
-- Mage                     --
-- ---------------------------

-- All Specs
CT.merges[122]       = CreateMergeSpellEntry("MAGE", 1.5, 0)             -- Frost Nova

-- Arcane (ID: 62)
CT.merges[1449]      = CreateMergeSpellEntry("MAGE", 0.5, 62)            -- Arcane Explosion
CT.merges[7268]      = CreateMergeSpellEntry("MAGE", 2.5, 62)            -- Arcane Missiles
CT.merges[44425]     = CreateMergeSpellEntry("MAGE", 1.0, 62)            -- Arcane Barrage (Cleave)
CT.merges[88084]     = CreateMergeSpellEntry("MAGE", 0.5, 62)            -- Talent: Mirror Images
CT.merges[157980]    = CreateMergeSpellEntry("MAGE", 0.5, 62)            -- Talent: Supernova
CT.merges[114923]    = CreateMergeSpellEntry("MAGE", 2.5, 62)            -- Talent: Nether Tempest
CT.merges[153640]    = CreateMergeSpellEntry("MAGE", 2.5, 62)            -- Talent: Arcane Orb
CT.merges[157979]    = CreateMergeSpellEntry("MAGE", 0.5, 62)            -- Talent: Unstable Magic
CT.merges[210833]    = CreateMergeSpellEntry("MAGE", 0.5, 62)            -- Artifact: Touch of the Magi
CT.merges[211088]    = CreateMergeSpellEntry("MAGE", 2.5, 62)            -- Artifact: Mark of Aluneth (DoT)
CT.merge2h[210817]   = 44425                                             -- [DD/Splash Merger] Arcane Rebound
CT.merge2h[114954]   = 114923                                            -- [DD/DoT Merger] Arcane Rebound
CT.merge2h[211076]   = 211088                                            -- [DD/Splash Merger] Arcane Rebound

-- Fire (ID: 63)
CT.merges[31661]     = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Dragon's Breath
CT.merges[2120]      = CreateMergeSpellEntry("MAGE", 1.5, 63)            -- Flamestrike (Longer for talent)
CT.merges[12654]     = CreateMergeSpellEntry("MAGE", 2.5, 63)            -- Ignite (DoT)
CT.merges[205345]    = CreateMergeSpellEntry("MAGE", 2.5, 63)            -- Talent: Conflagration
CT.merges[88082]     = CreateMergeSpellEntry("MAGE", 2.0, 63)            -- Talent: Mirror Images
CT.merges[157981]    = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Talent: Blast Wave
CT.merges[157977]    = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Talent: Unstable Magic
CT.merges[198928]    = CreateMergeSpellEntry("MAGE", 1.5, 63)            -- Talent: Cinderstorm
CT.merges[217694]    = CreateMergeSpellEntry("MAGE", 3.5, 63)            -- Talent: Living Bomb (DoT)
CT.merges[44461]     = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Talent: Living Bomb (Explosion)
CT.merges[153564]    = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Talent: Meteor (Explosion)
CT.merges[155158]    = CreateMergeSpellEntry("MAGE", 2.5, 63)            -- Talent: Meteor (DoT)
CT.merges[194466]    = CreateMergeSpellEntry("MAGE", 0.5, 63)            -- Artifact: Phoenix's Flames
CT.merges[194522]    = CreateMergeSpellEntry("MAGE", 2.5, 63)            -- Artifact: Blast Furnace
CT.merges[215775]    = CreateMergeSpellEntry("MAGE", 1.5, 63)            -- Artifact: Phoenix Reborn
CT.merge2h[224637]   = 194466                                            -- [DD/Splash Merger] Phoenix's Flames
CT.merge2h[226757]   = 205345                                            -- [DD/Splash Merger] Conflagration
CT.merge2h[205472]   = 2120                                              -- [DD/DoT Merger] Talent: Flame Patch

-- Frost (ID: 64)
CT.merges[84721]     = CreateMergeSpellEntry("MAGE", 1.5, 64)            -- Frozen Orb
CT.merges[59638]     = CreateMergeSpellEntry("MAGE", 2.0, 64)            -- Talent: Mirror Images
CT.merges[157997]    = CreateMergeSpellEntry("MAGE", 0.5, 64)            -- Talent: Ice Nova
CT.merges[30455]     = CreateMergeSpellEntry("MAGE", 1.0, 64)            -- Talent: Spliting Ice
CT.merges[113092]    = CreateMergeSpellEntry("MAGE", 1.0, 64)            -- Talent: Frost Bomb
CT.merges[157978]    = CreateMergeSpellEntry("MAGE", 0.5, 64)            -- Talent: Unstable Magic
CT.merges[148022]    = CreateMergeSpellEntry("MAGE", 2.5, 64)            -- Icicles
CT.merges[190357]    = CreateMergeSpellEntry("MAGE", 2.5, 64)            -- Blizzard
CT.merges[153596]    = CreateMergeSpellEntry("MAGE", 2.5, 64)            -- Comet Storm


-- ---------------------------
-- Warlock                  --
-- ---------------------------

-- All Specs
CT.merges[689]       = CreateMergeSpellEntry("WARLOCK", 1.5, 0)          -- Drain Life

-- Affliction (ID: 265)
CT.merges[980]       = CreateMergeSpellEntry("WARLOCK", 2.5, 265)        -- Agony
CT.merges[146739]    = CreateMergeSpellEntry("WARLOCK", 2.5, 265)        -- Corruption
CT.merges[233490]    = CreateMergeSpellEntry("WARLOCK", 1.5, 265)        -- Unstable Affliction
CT.merges[27285]     = CreateMergeSpellEntry("WARLOCK", 0.5, 265)        -- Seed of Corruption
CT.merges[22703]     = CreateMergeSpellEntry("WARLOCK", 0.5, 265)        -- Infernal: Awakening
CT.merges[20153]     = CreateMergeSpellEntry("WARLOCK", 1.5, 265)        -- Infernal: Immolation
CT.merges[198590]    = CreateMergeSpellEntry("WARLOCK", 1.5, 265)        -- Talent: Drain Soul
CT.merges[205246]    = CreateMergeSpellEntry("WARLOCK", 1.5, 265)        -- Talent: Phantom Singularity
CT.merges[196100]    = CreateMergeSpellEntry("WARLOCK", 0.5, 265)        -- Talent: Grimoire of Sacrifice
CT.merges[218615]    = CreateMergeSpellEntry("WARLOCK", 0.5, 265)        -- Artifact: Harvester of Souls
CT.merges[199581]    = CreateMergeSpellEntry("WARLOCK", 0.5, 265)        -- Artifact: Soul Flame
CT.merge2h[233496]   = 233490                                            -- Unstable Affliction (Multiple Applications)
CT.merge2h[233499]   = 233490                                            -- Unstable Affliction (Multiple Applications)
CT.merge2h[233497]   = 233490                                            -- Unstable Affliction (Multiple Applications)
CT.merge2h[233498]   = 233490                                            -- Unstable Affliction (Multiple Applications)
CT.merge2h[231489]   = 233490                                            -- Unstable Affliction (Artifact: Compounding Horror)

-- Demonlogy (ID: 266)
CT.merges[603]       = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Doom
CT.merges[89753]     = CreateMergeSpellEntry("WARLOCK", 2.5, 266)        -- Felguard: Felstorm
CT.merges[104318]    = CreateMergeSpellEntry("WARLOCK", 1.5, 266)        -- Wild Imp: Fel Firebolt
CT.merges[193439]    = CreateMergeSpellEntry("WARLOCK", 1.5, 266)        -- Demonwrath
CT.merges[86040]     = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Hand of Gul'dan
CT.merges[196278]    = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Talent: Implosion
CT.merges[205231]    = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Talent: Summon Darkglare
CT.merges[211727]    = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Artifact: Thal'kiel's Discord
CT.merges[211714]    = CreateMergeSpellEntry("WARLOCK", 0.5, 266)        -- Artifact: Thal'kiel's Consumption (Demon Life Tap)

-- Destruction (ID: 267)
CT.merges[157736]    = CreateMergeSpellEntry("WARLOCK", 3.5, 267)        -- Immolate
CT.merges[29722]     = CreateMergeSpellEntry("WARLOCK", 0.5, 267)        -- Incinerate (Havoc / F&B Talent)
CT.merges[116858]    = CreateMergeSpellEntry("WARLOCK", 0.5, 267)        -- Choas Bolt (Havoc)
CT.merges[17962]     = CreateMergeSpellEntry("WARLOCK", 0.5, 267)        -- Conflagrate (Havoc)
CT.merges[42223]     = CreateMergeSpellEntry("WARLOCK", 2.5, 267)        -- Rain of Fire
CT.merges[152108]    = CreateMergeSpellEntry("WARLOCK", 0.5, 267)        -- Talent: Cataclysm
CT.merges[196448]    = CreateMergeSpellEntry("WARLOCK", 1.5, 267)        -- Talent: Channel Demonfire
CT.merges[187394]    = CreateMergeSpellEntry("WARLOCK", 1.5, 267)        -- Artifact: Dimensional Rift
CT.merge2h[348]      = 157736                                            -- [DD/DoT Merger] Immolate


-- ---------------------------
-- Monk                     --
-- ---------------------------

-- All Specs
CT.merges[130654]    = CreateMergeSpellEntry("MONK", 1.5, 0)             -- Chi Burst (Healing)
CT.merges[148135]    = CreateMergeSpellEntry("MONK", 1.5, 0)             -- Chi Burst (Damage)
CT.merges[196608]    = CreateMergeSpellEntry("MONK", 2.5, 0)             -- Talent: Eye of the Tiger
CT.merges[132467]    = CreateMergeSpellEntry("MONK", 1.5, 0)             -- Talent: Chi Wave (Damage)
CT.merges[132463]    = CreateMergeSpellEntry("MONK", 2.5, 0)             -- Talent: Chi Wave (Healing)
CT.merges[148187]    = CreateMergeSpellEntry("MONK", 1.5, 0)             -- Talent: Rushing Jade Wind
CT.merges[107270]    = CreateMergeSpellEntry("MONK", 1.5, 0)             -- Spinning Crane Kick
CT.merges[100784]    = CreateMergeSpellEntry("MONK", 1.0, 0)             -- Blackout Kick

-- Brewmaster (ID: 268)
CT.merges[124255]    = CreateMergeSpellEntry("MONK", 1.5, 268)           -- DmgTkn: Stagger
CT.merges[216521]    = CreateMergeSpellEntry("MONK", 1.0, 268)           -- Celestial Fortune
CT.merges[124507]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Gift of the Ox
CT.merges[115181]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Breath of Fire
CT.merges[123725]    = CreateMergeSpellEntry("MONK", 2.5, 268)           -- Breath of Fire (DoT)
CT.merges[121253]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Keg Smash
CT.merges[130654]    = CreateMergeSpellEntry("MONK", 1.5, 268)           -- Chi Burst (Healing)
CT.merges[130654]    = CreateMergeSpellEntry("MONK", 1.5, 268)           -- Chi Burst (Damage)
CT.merges[227291]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Talent: Niuzao, The Black Ox (Stomp)
CT.merges[196733]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Talent: Special Delivery
CT.merges[214326]    = CreateMergeSpellEntry("MONK", 0.5, 268)           -- Artifact: Exploding Keg
CT.merges[227681]    = CreateMergeSpellEntry("MONK", 1.5, 268)           -- Artifact: Dragonfire Brew
CT.merge2h[178173]   = 124507                                            -- [Greater Merger] Artifact: Overflow (double check)

-- Windwalker (ID: 269)
CT.merges[117952]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Crackling Jade Lightning (SEF)
CT.merges[124280]    = CreateMergeSpellEntry("MONK", 2.0, 269)           -- Touch of Karma
CT.merges[123586]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Flying Serpent Kick
CT.merges[117418]    = CreateMergeSpellEntry("MONK", 2.0, 269)           -- Fists of Fury
CT.merges[100780]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Tiger Palm (SEF)
CT.merges[185099]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Rising Sun Kick (SEF)
CT.merges[196748]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Talent: Chi Orbit
CT.merges[158221]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Talent: Whirling Dragon Punch
CT.merges[222029]    = CreateMergeSpellEntry("MONK", 0.5, 269)           -- Artifact: Strike of the Windlord
CT.merge2h[205414]   = 222029                                            -- [MH/OH Merger] Artifact: Strike of the Windlord
CT.merge2h[196061]   = 117418                                            -- [DMG Merger] Artifact: Crosswinds

-- Mistweaver (ID: 270)
CT.merges[115175]    = CreateMergeSpellEntry("MONK", 1.5, 270)           -- Soothing Mist
CT.merges[124682]    = CreateMergeSpellEntry("MONK", 1.5, 270)           -- Eneloping Mist
CT.merges[191840]    = CreateMergeSpellEntry("MONK", 1.5, 270)           -- Essence Font
CT.merges[119611]    = CreateMergeSpellEntry("MONK", 2.0, 270)           -- Renewing Mists
CT.merges[115310]    = CreateMergeSpellEntry("MONK", 0.5, 270)           -- Revival
CT.merges[116670]    = CreateMergeSpellEntry("MONK", 0.5, 270)           -- Vivify
CT.merges[124081]    = CreateMergeSpellEntry("MONK", 1.5, 270)           -- Talent: Zen Pulse
CT.merges[162530]    = CreateMergeSpellEntry("MONK", 1.5, 270)           -- Talent: Refreshing Jade Wind
CT.merges[198756]    = CreateMergeSpellEntry("MONK", 2.5, 270)           -- Talent: Invoke Chi'Ji
CT.merges[199668]    = CreateMergeSpellEntry("MONK", 2.0, 270)           -- Artifact: Blessing of Yu'lon
CT.merges[199656]    = CreateMergeSpellEntry("MONK", 2.0, 270)           -- Artifact: Celestial Breath
CT.merge2h[198533]   = 115175                                            -- [Statue Merger] Talent: Jade Serpent Statue
CT.merge2h[228649]   = 100784                                            -- [Passive Merger] Teachings of the Monastery


-- ---------------------------
-- Druid                    --
-- ---------------------------

-- All Specs
CT.merges[164812]    = CreateMergeSpellEntry("DRUID", 2.5, 0)            -- Moonfire
CT.merges[164815]    = CreateMergeSpellEntry("DRUID", 2.5, 0)            -- Sunfire

-- Balance (ID: 102)
CT.merges[194153]    = CreateMergeSpellEntry("DRUID", 0.5, 102)          -- Lunar Strike
CT.merges[191037]    = CreateMergeSpellEntry("DRUID", 2.0, 102)          -- Starfall
CT.merges[202347]    = CreateMergeSpellEntry("DRUID", 2.5, 102)          -- Talent: Stellar Flare
CT.merges[202497]    = CreateMergeSpellEntry("DRUID", 2.5, 102)          -- Talent: Shooting Stars
CT.merges[211545]    = CreateMergeSpellEntry("DRUID", 2.5, 102)          -- Talent: Fury of Elune
CT.merges[202771]    = CreateMergeSpellEntry("DRUID", 0.5, 102)          -- Artifact: Full Moon
CT.merge2h[226104]   = 191037                                            -- Artifact: Echoing Stars

-- Feral (ID: 103)
CT.merges[106785]    = CreateMergeSpellEntry("DRUID", 0.5, 103)          -- Swipe (Cat)
CT.merges[106830]    = CreateMergeSpellEntry("DRUID", 2.5, 103)          -- Thrash (Cat)
CT.merges[155722]    = CreateMergeSpellEntry("DRUID", 2.5, 103)          -- Rake
CT.merges[1079]      = CreateMergeSpellEntry("DRUID", 2.5, 103)          -- Rip
CT.merges[155625]    = CreateMergeSpellEntry("DRUID", 2.5, 103)          -- Talent: Lunar Inspiration
CT.merges[202028]    = CreateMergeSpellEntry("DRUID", 0.5, 103)          -- Talent: Brutal Slash
CT.merges[210723]    = CreateMergeSpellEntry("DRUID", 1.5, 103)          -- Artifact: Ashamane's Frenzy
CT.merges[210687]    = CreateMergeSpellEntry("DRUID", 0.5, 103)          -- Artifact: Shadow Thrash
CT.merge2h[1822]     = 155722                                            -- [DD/DoT Merger] Rake

-- Guardian (ID: 104)
CT.merges[227034]    = CreateMergeSpellEntry("DRUID", 1.5, 104)          -- Mastery: Nature's Guardian
CT.merges[22842]     = CreateMergeSpellEntry("DRUID", 1.5, 104)          -- Frenzied Regeneration
CT.merges[33917]     = CreateMergeSpellEntry("DRUID", 0.5, 104)          -- Mangle (Incarnation Cleave)
CT.merges[213771]    = CreateMergeSpellEntry("DRUID", 0.5, 104)          -- Swipe (Bear)
CT.merges[77758]     = CreateMergeSpellEntry("DRUID", 2.5, 104)          -- Thrash (Bear)
CT.merges[213709]    = CreateMergeSpellEntry("DRUID", 2.5, 104)          -- Talent: Brambles
CT.merges[204069]    = CreateMergeSpellEntry("DRUID", 2.5, 104)          -- Talent: Lunbar Beam
CT.merges[219432]    = CreateMergeSpellEntry("DRUID", 2.5, 104)          -- Artifact: Rage of the Sleeper
CT.merge2h[192090]   = 77758                                             -- [DD/DoT Merger] Thrash
CT.merge2h[203958]   = 213709                                            -- [Barkskin Merger] Brambles

-- Restoration (Druid) (ID: 105)
CT.merges[81269]     = CreateMergeSpellEntry("DRUID", 1.5, 105)          -- Efflorescence
CT.merges[33763]     = CreateMergeSpellEntry("DRUID", 1.5, 105)          -- Lifebloom
CT.merges[774]       = CreateMergeSpellEntry("DRUID", 3.5, 105)          -- Rejuvenation
CT.merges[8936]      = CreateMergeSpellEntry("DRUID", 2.5, 105)          -- Regrowth
CT.merges[157982]    = CreateMergeSpellEntry("DRUID", 2.5, 105)          -- Tranquility
CT.merges[48438]     = CreateMergeSpellEntry("DRUID", 2.5, 105)          -- Wild Growth (Instant)
CT.merges[42231]     = CreateMergeSpellEntry("DRUID", 2.5, 105)          -- Hurricane
CT.merges[200389]    = CreateMergeSpellEntry("DRUID", 3.5, 105)          -- Talent: Cultivation
CT.merges[189853]    = CreateMergeSpellEntry("DRUID", 0.5, 105)          -- Artifact: Dreamwalker
CT.merge2h[189800]   = 48438                                             -- [HoT/Artifact Merger] Nature's Essence
CT.merge2h[155777]   = 774                                               -- [HoT/HoT Merger] Talent: Germination
CT.merge2h[207386]   = 81269                                             -- [Heal/HoT Merger] Talent: Spring Blossom


-- ---------------------------
-- Demon Hunter             --
-- ---------------------------

-- Havoc (ID: 577)
CT.merges[222031]    = CreateMergeSpellEntry("DEMONHUNTER", 3.0, 577)    -- Chaos Strike (server side delay?)
CT.merges[185123]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Throw Glaive (Havoc)
CT.merges[198030]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Eye Beam
CT.merges[192611]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Fel Rush
CT.merges[185123]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Throw Glaive
CT.merges[199552]    = CreateMergeSpellEntry("DEMONHUNTER", 2.0, 577)    -- Blade Dance
CT.merges[200166]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Metamorphosis (Landing)
CT.merges[198813]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Vengeful Retreat
CT.merges[179057]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Chaos Nova
CT.merges[203796]    = CreateMergeSpellEntry("DEMONHUNTER", 2.5, 577)    -- Talent: Demon Blades
CT.merges[211052]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Talent: Fel Barrage
CT.merges[202388]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Artifact: Inner Demons
CT.merges[201628]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 577)    -- Artifact: Fury of the Illidari
CT.merges[217070]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Artifact: Rage of the Illidari
CT.merges[202446]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 577)    -- Artifact: Anguish
CT.merge2h[199547]   = 222031                                            -- [MH/OH Merger] Chaos Strike
CT.merge2h[200685]   = 199552                                            -- [MH/OH Merger] Blade Dance
CT.merge2h[201789]   = 201628                                            -- [MH/OH Merger] Fury of the Illidari

-- Vengeance  (ID: 581)
CT.merges[204157]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 581)    -- Throw Glaive (Vengeance)
CT.merges[187727]    = CreateMergeSpellEntry("DEMONHUNTER", 2.5, 581)    -- Immolation Aura
CT.merges[204598]    = CreateMergeSpellEntry("DEMONHUNTER", 2.5, 581)    -- Sigil of Flame
CT.merges[189112]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 581)    -- Infernal Strike
CT.merges[222030]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 581)    -- Soul Cleave
CT.merges[203794]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 581)    -- Consume Soul
CT.merges[207771]    = CreateMergeSpellEntry("DEMONHUNTER", 2.5, 581)    -- Talent: Burning Alive
CT.merges[227255]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 581)    -- Talent: Fel Devastation
CT.merges[218677]    = CreateMergeSpellEntry("DEMONHUNTER", 0.5, 581)    -- Talent: Spirit Bomb
CT.merges[218677]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 581)    -- Talent: Spirit Bomb (Frailty Heal)
CT.merges[213011]    = CreateMergeSpellEntry("DEMONHUNTER", 2.5, 581)    -- Artifact: Charred Warblades
CT.merges[207407]    = CreateMergeSpellEntry("DEMONHUNTER", 1.5, 581)    -- Artifact: Soul Carver (DoT)
CT.merge2h[178741]   = 187727                                            -- [DD/DoT Merger] Immolation Aura
CT.merge2h[208038]   = 222030                                            -- [DD/DoT Merger] Soul Cleave
CT.merge2h[214743]   = 207407                                            -- [DD/DoT Merger] Soul Cleave
CT.merge2h[212106]   = 227255                                            -- [MH/OH Merger] Fel Devastation
CT.merge2h[212084]   = 227255                                            -- Reported From Curse: Should be Fel Devastation


-- ---------------------------
-- Death Knight             --
-- ---------------------------

-- All Specs
CT.merges[52212]     = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 0)      -- Death and Decay

-- Blood (ID: 250)
CT.merges[55078]     = CreateMergeSpellEntry("DEATHKNIGHT", 3.5, 250)    -- Blood Plague
CT.merges[50842]     = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Blood Boil
CT.merges[195292]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Death's Caress (DRW)
CT.merges[49998]     = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Death Strike (DRW)
CT.merges[206930]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Heart Strike
CT.merges[212744]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Talent: Soulgorge
CT.merges[196528]    = CreateMergeSpellEntry("DEATHKNIGHT", 1.5, 250)    -- Talent: Bonestorm (DMG)
CT.merges[196545]    = CreateMergeSpellEntry("DEATHKNIGHT", 1.5, 250)    -- Talent: Bonestorm (Heal)
CT.merges[205223]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Artifact: Consumption (DMG)
CT.merges[205224]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- Artifact: Consumption (Heal)
CT.merges[203166]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 250)    -- PVP Talent: Blight (ID: 203172)
CT.merges[203174]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 250)    -- PVP Talent: Death Chain (ID: 203173)

-- Frost (ID: 251)
CT.merges[196771]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 251)    -- Remorseless Winter
CT.merges[55095]     = CreateMergeSpellEntry("DEATHKNIGHT", 3.5, 251)    -- Frost Fever
CT.merges[49184]     = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Howling Blast
CT.merges[222024]    = CreateMergeSpellEntry("DEATHKNIGHT", 3.0, 251)    -- Obliterate (For Merge)
CT.merges[222026]    = CreateMergeSpellEntry("DEATHKNIGHT", 3.0, 251)    -- Frost Strike (For Merge)
CT.merges[207194]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Talent: Volatile Shielding
CT.merges[195750]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Talent: Frozen Pulse
CT.merges[207150]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Talent: Avalanche
CT.merges[207230]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Talent: Frostscythe
CT.merges[195975]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Talent: Glacial Advance
CT.merges[155166]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 251)    -- Talent: Breath of Sindragosa
CT.merges[190780]    = CreateMergeSpellEntry("DEATHKNIGHT", 1.5, 251)    -- Artifact: Sindragosa's Fury
CT.merges[204959]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 251)    -- Artifact: Frozen Soul
CT.merge2h[66198]    = 222024                                            -- [MH/OH Merger] Obliterate
CT.merge2h[66196]    = 222026                                            -- [MH/OH Merger] Frost Strike

-- Unholy (ID: 252)
CT.merges[215969]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Virulent Plague (DoT)
CT.merges[70890]     = CreateMergeSpellEntry("DEATHKNIGHT", 3.0, 252)    -- Scourge Strike
CT.merges[194311]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Festering Wound
CT.merges[91778]     = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Pet: Sweeping Claws
CT.merges[199373]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 252)    -- Army: Claw
CT.merges[191587]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 252)    -- Virulent Plague (DoT)
CT.merges[218321]    = CreateMergeSpellEntry("DEATHKNIGHT", 1.5, 252)    -- Artifact: Dragged to Helheim
CT.merges[191758]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Artifact: Corpse Explosion
CT.merges[207267]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Talent: Dragged to Helheim
CT.merges[212338]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Talent: Sludge Belcher
CT.merges[212739]    = CreateMergeSpellEntry("DEATHKNIGHT", 0.5, 252)    -- Talent: Epidemic
CT.merges[156000]    = CreateMergeSpellEntry("DEATHKNIGHT", 2.5, 252)    -- Talent: Defile
CT.merge2h[55090]    = 70890                                             -- [Cleave Merger] Scourge Strike
CT.merge2h[191685]   = 215969                                            -- [DD/DoT Merger] Virulent Plague Eruption
CT.merge2h[212969]   = 212739                                            -- [DD/DoT Merger] Talent: Epidemic
