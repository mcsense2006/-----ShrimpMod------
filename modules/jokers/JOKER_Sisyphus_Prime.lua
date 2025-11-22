SMODS.Joker{
    key = "JOKER_Sisyphus_Prime",
    config = {
        extra = {
            Xmult = 1,
            repetitions = 8
        }
    },
    pos = {
        x = 4,
        y = 4
    },
    soul_pos = {
        x = 6,
        y = 5
    },
    cost = 30,
    rarity = 'shrimp_prime',
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Xmult}}
    end,
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = 'Shrimp',
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Ultrakill', HEX("8F0300"), G.C.White, 1 )
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                card.ability.extra.Xmult = (card.ability.extra.Xmult) + 0.1
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}