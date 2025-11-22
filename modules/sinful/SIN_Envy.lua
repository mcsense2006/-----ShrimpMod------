SMODS.Consumable {
    key = 'SIN_Envy',
    set = 'Sinful',
    pos = { x = 0, y = 0 },
    config = { extra = {
        copy_amount = 1
    } },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'Sinful',
    use = function(self, card, area, copier)
        local used_card = copier or card
            local jokers_to_copy = {}
            local available_jokers = {}
            
            for _, joker in pairs(G.jokers.cards) do
                if joker.ability.set == 'Joker' then
                    available_jokers[#available_jokers + 1] = joker
                end
            end
            
            if #available_jokers > 0 then
                local temp_jokers = {}
                for _, joker in ipairs(available_jokers) do 
                    temp_jokers[#temp_jokers + 1] = joker 
                end
                
                pseudoshuffle(temp_jokers, 54321)
                
                for i = 1, math.min(card.ability.extra.copy_amount, #temp_jokers, G.jokers.config.card_limit - #G.jokers.cards) do
                    jokers_to_copy[#jokers_to_copy + 1] = temp_jokers[i]
                end
            end

            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    play_sound('timpani')
                    used_card:juice_up(0.3, 0.5)
                    return true
                end
            }))

            local _first_materialize = nil
            for _, joker_to_copy in pairs(jokers_to_copy) do
                G.E_MANAGER:add_event(Event({
                    trigger = 'before',
                    delay = 0.4,
                    func = function()
                        local copied_joker = copy_card(joker_to_copy, nil, nil, nil, false)
                        copied_joker:start_materialize(nil, _first_materialize)
                        copied_joker:add_to_deck()
                        G.jokers:emplace(copied_joker)
                        _first_materialize = true
                        return true
                    end
                }))
            end
            delay(0.6)
    end,
    can_use = function(self, card)
        return true
    end
}