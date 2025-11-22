SMODS.Joker{
    key = "JOKER_Minos_Prime",
    config = {
        extra = {
            mult = 1,
            repetitions = 2,
            repetitions2 = 2
        }
    },
    pos = {
        x = 4,
        y = 4
    },
    soul_pos = {
        x = 7,
        y = 4
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
            return {vars = { card.ability.extra.mult}}
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
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.mult = (card.ability.extra.mult) + 0.2
                    return true
                end
                }
        end
        if context.repetition and context.cardarea == G.play  then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
        end
        if context.repetition and context.cardarea == G.hand and (next(context.card_effects[1]) or #context.card_effects > 1)  then
                return {
                    repetitions = card.ability.extra.repetitions2,
                    message = localize('k_again_ex')
                }
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    e_mult = card.ability.extra.mult
                }
        end
    end
}