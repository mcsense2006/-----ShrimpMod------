SMODS.Back {
    key = "DECK_Mahjong",
    atlas = 'mahjong_back',
    config = {
        hand_size = 6,
        discards = 14
    },
    pos = { x = 0, y = 0 },
    loc_vars = function(self, info_queue, back)
        return { vars = { self.config.hand_size, self.config.joker_slot } }
    end,
    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                if not G.playing_cards then return false end
                for k, v in pairs(G.playing_cards) do
                    if v.base.suit == 'Spades' then
                        v:change_suit('shrimp_Pin')
                    end
                    if v.base.suit == 'Hearts' then
                        v:change_suit('shrimp_Pin')
                    end
                    if v.base.suit == 'Clubs' then
                        v:change_suit('shrimp_Pin')
                    end
                    if v.base.suit == 'Diamonds' then
                        v:change_suit('shrimp_Pin')                 --pin, man, sou, winds, dragons
                    end
                end
                for i, suit in ipairs({'shrimp_Man', 'shrimp_Man', 'shrimp_Man', 'shrimp_Man', 'shrimp_Sou', 'shrimp_Sou', 'shrimp_Sou', 'shrimp_Sou', 'shrimp_Winds', 'shrimp_Winds', 'shrimp_Winds', 'shrimp_Winds', 'shrimp_Dragons', 'shrimp_Dragons', 'shrimp_Dragons', 'shrimp_Dragons', }) do
                    for i, rank in ipairs(SMODS.Rank.obj_buffer) do
                        SMODS.add_card({set = "Base", rank = rank, suit = suit, area = G.deck})
                    end
                end
				SMODS.change_play_limit(9)
				SMODS.change_discard_limit(-4)
				return true
            end
        }))
    end
}