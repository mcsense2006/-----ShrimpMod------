SMODS.Joker{
    key = 'JOKER_Room_Temperature',
    atlas = 'Jokers',
    pos = {x = 7, y = 2},
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = { extra = { } },
    credit = {
        art = 'TheCater_',
        code = 'Shrimp',
        concept = '@andresirlo',
    },

    loc_vars = function(self, info_queue, card)
        local jokers = G.jokers and G.jokers.cards or {}
        local count = #jokers
        local mult = count == 1 and 1 or count * 0.5
        return {vars = {mult}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            local jokers = G.jokers and G.jokers.cards or {}
            local count = #jokers
            local mult = count == 1 and 1 or count * 0.5
            return {
                Xmult = mult
            }
        end
    end
}