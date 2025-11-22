-- VERY IMPORTANT, since the feature required for this joker
-- to work ONLY exists in the development version of smods
if tonumber(SMODS.version:sub(12):sub(1, -2)) >= 706 then
    SMODS.Joker{
        key = 'JOKER_Jonkler',
        atlas = 'Jokers',
        pos = {x = 0, y = 1},
        cost = 5,
        rarity = 2,
        blueprint_compat = true,
        eternal_compat = true,
        perishable_compat = true,
        unlocked = true,
        discovered = true,
        config = {
            extra = {
                gain = 0.1,
                xmult = 1,
            }
        },
        credit = {
        art = "Shrimp",
        code = "sushii64",
        concept = "Shrimp",
    },
        loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.gain, card.ability.extra.xmult }}
        end,
        set_badges = function(self, card, badges)
                badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
        end,
        calculate = function(self, card, context)
            -- this is the thing from the development version
            -- context that triggers when any probability fails
            -- and then excludes playing cards
            if context.pseudorandom_result and not context.result and context.trigger_obj and not context.trigger_obj.playing_card then
                -- upgrades xmult
                card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.gain
                -- "Upgraded!"
                return {
                    message = localize("k_upgrade_ex"),
                    colour = G.C.MULT,
                }
            end
            if context.joker_main then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    }
end