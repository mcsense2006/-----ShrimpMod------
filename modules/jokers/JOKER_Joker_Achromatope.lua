SMODS.Joker {
    key = "JOKER_Joker_Achromatope",
    atlas = "Jokers",
    pos = { x = 3, y = 0 },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    credit = {
    art = "Shrimp",
    code = "sushii64",
    concept = "Shrimp",
},
    config = {extra = {chips = 0, gain = 3}},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.gain, card.ability.extra.chips } }
    end,

    calculate = function(self, card, context)
        -- before scoring
        if context.before and context.main_eval and not context.blueprint then
            -- function to check if the scoring hand has the given suit
            -- just so i didn't have to repeat the code four times
            function has_suit(suit)
                local suitCount = 0
                for i, c in ipairs(context.scoring_hand) do
                    if c:is_suit(suit) then
                        suitCount = suitCount + 1
                    end
                end
                
                return suitCount >= 1
            end
            local suits = 0
            -- adds one to the variable for every suit the scoring hand has
            if has_suit("Spades") then suits = suits + 1 end
            if has_suit("Hearts") then suits = suits + 1 end
            if has_suit("Diamonds") then suits = suits + 1 end
            if has_suit("Clubs") then suits = suits + 1 end
            -- adds 2 times however many unique suits there are
            card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.gain * suits)
            -- does the little upgrade thingy
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
            }
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}