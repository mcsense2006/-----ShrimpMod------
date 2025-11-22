SMODS.Joker{
    key = 'JOKER_Glitched_Joker',
    atlas = 'Jokers',
    pos = {x = 2, y = 3},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {extra = {mult = 15}},
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
    },
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if not (next(context.poker_hands["Pair"])) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}