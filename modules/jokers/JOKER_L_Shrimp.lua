SMODS.Joker{
    key = 'JOKER_L_Shrimp',
    atlas = 'Jokers',
    pos = {x = 1, y = 1},
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            gain = 0.5,
            emult = 1,
        }
    },
    soul_pos = { x = 2, y = 1 },
    credit = {
    art = "Shrimp",
    code = "sushii64",
    concept = "Shrimp",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Dev', G.C.DARK_EDITION, G.C.BLACK, 1 )
    end,

    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.gain, card.ability.extra.emult }}
    end,

    calculate = function(self, card, context)
        -- before scoring
        if context.before then
            -- checks if the following function returns true
            if (function()
                -- makes a variable based on the amount you've played the hand you played
                local current_played = G.GAME.hands[context.scoring_name].played and
                    G.GAME.hands[context.scoring_name].played - 1 or 0
                -- loops through every hand that exists in the game
                for handname, values in pairs(G.GAME.hands) do
                    -- checks if the hand that's currently being checked is NOT the hand you played, etc etc
                    if handname ~= context.scoring_name and values.played < current_played and values.visible then
                        return false
                    end
                end
                return true
            end)() then
                -- adds gain to emult
                card.ability.extra.emult = card.ability.extra.emult + card.ability.extra.gain
                -- makes a silly little message!
                return {
                    message = 'Shromp!',
                    colour = G.C.DARK_EDITION,
                }
            end
        end
        if context.joker_main then
            -- does mult and message stuff you know this one
            return {
                remove_default_message = true,
                -- prints out a_emult from v_dictionary
                message = localize({type = "variable", key = "a_emult", vars = {card.ability.extra.emult}}),
                colour = G.C.DARK_EDITION,
                mult = (mult ^ card.ability.extra.emult) - mult
            }
        end
    end
}