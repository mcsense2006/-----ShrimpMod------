SMODS.Joker{
    name = "Frieren",
    key = "JOKER_Frieren",
    config = {
        extra = {
        }
    },
    pos = {x = 0, y = 4},
    cost = 4,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "@andresirlo",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Sousou no Frieren', HEX("94528C"), G.C.White, 1 )
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if ((context.other_card:get_id() == 7 or context.other_card:get_id() == 14) and not (SMODS.get_enhancements(context.other_card)["m_lucky"] == true)) then
                context.other_card:set_ability(G.P_CENTERS.m_lucky)
                return {
                    message = "Zoltraak!"
                }
            end
        end
    end
}