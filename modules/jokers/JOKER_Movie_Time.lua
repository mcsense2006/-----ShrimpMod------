SMODS.Joker{
    key = "JOKER_Movie_Time",
    config = {
        extra = {
            ignore = 0
        }
    },
    pos = {
        x = 0,
        y = 6
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = false,
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
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Deltarune', G.C.DARK_EDITION, G.C.WHITE, 1 )
    end,
    calculate = function(self, card, context)
        if context.selling_self  and not context.blueprint then
                return {
                    func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_popcorn' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Mr.", colour = G.C.BLUE})
            end
            return true
        end,
                    extra = {
                        func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_popcorn' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "(Ant)", colour = G.C.BLUE})
            end
            return true
        end,
                        colour = G.C.BLUE,
                        extra = {
                            func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_popcorn' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Tenna\'s", colour = G.C.BLUE})
            end
            return true
        end,
                            colour = G.C.BLUE,
                        extra = {
                            func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_popcorn' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "TV", colour = G.C.BLUE})
            end
            return true
        end,
                            colour = G.C.BLUE,
                        extra = {
                            func = function()
            local created_joker = true
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_popcorn' })
                    if joker_card then
                        
                        
                    end
                    
                    return true
                end
            }))
            
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Time!", colour = G.C.BLUE})
            end
            return true
        end,
                            colour = G.C.BLUE
                        }
                        }
                        }
                        }
                }
        end
    end
}