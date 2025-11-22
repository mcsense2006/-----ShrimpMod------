SMODS.Consumable {
    key = 'SIN_Sloth',
    set = 'Sinful',
    pos = { x = 0, y = 0 },
    config = { extra = {
        currentmoney = 0
    } },
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'Sinful',
    use = function(self, card, area, copier)
        local used_card = copier or card
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "+"..tostring((G.GAME.dollars) * 0.2).." $", colour = G.C.MONEY})
                    ease_dollars((G.GAME.dollars) * 0.2, true)
                    return true
                end
            }))
            delay(0.6)
    end,
    can_use = function(self, card)
        return true
    end
}