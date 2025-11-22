SMODS.Joker{
    name = "Landslide",
    key = "JOKER_Landslide",
    config = {
        extra = {
            enablehands = 0,
            hands = 2,
            round = 0
        }
    },
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "@andresirlo ",
    },
    pos = {
        x = 5,
        y = 0
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
            if G.GAME.current_round.hands_left == 0 then
                return {
                    func = function()
                    card.ability.extra.enablehands = 1
                    return true
                end
                }
            end
        end
        if context.setting_blind  and not context.blueprint then
            if (card.ability.extra.enablehands or 0) == 1 then
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.hands).." Hand", colour = G.C.GREEN})
                G.GAME.current_round.hands_left = G.GAME.current_round.hands_left + card.ability.extra.hands
                return true
            end,
                    extra = {
                        func = function()
                    card.ability.extra.enablehands = 0
                    return true
                end,
                        colour = G.C.BLUE
                        }
                }
            end
        end
    end
}