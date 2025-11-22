SMODS.Joker{
    key = "JOKER_Sketch",
    config = {
        extra = {
            poof = 0,
            jokercount = 0
        }
    },
    pos = {
        x = 15,
        y = 0
    },
    cost = 10,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.poof}}
    end,
    credit = {
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "Shrimp",
    },
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  and not context.blueprint then
                card.ability.extra.poof = #(G.jokers and G.jokers.cards or {})
        end
        
        local target_joker = nil
        
        target_joker = G.jokers.cards[poof]
        if target_joker == card then
            target_joker = nil
        end
        
        local ret = SMODS.blueprint_effect(card, target_joker, context)
        if ret then
            SMODS.calculate_effect(ret, card)
        end
    end
}