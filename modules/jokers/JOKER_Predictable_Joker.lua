SMODS.Joker{
    name = "Predictable Joker",
    key = "JOKER_Predictable_Joker",
    config = {
        extra = {
            pos = 1,
            mult = 8,
            dollars = 3
        }
    },
    credit = {
        art = 'Shrimp',
        code = 'Shrimp',
        concept = 'Shrimp',
    },
    pos = {
        x = 7,
        y = 0
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round and not context.blueprint then
            if SMODS.get_enhancements(context.other_card)["m_lucky"] == true then
                return {
                    mult = card.ability.extra.mult,
                    extra = {
                        dollars = card.ability.extra.dollars,
                        colour = G.C.MONEY
                        }
                }
            end
        end
    end
}