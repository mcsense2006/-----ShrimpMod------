SMODS.Joker{
    key = "JOKER_The_Big_Shot",
    config = {
        extra = {
            chips = 1997
        }
    },
    pos = {
        x = 2,
        y = 6
    },
    soul_pos = {
        x = 3,
        y = 6
    },
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "@xzid3n",
    },

    set_ability = function(self, card, initial)
        card:set_edition("e_foil", true)
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Deltarune', G.C.DARK_EDITION, G.C.WHITE, 1 )
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card.edition and context.other_card.edition.key == "e_foil" then
                return {
                    chips = card.ability.extra.chips,
                    message = "[[Hyperlink Blocked]]"
                }
            end
        end
    end
}