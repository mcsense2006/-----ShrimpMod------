
SMODS.Enhancement {
    key = 'ENH_Exposed_Copper',
    pos = { x = 1, y = 0 },
    config = {
        extra = {
            Xmult = 3
        }
    },
    loc_txt = {
        name = 'Exposed Copper',
        text = {
            [1] = '{C:white,X:mult}X3{} Mult, becomes an {C:attention}Weathered Copper{}',
            [2] = 'card after scoring'
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
            card:set_ability(G.P_CENTERS.m_mycustom_ENH_Weathered_Copper)
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