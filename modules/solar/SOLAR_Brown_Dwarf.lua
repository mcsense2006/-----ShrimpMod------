SMODS.Consumable {
    key = 'SOLAR_Brown_Dwarf',
    set = 'Solar',
    pos = { x = 2, y = 1 },
    config = { extra = {
        hand_type = "High Card",
        hand_type = "Pair",
        hand_type = "Three of a Kind"
    } },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'Solar',
    use = function(self, card, area, copier)
        local used_card = copier or card
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                { handname = localize('High Card', 'poker_hands'), 
                  chips = G.GAME.hands['High Card'].chips, 
                  mult = G.GAME.hands['High Card'].mult, 
                  level = G.GAME.hands['High Card'].level })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
            delay(1.3)
            for i = 1, 1 do
                level_up_hand(card, 'High Card', true)
            end
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, 
                {handname=localize('High Card', 'poker_hands'), 
                 chips = G.GAME.hands['High Card'].chips, 
                 mult = G.GAME.hands['High Card'].mult, 
                 level=G.GAME.hands['High Card'].level})
            delay(1.3)
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                { handname = localize('Pair', 'poker_hands'), 
                  chips = G.GAME.hands['Pair'].chips, 
                  mult = G.GAME.hands['Pair'].mult, 
                  level = G.GAME.hands['Pair'].level })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
            delay(1.3)
            for i = 1, 1 do
                level_up_hand(card, 'Pair', true)
            end
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, 
                {handname=localize('Pair', 'poker_hands'), 
                 chips = G.GAME.hands['Pair'].chips, 
                 mult = G.GAME.hands['Pair'].mult, 
                 level=G.GAME.hands['Pair'].level})
            delay(1.3)
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3 },
                { handname = localize('Three of a Kind', 'poker_hands'), 
                  chips = G.GAME.hands['Three of a Kind'].chips, 
                  mult = G.GAME.hands['Three of a Kind'].mult, 
                  level = G.GAME.hands['Three of a Kind'].level })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.2,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = true
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { mult = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    return true
                end
            }))
            update_hand_text({ delay = 0 }, { chips = '+', StatusText = true })
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.9,
                func = function()
                    play_sound('tarot1')
                    card:juice_up(0.8, 0.5)
                    G.TAROT_INTERRUPT_PULSE = nil
                    return true
                end
            }))
            update_hand_text({ sound = 'button', volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+1' })
            delay(1.3)
            for i = 1, 1 do
                level_up_hand(card, 'Three of a Kind', true)
            end
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, 
                {handname=localize('Three of a Kind', 'poker_hands'), 
                 chips = G.GAME.hands['Three of a Kind'].chips, 
                 mult = G.GAME.hands['Three of a Kind'].mult, 
                 level=G.GAME.hands['Three of a Kind'].level})
            delay(1.3)
    end,
    can_use = function(self, card)
        return true
    end
}