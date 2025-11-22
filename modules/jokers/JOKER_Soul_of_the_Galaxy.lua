SMODS.Joker{
    name = "Soul of the Galaxy",
    key = "JOKER_Soul_of_the_Galaxy",
    config = {
        extra = {
            planetcount = 0,
            Spectral = 0
        }
    },
    pos = {
        x = 2,
        y = 5
    },
    soul_pos = {
        x = 3,
        y = 5
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "<Credits would be appreciated>",
    },

    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.planetcount}}
    end,

    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint then
            if context.consumeable and context.consumeable.ability.set == 'Planet' then
                return {
                    func = function()
                        card.ability.extra.planetcount = (card.ability.extra.planetcount or 0) + 1

                        if card.ability.extra.planetcount >= 5 then
                            card.ability.extra.planetcount = 0

                            if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        SMODS.add_card{
                                            set = 'Spectral',
                                            key = nil,
                                            key_append = 'joker_forge_spectral'
                                        }
                                        G.GAME.consumeable_buffer = 0
                                        return true
                                    end
                                }))
                                card_eval_status_text(card, 'extra', nil, nil, nil, {
                                    message = localize('k_plus_spectral'),
                                    colour = G.C.SECONDARY_SET.Spectral
                                })
                            end
                        else
                            card_eval_status_text(card, 'extra', nil, nil, nil, {
                                message = "Updated",
                                colour = G.C.BLUE
                            })
                        end

                        return true
                    end
                }
            end
        end
    end
}