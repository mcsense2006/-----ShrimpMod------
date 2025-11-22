SMODS.Joker{
    key = "JOKER_Four_Concealed_Triplets",
    config = {
        extra = {
            count = 0,
            Xmult = 4
        }
    },
    pos = {
        x = 5,
        y = 1
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
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
        return {vars = { card.ability.extra.count}}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Three of a Kind"]) then
                card.ability.extra.count = (card.ability.extra.count) + 1
            elseif (card.ability.extra.count or 0) >= 4 then
                card.ability.extra.count = 0
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}