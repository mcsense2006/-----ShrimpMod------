
SMODS.Voucher {
    key = 'VOUCH_One_Use_Coupon',
    pos = { x = 0, y = 0 },
    config = { 
        extra = {
            dollars0 = 5
        } 
    },
    loc_txt = {
        name = 'One Use Coupon',
        text = {
            [1] = 'dont work'
            [2] = '+{C:money}$5{} Entering the {C:green}shop{}',
            [3] = 'after a boss blind'
        },
    },
    cost = 10,
    unlocked = true,
    discovered = true,
    no_collection = false,
    can_repeat_soul = false,
    atlas = 'Voucher',
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss then
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(card, 'extra', nil, nil, nil, {message = "custom_flag", colour = G.C.BLUE})
                    G.GAME.pool_flags.modprefix_custom_flag = true
                    return true
                end
            }))
        end
        if context.starting_shop then
            if (G.GAME.pool_flags.mycustom_custom_flag or false) then
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "custom_flag", colour = G.C.BLUE})
                        G.GAME.pool_flags.modprefix_custom_flag = false
                        return true
                    end
                }))
                return {
                    
                    func = function()
                        
                        local current_dollars = G.GAME.dollars
                        local target_dollars = G.GAME.dollars + 5
                        local dollar_value = target_dollars - current_dollars
                        ease_dollars(dollar_value, true)
                        card_eval_status_text(card, 'extra', nil, nil, nil, {message = "+"..tostring(5), colour = G.C.MONEY})
                        return true
                    end
                }
            end
        end
    end
}