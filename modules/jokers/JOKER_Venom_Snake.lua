SMODS.Joker{
    key = "JOKER_Venom_Snake",
    config = {
        extra = {
            Xmult = 1
        }
    },
    pos = {
        x = 12,
        y = 1
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "",
        code = "Shrimp",
        concept = "",
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable  and not context.blueprint then
            if context.consumeable and context.consumeable.ability.set == 'Planet' and context.consumeable.config.center.key == 'c_earth' then
                return {
                    func = function()
                    card.ability.extra.Xmult = (card.ability.extra.Xmult) + 1
                    return true
                end,
                    message = "Kept you waiting, huh ?"
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}