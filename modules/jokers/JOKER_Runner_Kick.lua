SMODS.Joker{
    key = "JOKER_Runner_Kick",
    config = {
        extra = {
            Xmult = 3
        }
    },
    pos = {
        x = 14,
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
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "@andresirlo",
    },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}