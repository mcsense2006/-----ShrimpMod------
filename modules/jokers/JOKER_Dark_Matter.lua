SMODS.Joker{
    key = 'JOKER_Dark_Matter',
    atlas = 'Jokers',
    pos = {x = 6, y = 1},
    cost = 7,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {extra = { }},
    credit = {
    art = "TheCater_",
    code = "Shrimp",
    concept = "u/WarmTranslator6633",
},
    loc_vars = function(self, info_queue, card)
        local jokers = G.jokers and G.jokers.cards or {}
        local neg_count = 0
        for _, j in ipairs(jokers) do
            if j.edition and j.edition.negative then
                neg_count = neg_count + 1
            end
        end
        local total_mult = 1 + neg_count
        return {vars = {total_mult}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            local jokers = G.jokers and G.jokers.cards or {}
            local neg_count = 0
            for _, j in ipairs(jokers) do
                if j.edition and j.edition.negative then
                    neg_count = neg_count + 1
                end
            end
            local total_mult = 1 + neg_count
            return {
                Xmult = total_mult
            }
        end
    end
}