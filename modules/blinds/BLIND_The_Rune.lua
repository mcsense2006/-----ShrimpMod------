SMODS.Blind {
    key = 'BLIND_The_Rune',
    atlas = 'blind_chips',
    unlocked = true,
    discovered = true,
    dollars = 5,
    mult = 2,
    pos = {x = 0, y = 0},
    boss = {min = 2},
    boss_colour = HEX('302C2C'),
    calculate = function(self, blind, context)
        if not blind.disabled then
            if context.debuff_card and context.debuff_card.area ~= G.jokers then
                return {
                    debuff = true
                }
            end
            if context.selling_card and context.card.ability.consumeable then
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        blind:disable()
                        return true
                    end
                }))
            end
            if context.using_consumeable then
                G.E_MANAGER:add_event(Event({
                    trigger = 'immediate',
                    func = function()
                        blind:disable()
                        return true
                    end
                }))
            end
        end
    end
}
