SMODS.Suit {
    key = 'Pin',
    card_key = 'Pin',
    lc_atlas = 'Mahjong_Cards',
    hc_atlas = 'Mahjong_Cards',
    lc_ui_atlas = 'Mahjong_UI',
    hc_ui_atlas = 'Mahjong_UI',
    pos = { y = 0 },
    ui_pos = { x = 0, y = 1 },
    in_pool = function(self, args)
        return not args or not args.initial_deck
    end,
}
SMODS.Suit {
    key = 'Sou',
    card_key = 'Sou',
    lc_atlas = 'Mahjong_Cards',
    hc_atlas = 'Mahjong_Cards',
    lc_ui_atlas = 'Mahjong_UI',
    hc_ui_atlas = 'Mahjong_UI',
    pos = { y = 1 },
    ui_pos = { x = 1, y = 1 },
    in_pool = function(self, args)
        return not args or not args.initial_deck
    end,
}
SMODS.Suit {
    key = 'Man',
    card_key = 'Man',
    lc_atlas = 'Mahjong_Cards',
    hc_atlas = 'Mahjong_Cards',
    lc_ui_atlas = 'Mahjong_UI',
    hc_ui_atlas = 'Mahjong_UI',
    pos = { y = 2 },
    ui_pos = { x = 2, y = 1 },
    in_pool = function(self, args)
        return not args or not args.initial_deck
    end,
}
SMODS.Suit {
    key = 'Winds',
    card_key = 'Winds',
    lc_atlas = 'Mahjong_Cards',
    hc_atlas = 'Mahjong_Cards',
    lc_ui_atlas = 'Mahjong_UI',
    hc_ui_atlas = 'Mahjong_UI',
    pos = { y = 3 },
    ui_pos = { x = 3, y = 1 },
    in_pool = function(self, args)
        return not args or not args.initial_deck
    end,
}
SMODS.Suit {
    key = 'Dragons',
    card_key = 'Dragons',
    lc_atlas = 'Mahjong_Cards',
    hc_atlas = 'Mahjong_Cards',
    lc_ui_atlas = 'Mahjong_UI',
    hc_ui_atlas = 'Mahjong_UI',
    pos = { y = 4 },
    ui_pos = { x = 4, y = 1 },
    in_pool = function(self, args)
        return not args or not args.initial_deck
    end,
}