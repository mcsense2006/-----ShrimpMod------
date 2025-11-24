SMODS.Seal {
    key = 'SEAL_Black',
    pos = { x = 0, y = 0},
    config = {
        extra = {
            count = 0
        }
    },
    badge_colour = HEX('000000'),
    loc_txt = {
        name = 'Black Seal',
        label = 'Black Seal',
        text = {
            [1] = '{C:attention}Creates{} a {C:spectral}spectral{} card',
            [2] = 'after {C:attention}3{} scoring then {C:red}destroys{} itself'
        }
    },
    atlas = 'Seal',
    unlocked = true,
    discovered = true,
    no_collection = false,
    calculate = function(self, card, context)
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card and card.should_destroy then
            G.E_MANAGER:add_event(Event({
                func = function()
                    card:start_dissolve()
                    return true
                end
            }))
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = 'Card Destroyed!', colour = G.C.RED})
            return
        end
        if context.main_scoring and context.cardarea == G.play then
            card.ability.seal.extra.count = (card.ability.seal.extra.count) + 1
        end
        if context.main_scoring and context.cardarea == G.play then
            card.should_destroy = false
            if (card.ability.seal.extra.count or 0) == 3 then
                card.should_destroy = true
            SMODS.calculate_effect({func = function()
    for i = 1, math.min(1, G.consumeable.config.card_limit - #G.consumeable.card) do
            G.E_MANAGER:add(Event({
            trigger = 'before',
            delay = 0.0,
            func = function()
            play_sound('timpani')
            SMODS.add_card({set = 'Spectral', })
            card:juice_up(0.3, 0.5)
            return true
        end
        }))
    end
    delay(0.6)

                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
                    end
                    return true
                end}, card)
            end
        end
    end
}