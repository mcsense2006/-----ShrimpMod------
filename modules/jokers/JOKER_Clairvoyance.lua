SMODS.Joker{
    key = 'JOKER_Clairvoyance',
    atlas = 'Jokers',
    pos = {x = 5, y = 6},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            charm = 0
        }
    },
    credit = {
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "@andresirlo",
    },
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  and not context.blueprint then
                return {
                    func = function()
            G.E_MANAGER:add_event(Event({
                func = function()
                    local tag = Tag("tag_charm")
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
                    return true
                end,
                    message = "Created Tag!"
                }
        end
    end
}