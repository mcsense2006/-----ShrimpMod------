SMODS.Joker{
    name = "Spirit Infusion",
    key = "JOKER_Spirit_Infusion",
    config = {
        extra = {
            blind_size = 3,
            Spectral = 0
        }
    },
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = '<Credits would be appreciated>',
    },
    pos = {
        x = 14,
        y = 1
    },
    cost = 10,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
                return {
                    func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Spectral', key = nil, edition = 'e_negative', key_append = 'joker_forge_spectral'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
                    end
                    return true
                end,
                    extra = {
                        func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Spectral', key = nil, edition = 'e_negative', key_append = 'joker_forge_spectral'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_spectral'), colour = G.C.SECONDARY_SET.Spectral})
                    end
                    return true
                end,
                        colour = G.C.SECONDARY_SET.Spectral,
                        extra = {
                            func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Poof!", colour = G.C.GREEN})
                G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.blind_size
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                G.HUD_blind:recalculate()
                return true
            end,
                            colour = G.C.GREEN
                        }
                        }
                }
        end
    end
}