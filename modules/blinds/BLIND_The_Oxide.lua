-- The Oxide
SMODS.Blind {
    key = "BLIND_The_Oxide",
    atlas = "blind_chips",
    unlocked = true,
    dollars = 5,
    mult = 2,
    pos = { x = 0, y = 0 },
    boss = { min = 2 },
    boss_colour = HEX("7c8c8f"),

    loc_vars = function(self)
        return { vars = {} }
    end,

    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.individual and context.scored_card and context.cardarea == G.play then
            local card = context.scored_card

            if not context.check then
                card:flip_ability(nil, true)
                card:set_ability(G.P_CENTERS.m_shrimp_ENH_Oxidized_Copper)
                SMODS.recalc_debuff(card)
                card:juice_up()
                blind.triggered = true
            end
        end
    end
}
