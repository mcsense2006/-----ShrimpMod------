SMODS.Joker{
    key = "JOKER_Appetizer",
    config = {
        extra = {
            Xmult = 1
        }
    },
    pos = {
        x = 1,
        y = 6
    },
    cost = 10,
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
        concept = "@andresirlo",
    },
    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if not ((function()
    local current_played = G.GAME.hands[context.scoring_name].played or 0
    for handname, values in pairs(G.GAME.hands) do
        if handname ~= context.scoring_name and values.played > current_played and values.visible then
            return false
        end
    end
    return true
end)()) then
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