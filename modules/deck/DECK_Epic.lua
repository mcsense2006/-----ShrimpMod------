SMODS.Back {
    key = 'DECK_Epic',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            joker_slots_value = 2
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'Back',
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('timpani')
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    SMODS.add_card({ set = 'Joker', rarity = 'shrimp_epic' })
                    G.GAME.joker_buffer = 0
               end
                    return true
                end
        }))
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('timpani')
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    SMODS.add_card({ set = 'Joker', rarity = 'shrimp_epic' })
                    G.GAME.joker_buffer = 0
                end
                return true
            end
        }))
        G.GAME.starting_params.joker_slots =
            G.GAME.starting_params.joker_slots - self.config.extra.joker_slots_value
        return {}
    end

}