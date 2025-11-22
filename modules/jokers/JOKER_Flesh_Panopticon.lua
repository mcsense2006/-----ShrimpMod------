SMODS.Joker{
    key = "JOKER_Flesh_Panopticon",
    pos = { x = 4, y = 4 },
    soul_pos = {
        x = 6,
        y = 4
    },
    config = {
        extra = {
            Xchips = 1,
            count = 0,
            currentmoney = 0,
            ignore = 0
        }
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
        return { vars = { card.ability.extra.Xchips, card.ability.extra.count } }
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Ultrakill', HEX("8F0300"), G.C.White, 1 )
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.Xchips = (tonumber(card.ability.extra.Xchips) or 0) + (G.GAME.dollars or 0) * 0.1
                    return true
                end
                }
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    x_chips = card.ability.extra.Xchips
                }
        end
        if context.using_consumeable  and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.count = (tonumber(card.ability.extra.count) or 0) + 1
                    return true
                end
                }
        end
        if context.selling_self  and not context.blueprint then
            if (tonumber(card.ability.extra.count) or 0) >= 10 then
                return {
                    func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_shrimp_JOKER_Sisyphus_Prime' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Summoned", colour = G.C.BLUE})
            end
            return true
        end
                }
            end
        end
    end
}