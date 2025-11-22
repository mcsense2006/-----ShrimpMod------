--------------------MOD CODE--------------------
--                      If you're the creator of one or another content you see in this mod and you don't want it there, contact me (@marxense) on discord
-----VERSION 2.0.0-public beta 2-----
-- Sprites
SMODS.Atlas{key = 'Mahjong_Cards',path = 'Mahjong_Cards.png',px = 71, py = 95}
SMODS.Atlas{key = 'mahjong_back', path = 'mahjong_back.png', px = 71, py = 95}
SMODS.Atlas{key = 'Mahjong_UI',   path = 'Mahjong_UI.png',   px = 18, py = 18}
SMODS.Atlas{key = 'Voucher',      path = 'voucher.png',      px = 71, py = 95}
SMODS.Atlas{key = 'booster',      path = 'Booster.png',      px = 71, py = 95}
SMODS.Atlas{key = 'Sinful',       path = 'Sinful.png',       px = 65, py = 95}
SMODS.Atlas{key = 'Jokers',       path = 'Jokers.png',       px = 71, py = 95}
SMODS.Atlas{key = 'Solar',        path = 'Solar.png',        px = 65, py = 95}
SMODS.Atlas{key = 'modicon',      path = 'icon.png',         px = 32, py = 32}
SMODS.Atlas{key = 'Tag',          path = 'tag.png',          px = 34, py = 34}
SMODS.Atlas{key = 'blind_chips',  path = 'BlindChips.png',   atlas_table = 'ANIMATION_ATLAS',frames = 21,px = 34,py = 34}
-- Custom colors
loc_colour('red') 
G.ARGS.LOC_COLOURS['Epic'] = HEX('01A6AF')
G.ARGS.LOC_COLOURS['Prime'] = HEX('F5CF86')
G.ARGS.LOC_COLOURS['Mahjong'] = HEX('4BC292')
G.ARGS.LOC_COLOURS['Ultrakill'] = HEX('8F0300')
--Epic rarity
SMODS.Rarity{
    key = 'epic',
    default_weight = 0.025,
    badge_colour = HEX('01A6AF'),
    get_weight = function(self, weight, object_type)
        return weight
    end,
    pools = {
        ['Joker'] = true
    },
}
--Prime soul rarity
SMODS.Rarity{
    key = 'prime',
    default_weight = 0,
    badge_colour = HEX('F5CF86'),
    get_weight = function(self, weight, object_type)
        return weight
    end,
}
SMODS.ConsumableType {
    key = 'Solar',
    primary_colour = HEX('063970'),
    secondary_colour = HEX('063970'),
}
SMODS.ConsumableType {
    key = 'Sinful',
    primary_colour = HEX('8F0300'),
    secondary_colour = HEX('8F0300'),
}
--Links
function G.FUNCS.joy_discord(e)
    love.system.openURL('https://discord.gg/WakQxQmdC5')
end
function G.FUNCS.joy_youtube(e)
    love.system.openURL('https://youtube.com/')                     --No Youtube atm, need to make like a trailer to mod video or sm
end
--links tab and credits tab
SMODS.current_mod.extra_tabs = function()
    local scale = 0.5
    return {
        -- Our-Links tab borrowed from the terraria x balatro mod
        {
            label = 'Our Links',
            tab_definition_function = function()
                return {
                    n = G.UIT.ROOT,
                    config = {
                        align = 'cm',
                        padding = 0.05,
                        colour = G.C.CLEAR,
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = { padding = 0.2, align = 'cm' },
                            nodes = {
                                {
                                    n = G.UIT.C,
                                    config = { padding = 0.2, align = 'cm' },
                                    nodes = {
                                        UIBox_button({
                                            colour = G.C.BLUE,
                                            minw = 3.85,
                                            button = 'joy_discord',
                                            label = { 'Join our Discord' }
                                        })
                                    }
                                },
                                {
                                    n = G.UIT.C,
                                    config = { padding = 0.2, align = 'cm' },
                                    nodes = {
                                        UIBox_button({
                                            colour = G.C.RED,
                                            minw = 3.85,
                                            button = 'joy_youtube',
                                            label = { 'Watch our YouTube' }
                                        })
                                    }
                                }
                            }
                        }
                    }
                }
            end
        },
        -- Credits
        {
            label = 'Credits',
            tab_definition_function = function()
                return {
                    n = G.UIT.ROOT,
                    config = {
                        align = 'cm',
                        padding = 0.05,
                        colour = G.C.CLEAR,
                    },
                    nodes = {
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = 'cm'},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = 'Project Lead: The Shrimp',
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.PURPLE
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = 'cm'},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = 'Artists: The Shrimp, theCater_, @Steam_Master0',
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.MONEY
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = 'cm'},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = 'Programmers: The Shrimp, sushii64',
                                        shadow = false,
                                        scale = scale,
                                        colour = G.C.GREEN
                                    }
                                }
                            }
                        },
                        {
                            n = G.UIT.R,
                            config = {padding = 0, align = 'cm'},
                            nodes = {
                                {
                                    n = G.UIT.T,
                                    config = {
                                        text = 'Concepting: Credit for each additions are put on them, solar cards inspired by u/Cuddly_Corvid',
                                        shadow = false,
                                        scale = scale * 0.6,
                                        colour = G.C.BLACK
                                    }
                                }
                            }
                        }
                    }
                }
            end
        }
    }
