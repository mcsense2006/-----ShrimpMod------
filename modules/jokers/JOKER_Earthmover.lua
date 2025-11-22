SMODS.Joker{
    key = 'JOKER_Earthmover',
    atlas = 'Jokers',
    pos = {x = 8, y = 2},
    cost = 8,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            Sinful = 0
        }
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Ultrakill', HEX("8F0300"), G.C.White, 1 )
    end,
        calculate = function(self, card, context)
        if context.remove_playing_cards  then
                return {
                    func = function()local created_consumable = false
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    created_consumable = true
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card{set = 'Sinful', key = nil, key_append = 'joker_forge_spectral'}
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                end
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_sinful'), colour = HEX('8F0300')})
                    end
                    return true
                end
                }
        end
    end
}