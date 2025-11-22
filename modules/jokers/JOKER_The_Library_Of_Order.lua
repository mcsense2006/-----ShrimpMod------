SMODS.Joker{
    key = "JOKER_The_Library_Of_Order",
    config = {
        extra = {
            prob = 1,
            odds = 150,
            respect = 0
        }
    },
    pos = {
        x = 14,
        y = 2
    },
    soul_pos = {
        x = 15,
        y = 1
    },
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = '@xzid3n',
    },

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, card.ability.extra.prob, card.ability.extra.odds, 'j_shrimp_The_Library_Of_Order') 
        return {vars = {card.ability.extra.prob, new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.selling_self  and not context.blueprint then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_dd70ba9b', card.ability.extra.prob, card.ability.extra.odds, 'j_shrimp_The_Library_Of_Order', false) then
              SMODS.calculate_effect({func = function()
            local created_joker = false
    if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
        created_joker = true
        G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'Legendary' })
                    if joker_card then
                        
                        
                    end
                    G.GAME.joker_buffer = 0
                    return true
                end
            }))
            end
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
            return true
        end}, card)
                        SMODS.calculate_effect({func = function()
            local created_joker = false
    if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
        created_joker = true
        G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'Legendary' })
                    if joker_card then
                        
                        
                    end
                    G.GAME.joker_buffer = 0
                    return true
                end
            }))
            end
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
            return true
        end}, card)
          end
            end
        end
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.prob = (card.ability.extra.prob) * 2
                    return true
                end,
                    message = "updated!"
                }
        end
    end
}