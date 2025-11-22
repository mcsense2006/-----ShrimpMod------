SMODS.Joker{
    name = "Soul Keeper",
    key = "JOKER_Soul_Keeper",
    config = {
        extra = {
            Xmult = 1
        }
    },
    pos = {x = 1, y = 4},
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "<Credits would be appreciated>",
    },

    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint then
            if context.consumeable and context.consumeable.ability.set == 'Spectral' then
                return {
                    func = function()
                        card.ability.extra.Xmult = (card.ability.extra.Xmult or 1) + 0.5
                        return true
                    end,
                    extra = {
                        message = 'Upgraded!',
                        colour = G.C.MULT
                    }
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main then
            return {
                Xmult = card.ability.extra.Xmult or 1
            }
        end
    end
}