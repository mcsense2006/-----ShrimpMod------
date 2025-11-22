SMODS.Joker{
    key = "JOKER_Rinshan",
    config = {
        extra = {
            additional_size = 0
        }
    },
    pos = {
        x = 5,
        y = 5
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "u/a45wesley",
    },
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.additional_size}}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  and not context.blueprint then
            if next(context.poker_hands["Four of a Kind"]) then
                card.ability.extra.additional_size = (card.ability.extra.additional_size) + 2
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.additional_size).." Hand Size", colour = G.C.BLUE})
                G.hand:change_size(card.ability.extra.additional_size)
                return true
            end
                }
            elseif (not (next(context.poker_hands["Four of a Kind"])) and (card.ability.extra.additional_size or 0) > 0) then
                card.ability.extra.additional_size = math.max(0, (card.ability.extra.additional_size) - 2)
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "-"..tostring(card.ability.extra.additional_size).." Hand Size", colour = G.C.RED})
                G.hand:change_size(-card.ability.extra.additional_size)
                return true
            end
                }
            end
        end
    end
}