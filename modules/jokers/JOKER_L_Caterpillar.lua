SMODS.Joker{
    key = 'JOKER_L_Caterpillar',
    atlas = 'Jokers',
    pos = {x = 3, y = 1},
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    soul_pos = { x = 0, y = 2 },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
},
    config = {
        extra = {
            xchips = 2
        }
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Dev', G.C.DARK_EDITION, G.C.BLACK, 1 )
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
            if (function()
    local current_played = G.GAME.hands[context.scoring_name].played or 0
    for handname, values in pairs(G.GAME.hands) do
        if handname ~= context.scoring_name and values.played > current_played and values.visible then
            return false
        end
    end
    return true
end)() then
                return {
                    x_chips = card.ability.extra.xchips,
                    message = "Buge!",
                    extra = {
                        balance = true,
                        colour = G.C.PURPLE
                        }
                }
            end
        end
    end
}