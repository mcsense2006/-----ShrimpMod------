SMODS.Joker{ --Steam Joker
    key = "JOKER_Steam_Joker",
    config = {
        extra = {
            Xmult = 1
        }
    },
    pos = {
        x = 11,
        y = 0
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
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "@Steam_Master0",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Dev', G.C.DARK_EDITION, G.C.BLACK, 1 )
    end,
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (function()
    local suitCount = 0
    for i, c in ipairs(context.scoring_hand) do
        if c:is_suit("Spades") then
            suitCount = suitCount + 1
        end
    end
    
    return suitCount >= 1
end)() then
                card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.1
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