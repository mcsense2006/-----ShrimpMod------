
SMODS.Back {
    key = 'DECK_Copper',
    pos = { x = 0, y = 0 },
    config = {
    },
    loc_txt = {
        name = 'Cu.29 Deck',
        text = {
            [1] = 'All cards',
            [2] = 'in your starting',
            [3] = 'deck have the',
            [4] = '{C:attention}Copper enhancement{}',
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'Back',
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                for k, v in pairs(G.playing_cards) do
                    v:set_ability(G.P_CENTERS['m_shrimp_ENH_Copper'])
                end
                G.GAME.starting_deck_size = #G.playing_cards
                return true
            end
        }))
    end
}