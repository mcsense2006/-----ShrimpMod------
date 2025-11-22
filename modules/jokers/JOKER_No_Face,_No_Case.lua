SMODS.Joker{
    key = 'JOKER_No_Face_No_Case',
    atlas = 'Jokers',
    pos = {x = 2, y = 0},
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    credit = {
    art = "Shrimp",
    code = "sushii64",
    concept = "Shrimp",
},
    config = {extra = {mult = 4}},
    
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.mult }}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.other_card:is_face() then
                return {
                    mult = 4
                }
            end
        end
    end
}