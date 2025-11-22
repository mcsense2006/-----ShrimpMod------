SMODS.Joker{
    key = 'JOKER_Sinful_Witch',
    atlas = 'Jokers',
    pos = {x = 11, y = 2},
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            mult = 0
        }
    },
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "Shrimp",
    },
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.mult}}
    end,

    calculate = function(self, card, context)
        if context.using_consumeable  and not context.blueprint then
            if context.consumeable and context.consumeable.ability.set == 'Sinful' then
                return {
                    func = function()
                    card.ability.extra.mult = (card.ability.extra.mult) + 5
                    return true
                end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.mult
                }
        end
    end
}