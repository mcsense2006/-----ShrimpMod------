SMODS.Blind {
    key = "BLIND_The_Royalty",
    atlas = "blind_chips",
    dollars = 5,
    mult = 2,
    pos = { x = 0, y = 0 }, 
    boss = { min = 2 },
    boss_colour = HEX("d4b15a"),

    get_loc_debuff_text = function(self)
        return G.GAME.blind.loc_debuff_text .. " " .. localize("k_numbered_cards") .. "."
    end,

    calculate = function(self, blind, context)
        if blind.disabled then return end

        if context.debuff_card then
            local card = context.debuff_card
            local base = card.base or card.config and card.config.center

            if not base or base.value == nil then
                return
            end

            local rank = base.value

            if type(rank) == "number" and rank >= 2 and rank <= 10 then
                return { debuff = true }
            end
        end
    end
}
