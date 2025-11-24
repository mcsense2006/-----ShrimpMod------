SMODS.Joker{
    key = "JOKER_In_The_wake_Of_Poseidon",
    config = {
        extra = {
            Xchips = 1
        }
    },
    pos = {
        x = 0,
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

    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.Xchips}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if ((function()
    local rankCount = 0
    for i, c in ipairs(context.scoring_hand) do
        if c:get_id() == 14 then
            rankCount = rankCount + 1
        end
    end
    
    return rankCount >= 1
end)() and (function()
    local rankCount = 0
    for i, c in ipairs(context.scoring_hand) do
        if c:get_id() == 5 then
            rankCount = rankCount + 1
        end
    end
    
    return rankCount >= 1
end)()) then
                card.ability.extra.Xchips = (card.ability.extra.Xchips) + 1
                return {
                    x_chips = card.ability.extra.Xchips
                }
            else
                return {
                    x_chips = card.ability.extra.Xchips
                }
            end
        end
    end
}