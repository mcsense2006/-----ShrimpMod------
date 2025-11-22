SMODS.Joker{
    key = "JOKER_Big_Dragons",
    config = {
        extra = {
            Xmult = 3
        }
    },
    pos = {
        x = 6,
        y = 0
    },
    cost = 5,
    rarity = 2,
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
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if ((function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_gold"] == true then
            count = count + 1
        end
    end
    return count >= 3
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_steel"] == true then
            count = count + 1
        end
    end
    return count >= 3
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.full_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_stone"] == true then
            count = count + 1
        end
    end
    return count >= 3
end)()) then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}