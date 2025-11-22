SMODS.Joker{ 
    name = "Claustrophobic",
    key = "JOKER_Claustrophobic",
    credit = {
    art = "TheCater_",
    code = "Shrimp",
    concept = "@andresirlo",
},
    pos = {
        x = 5,
        y = 3
    },
    config = {
        extra = {
            var1 = 0
        }
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    calculate = function(self, card, context)
        if context.starting_shop then
            -- count cards in deck
            local deck_size = #(G.deck and G.deck.cards or {})
            local above_52 = math.max(0, deck_size - 52)
            
            if above_52 > 0 then
                return {
                    dollars = above_52
                }
            end
        end
    end
}