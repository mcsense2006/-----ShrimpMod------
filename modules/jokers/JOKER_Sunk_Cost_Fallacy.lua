SMODS.Joker{
    key = 'JOKER_Sunk_Cost_Fallacy',
    atlas = 'Jokers',
    pos = {x = 1, y = 3},
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            Xmult = 1,
            currentmoney = 0
        }
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "@andresirlo",
},
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if G.GAME.dollars < to_big(0) then
                card.ability.extra.Xmult = (G.GAME.dollars) * -0.25
                return {
                    Xmult = card.ability.extra.Xmult
                }
            else
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}