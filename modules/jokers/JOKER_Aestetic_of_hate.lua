SMODS.Joker{ --Aestetic of hate
    key = "JOKER_Aestetic_of_hate",
    config = {
        extra = {
            dollars = 2
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if context.other_card:get_id() == 6 then
                return {
                    dollars = card.ability.extra.dollars
                }
            end
        end
    end
}