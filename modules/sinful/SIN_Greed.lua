SMODS.Consumable {
    key = 'SIN_Greed',
    set = 'Sinful',
    pos = { x = 3, y = 0 },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'Sinful',
    use = function(self, card, area, copier)
        local used_card = copier or card
            if SMODS.pseudorandom_probability(card, 'group_0_bfdb8c2f', 1, card.ability.extra.odds, 'c_shrimp_SIN_Greed', false) then
                
                G.E_MANAGER:add_event(Event({
                func = function()
                    local tag = Tag("tag_investment")
                    if tag.name == "Orbital Tag" then
                        local _poker_hands = {}
                        for k, v in pairs(G.GAME.hands) do
                            if v.visible then
                                _poker_hands[#_poker_hands + 1] = k
                            end
                        end
                        tag.ability.orbital_hand = pseudorandom_element(_poker_hands, "jokerforge_orbital")
                    end
                    tag:set_ability()
                    add_tag(tag)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end
            }))
            end
    end,
    can_use = function(self, card)
        return true
    end
}