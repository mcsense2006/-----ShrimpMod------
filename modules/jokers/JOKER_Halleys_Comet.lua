SMODS.Joker{
    key = 'JOKER_Halleys_Comet',
    atlas = 'Jokers',
    pos = {x = 4, y = 1},
    cost = 3,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            handsplayedthisround = 0,
            Planet = 0
        }
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "@andresirlo",
},
    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
            if 1 == G.GAME.current_round.hands_played then
                return {
                    func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Planet', key = nil, edition = 'e_negative', key_append = 'joker_forge_planet'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
                    end
                    return true
                end,
                    extra = {
                        func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Planet', key = nil, edition = 'e_negative', key_append = 'joker_forge_planet'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_planet'), colour = G.C.SECONDARY_SET.Planet})
                    end
                    return true
                end,
                        colour = G.C.SECONDARY_SET.Planet
                        }
                }
            end
        end
    end
}