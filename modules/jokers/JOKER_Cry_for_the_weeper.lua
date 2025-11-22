SMODS.Joker{ --Cry for the weeper 
    key = "JOKER_Cry_for_the_weeper",
    config = {
        extra = {
            odds = 6,
            n = 0
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if (context.other_card:get_id() == 6 or context.other_card:get_id() == 14) then
                if SMODS.pseudorandom_probability(card, 'group_0_b29d7544', 1, card.ability.extra.odds, 'j_modprefix_JOKER_Cry_for_the_weeper', false) then
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
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = created_consumable and localize('k_plus_spectral') or nil, colour = G.C.SECONDARY_SET.Spectral})
          end
            end
        end
    end
}