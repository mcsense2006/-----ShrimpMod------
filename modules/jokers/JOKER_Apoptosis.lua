SMODS.Joker{ --Apoptosis
    key = "JOKER_Apoptosis",
    config = {
        extra = {
            flag = 0,
            destroy_check = 6,
            xmult0 = 2.22,
            n = 0,
            respect = 0
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
    credit = {
        art = "",
        code = "Shrimp",
        concept = "@andresirlo",
    },
    
    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.flag, card.ability.extra.destroy_check}}
    end,
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                Xmult = 2.22
            }
        end
        if context.destroy_card and context.destroy_card.should_destroy  then
            return { remove = true }
        end
        if context.individual and context.cardarea == G.play  then
            context.other_card.should_destroy = false
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                context.other_card.should_destroy = true
                card.ability.extra.flag = 1
                return {
                    message = "Destroyed!"
                }
            end
        end
        if context.after and context.cardarea == G.jokers  then
            if to_big(card.ability.extra.flag) == to_big(1) then
                return {
                    func = function()
                        card.ability.extra.destroy_check = (card.ability.extra.destroy_check) + 1
                        return true
                    end
                }
            end
        end
        if context.starting_shop  then
            return {
                func = function()
                    card.ability.extra.flag = 0
                    return true
                end
            }
        end
        if context.selling_self  then
            if card.ability.extra.destroy_check or 0 >= 6 then
                return {
                    func = function()
                        
                        local created_joker = false
                        if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                            G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                            created_joker = true
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_shrimp_JOKER_Necrosis' })
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
                    end
                }
            end
        end
    end
}