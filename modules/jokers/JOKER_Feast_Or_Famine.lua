SMODS.Joker{
    key = 'JOKER_Feast_Or_Famine',
    atlas = 'Jokers',
    pos = {x = 15, y = 2},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            moneyshopgoal = 0,
            Xmult = 1,
            currentmoney = -25
        }
    },    credit = {
    art = "TheCater_",
    code = "",
    concept = "@andresirlo",
},
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.starting_shop  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.moneyshopgoal = card.ability.extra.currentmoney + (G.GAME.dollars)
                    return true
                end
                }
        end
        if context.ending_shop  and not context.blueprint then
            if card.ability.extra.moneyshopgoal <= G.GAME.dollars then
                return {
                    func = function()
                    card.ability.extra.Xmult = 3
                    return true
                end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.Xmult = 1
                    return true
                end
                }
        end
    end
}