SMODS.Joker{
    name = "Two-Way Mirror",
    key = "JOKER_Two_Way_Mirror",
    config = {
        extra = {
            Xmult = 2
        }
    },
    pos = {x = 3, y = 3},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "@andresirlo ",
    },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round and not context.blueprint then
            if SMODS.get_enhancements(context.other_card)["m_glass"] == true then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}