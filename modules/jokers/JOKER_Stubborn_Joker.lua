SMODS.Joker{
    key = "JOKER_Stubborn_Joker",
    config = {
        extra = {
            Xmult = 2
        }
    },
    pos = {
        x = 11,
        y = 1
    },
    cost = 8,
    rarity = 3,
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
            if context.scoring_name == "Five of a Kind" then
                return {
                    x_mult = card.ability.extra.Xmult
                }
            end
        end
    end
}