end
-- Morshu's theme
SMODS.Sound{
    key = 'music_Morshu_Theme',
    path = 'Morshu_Theme.ogg',
    volume = 1.2,
    pitch = 1,
    sync = false,
    select_music_track = function()
        return next(SMODS.find_card('j_shrimp_JOKER_Morshu')) and math.huge or false
    end,
}
----------------------------------------------------------------------------------------------------------------------
--Load common jokers
assert(SMODS.load_file('./modules/jokers/JOKER_Goofy_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Merry_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Loony_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Zesty_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Glitched_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Witty_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Shrewd_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Brainy_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Savvy_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_No_Face,_No_Case.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Two_Way_Mirror.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Claustrophobic.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Halleys_Comet.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Drunk_Vision.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Landslide.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Frieren.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Gay_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Feast_Or_Famine.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Clairvoyance.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Social_Ladder.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Crustacean_Dealer.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Aestetic_of_hate.lua'))()
--Load uncommon jokers
assert(SMODS.load_file('./modules/jokers/JOKER_Oops_all_1s.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Bismuth.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Jonkler.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Earthmover.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Sinful_Witch.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Joker_Achromatope.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Colorblind_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Room_Temperature.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Soul_Keeper.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Predictable_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Perkeolator.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Broken_Limbs.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Static_Clown.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Runner_Kick.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Brunnhilde.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Sunk_Cost_Fallacy.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Soul_of_the_Galaxy.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Cry_for_the_weeper.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Rinshan.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Red_Dora.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Little_Dragons.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Big_Dragons.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Common_Ends.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Four_Concealed_Triplets.lua'))()
--Load rare jokers
assert(SMODS.load_file('./modules/jokers/JOKER_All_Terminals.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_All_Honors.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_All_Green.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Fern.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Venom_Snake.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Paper_Shredder.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Dark_Matter.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Spiritist.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Spirit_Infusion.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Chudjoker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Steak.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Movie_Time.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Appetizer.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Package.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_In_the_wake_of_Poseidon.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Solo.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Partners.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Feast.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Royal.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Canva.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Steam_Joker.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Sketch.lua'))()
--Load epic jokers
assert(SMODS.load_file('./modules/jokers/JOKER_The_Big_Shot.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Morshu.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Legion.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Court.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Monolith.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_The_Library_Of_Order.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Quid_Pro_Quo.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Apoptosis.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Necrosis.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Madness.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Angry.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Rude.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Flesh_Prison.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Flesh_Panopticon.lua'))()
--Load prime jokers
assert(SMODS.load_file('./modules/jokers/JOKER_Minos_Prime.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_Sisyphus_Prime.lua'))()
--Load legendary jokers
assert(SMODS.load_file('./modules/jokers/JOKER_L_Shrimp.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_L_Caterpillar.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_L_Pangoreuil.lua'))()
assert(SMODS.load_file('./modules/jokers/JOKER_L_Calamitas.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load Blinds
assert(SMODS.load_file('./modules/blinds/BLIND_The_Rune.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load Vouchers
assert(SMODS.load_file('./modules/vouchers/VOUCH_Hoarder_T1.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load Solar
assert(SMODS.load_file('./modules/solar/SOLAR_Red_Giant.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_White_Dwarf.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_Main_Sequence.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_Neutron.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_Pulsar.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_Brown_Dwarf.lua'))()
assert(SMODS.load_file('./modules/solar/SOLAR_Protostar.lua'))()
--Load Sinful
assert(SMODS.load_file('./modules/sinful/SIN_Greed.lua'))()
assert(SMODS.load_file('./modules/sinful/SIN_Wrath.lua'))()
assert(SMODS.load_file('./modules/sinful/SIN_Envy.lua'))()
assert(SMODS.load_file('./modules/sinful/SIN_Gluttony.lua'))()
assert(SMODS.load_file('./modules/sinful/SIN_Sloth.lua'))()
assert(SMODS.load_file('./modules/sinful/SIN_Sigilum_Dei.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load packs
assert(SMODS.load_file('./modules/booster/BOOSTER_Solar_Packs.lua'))()
assert(SMODS.load_file('./modules/booster/BOOSTER_Sinful_Packs.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load Tags
assert(SMODS.load_file('./modules/tags/TAG_Epic.lua'))()
----------------------------------------------------------------------------------------------------------------------
--Load mahjong related things
--assert(SMODS.load_file('./modules/suits/SUIT_Mahjong.lua'))()
--assert(SMODS.load_file('./modules/deck/DECK_Mahjong.lua'))()
--Load mahjong hands
--assert(SMODS.load_file('./modules/mahjong_hands/All_Simples.lua'))()
--assert(SMODS.load_file('./modules/mahjong_hands/All_Green.lua'))()


-- Main menu (Stolen from JoyousSpring who stole from Cryptid)
local game_main_menu_ref = Game.main_menu
function Game:main_menu(change_context)
    local ret = game_main_menu_ref(self, change_context)

    local newcard = SMODS.create_card { key = "j_shrimp_JOKER_Crustacean_Dealer", area = G.title_top, no_edition = true }

    self.title_top.T.w = self.title_top.T.w * 1.7675
        self.title_top.T.x = self.title_top.T.x - 0.8
    newcard.T.w = newcard.T.w * 1.1 * 1.2
    newcard.T.h = newcard.T.h * 1.1 * 1.2
    newcard.no_ui = true
    newcard.states.visible = false
    self.title_top:emplace(newcard)
    self.title_top:align_cards()
    if change_context == "splash" then
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0,
            blockable = false,
            blocking = false,
            func = function()
                newcard.states.visible = true
                newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, true, 2.5)
                return true
            end,
        }))
    else
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0,
            blockable = false,
            blocking = false,
            func = function()
                newcard.states.visible = true
                newcard:start_materialize({ G.C.WHITE, G.C.WHITE }, nil, 1.2)
                return true
            end,
        }))
    end
end