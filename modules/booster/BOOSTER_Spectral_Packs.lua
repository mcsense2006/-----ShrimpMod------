
SMODS.Booster {
    key = 'supreme_spectral_pack',
    loc_txt = {
        name = "Supreme Spectral Pack",
        text = {
            [1] = 'Choose up to {C:attention}2 {}of {C:attention}10{}',
            [2] = '{C:spectral}Spectral{} Cards to be',
            [3] = 'used immediately.',
            [4] = ' ',
            [5] = '{s:0.85,E:2}Have an upgraded chance of dropping soul'
        },
    },
    config = { extra = 10, choose = 2 },
    cost = 10,
    weight = 0.15,
    atlas = "booster",
    pos = { x = 2, y = 1 },
    draw_hand = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        local weights = {
            1,
            0.005
        }
        local total_weight = 0
        for _, weight in ipairs(weights) do
            total_weight = total_weight + weight
        end
        local random_value = pseudorandom('mycustom_supreme_spectral_pack_card') * total_weight
        local cumulative_weight = 0
        local selected_index = 1
        for j, weight in ipairs(weights) do
            cumulative_weight = cumulative_weight + weight
            if random_value <= cumulative_weight then
                selected_index = j
                break
            end
        end
        if selected_index == 1 then
            return {
                set = "Spectral",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
                key_append = "mycustom_supreme_spectral_pack"
            }
        elseif selected_index == 2 then
            return {
                key = "c_soul",
                set = "Tarot",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
                key_append = "mycustom_supreme_spectral_pack"
            }
        end
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}


SMODS.Booster {
    key = 'bonanza_spectral_pack',
    loc_txt = {
        name = "Bonanza Spectral Pack",
        text = {
            [1] = 'Choose up to {C:attention}2 {}of {C:attention}10{}',
            [2] = '{C:spectral}Spectral{} Cards to be',
            [3] = 'used immediately.',
            [4] = ' ',
            [5] = '{s:0.85,E:2}Have an upgraded chance of dropping soul'
        },
    },
    config = { extra = 12, choose = 3 },
    cost = 12,
    weight = 0.05,
    atlas = "booster",
    pos = { x = 3, y = 1 },
    draw_hand = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        local weights = {
            1,
            0.01
        }
        local total_weight = 0
        for _, weight in ipairs(weights) do
            total_weight = total_weight + weight
        end
        local random_value = pseudorandom('mycustom_bonanza_spectral_pack_card') * total_weight
        local cumulative_weight = 0
        local selected_index = 1
        for j, weight in ipairs(weights) do
            cumulative_weight = cumulative_weight + weight
            if random_value <= cumulative_weight then
                selected_index = j
                break
            end
        end
        if selected_index == 1 then
            return {
                set = "Spectral",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
                key_append = "mycustom_bonanza_spectral_pack"
            }
        elseif selected_index == 2 then
            return {
                key = "c_soul",
                set = "Tarot",
                area = G.pack_cards,
                skip_materialize = true,
                soulable = true,
                key_append = "mycustom_bonanza_spectral_pack"
            }
        end
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}
