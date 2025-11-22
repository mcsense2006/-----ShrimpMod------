SMODS.Booster {
    key = "Sinful_normal_1",
    weight = 1,
    kind = 'Sinful',
    cost = 4,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 3, choose = 1 },
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = "Sinful_normal_2",
    weight = 1,
    kind = 'Sinful',
    cost = 4,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 3, choose = 1 },     
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = "Sinful_jumbo_1",
    weight = 1,
    kind = 'Sinful',
    cost = 6,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 5, choose = 1 },
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = "Sinful_jumbo_2",
    weight = 1,
    kind = 'Sinful',
    cost = 6,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 5, choose = 1 },
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = "Sinful_mega_1",
    weight = 0.25,
    kind = 'Sinful',
    cost = 8,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 5, choose = 2 },
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}

SMODS.Booster {
    key = "Sinful_mega_2",
    weight = 0.25,
    kind = 'Sinful',
    cost = 8,
    discovered = true,
    atlas = 'booster',
    pos = { x = 2, y = 1 },
    config = { extra = 5, choose = 2 },
    draw_hand = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra, colours = { HEX('063970') } },
            key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.TAROT_PACK)
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
    create_card = function(self, card, i)
    local _card
        _card = {
            set = "Sinful",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
        }
        return _card
    end,
}