SMODS.Joker{
    key = "JOKER_Flesh_Prison",
    config = {
        extra = {
            bosscount = 0,
            handsplayedthisround = 0,
            Xmult = 1.5,
            ignore = 0
        }
    },
    pos = {
        x = 4,
        y = 4
    },
    soul_pos = {
        x = 5,
        y = 4
    },
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "Shrimp",
    },
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.bosscount}}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Ultrakill', HEX("8F0300"), G.C.White, 1 )
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if next(context.poker_hands["Flush"]) then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  and not context.blueprint then
            if 1 == G.GAME.current_round.hands_played then
                return {
                    func = function()
                    card.ability.extra.bosscount = (card.ability.extra.bosscount) + 1
                    return true
                end,
                    message = "updated!"
                }
            elseif 1 ~= G.GAME.current_round.hands_played then
                return {
                    func = function()
                    card.ability.extra.bosscount = 0
                    return true
                end,
                    message = "updated!"
                }
            end
        end
        if context.selling_self  and not context.blueprint then
            if (card.ability.extra.bosscount or 0) >= 3 then
                return {
                    func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_shrimp_JOKER_Minos_Prime' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Summoned!", colour = G.C.BLUE})
            end
            return true
        end
                }
            end
        end
    end
}