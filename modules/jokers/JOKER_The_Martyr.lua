
SMODS.Joker{ --The Martyr
    key = "JOKER_The_Martyr",
    config = {
        extra = {
            xchips = 4,
            Xmult = 4,
            xchips2 = 0.5,
            Xmult2 = 0.5
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 15,
    rarity = 'shrimp_twisted',
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    
    set_ability = function(self, card, initial)
        card:set_eternal(true)
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if G.GAME.current_round.hands_played == 0 then
                return {
                    x_chips = card.ability.extra.xchips,
                    extra = {
                        Xmult = card.ability.extra.Xmult
                    }
                }
            elseif not (G.GAME.current_round.hands_played == 0) then
                return {
                    x_chips = card.ability.extra.xchips2,
                    extra = {
                        Xmult = card.ability.extra.Xmult2
                    }
                }
            end
        end
    end
}