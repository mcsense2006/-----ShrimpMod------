SMODS.Joker{ --Madness
    key = "JOKER_Madness",
    config = {
        extra = {
            repetitions = 6,
            Xmult = 1.6,
            n = 0
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 15,
    rarity = "shrimp_epic",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.setting_blind  then
                return {
                    func = function()
      
    for i = 1, math.min(1, G.consumeables.config.card_limit - #G.consumeables.cards) do
            G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
            play_sound('timpani')
            SMODS.add_card({ set = 'Sinful', })                            
            card:juice_up(0.3, 0.5)
            return true
        end
        }))
    end
    delay(0.6)

                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
                    end
                    return true
                  end
                }
        end
        if context.repetition and context.cardarea == G.play  then
            if context.other_card == context.scoring_hand[1] then
                return {
                    repetitions = card.ability.extra.repetitions,
                    message = localize('k_again_ex')
                }
            end
        end
        if context.individual and context.cardarea == G.play  then
            if (G.GAME.dollars >= to_big(66) and context.other_card:get_id() == 6) then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}