SMODS.Joker{
    key = "JOKER_All_Green",
    config = {
        extra = {
            Xmult = 1
        }
    },
    pos = {
        x = 0,
        y = 5
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
        art = "Shrimp",
        code = "Shrimp",
        concept = "u/a45wesley",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Xmult}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if (next(context.poker_hands["Flush"]) and (function()
    local allMatchSuit = true
    for i, c in ipairs(context.scoring_hand) do
        if not (c:is_suit("Clubs")) then
            allMatchSuit = false
            break
        end
    end
    
    return allMatchSuit and #context.scoring_hand > 0
end)()) then
                card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.5
                return {
                    message = "Updated!",
                    extra = {
                        Xmult = card.ability.extra.Xmult
                        }
                }
            else
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}