SMODS.Enhancement {
    key = 'ENH_Copper',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            Xmult = 4
        }
    },
    loc_txt = {
        name = 'Copper',
        text = {
            [1] = 'Becomes an {C:attention}Exposed Copper{} card,',
            [2] = '{C:white,X:mult}X4{} Mult',
        }
    },
    atlas = 'Enhancement',
    any_suit = false,
    replace_base_card = false,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            card:set_ability(G.P_CENTERS.m_shrimp_ENH_Exposed_Copper)
            return {
                Xmult = card.ability.extra.Xmult,
                extra = {
                    message = "Card Modified!",
                    colour = G.C.BLUE
                }
            }
        end
    end
}