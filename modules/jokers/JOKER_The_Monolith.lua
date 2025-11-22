SMODS.Joker{
    key = "JOKER_The_Monolith",
    config = {
        extra = {
            emult = 1.5
        }
    },
    pos = {
        x = 9,
        y = 3
    },
    soul_pos = {
        x = 10,
        y = 3
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
        concept = "Shrimp",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Played Hand series', G.C.WHITE, G.C.BLACK, 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "Flush Five" then
                return {
                    e_mult = card.ability.extra.emult
                }
            end
        end
    end
}