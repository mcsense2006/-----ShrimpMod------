
SMODS.Joker{ --Slightly Weathered Waxed Cut Copper Stairs
    key = "JOKER_Copper_Stairs",
    config = {
        extra = {
            mult = 1
        }
    },
    pos = {
        x = 8,
        y = 4
    },
    cost = 7,
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
        concept = "Shrimp",
    },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.mult}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                Xmult = card.ability.extra.mult
            }
        end
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if (SMODS.get_enhancements(context.other_card)["m_shrimp_ENH_Copper"] == true or SMODS.get_enhancements(context.other_card)["m_shrimp_ENH_Oxidized_Copper"] == true or SMODS.get_enhancements(context.other_card)["m_shrimp_ENH_Weathered_Copper"] == true or SMODS.get_enhancements(context.other_card)["m_shrimp_ENH_Exposed_Copper"] == true) then
                card.ability.extra.mult = (card.ability.extra.mult) + 0.2
            end
        end
    end
}