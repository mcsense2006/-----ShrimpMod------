SMODS.Joker{
    key = "JOKER_Steak",
    config = {
        extra = {
            respect = 0
        }
    },
    pos = {
        x = 7,
        y = 5
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "<Credits would be appreciated>",
    },

    calculate = function(self, card, context)
        if context.using_consumeable  then
            if context.consumeable and context.consumeable.ability.set == 'Spectral' and context.consumeable.config.center.key == 'c_medium' then
                return {
                    func = function()
            local created_joker = false
    if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
        created_joker = true
        G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', rarity = 'Rare' })
                    if joker_card then
                        
                        
                    end
                    G.GAME.joker_buffer = 0
                    return true
                end
            }))
            end
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Cooked!", colour = G.C.BLUE})
            end
            return true
        end
                }
            end
        end
    end
}