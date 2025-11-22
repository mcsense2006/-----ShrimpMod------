SMODS.Joker{
    key = "JOKER_Little_Dragons",
    config = {
        extra = {
            mult = 0
        }
    },
    pos = {
        x = 2,
        y = 2
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
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.mult}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if ((function()
    local count = 0
    for _, playing_card in pairs(context.scoring_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_gold"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.scoring_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_steel"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)() or (function()
    local count = 0
    for _, playing_card in pairs(context.scoring_hand or {}) do
        if SMODS.get_enhancements(playing_card)["m_stone"] == true then
            count = count + 1
        end
    end
    return count >= 2
end)()) then
                card.ability.extra.mult = (card.ability.extra.mult) + 5
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.mult
                }
        end
    end
}