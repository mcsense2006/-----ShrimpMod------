SMODS.Joker{
    key = "JOKER_Brunnhilde",
    config = {
        extra = {
            repetitions = 3
        }
    },
    pos = {
        x = 13,
        y = 1
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
        if context.repetition and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
            end
        end
    end
}