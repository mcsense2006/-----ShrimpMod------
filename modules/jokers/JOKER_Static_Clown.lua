SMODS.Joker{
    key = 'JOKER_Static_Clown',
    atlas = 'Jokers',
    pos = {x = 3, y = 2},
    cost = 6,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            odds = 3
        }
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
},
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if ((function()
        local enhancements = SMODS.get_enhancements(context.other_card)
        for k, v in pairs(enhancements) do
            if v then
                return true
            end
        end
        return false
    end)() or context.other_card.edition ~= nil) then
                if SMODS.pseudorandom_probability(card, 'group_0_0ff46c3a', 1, card.ability.extra.odds, 'j_modprefix_newjoker') then
                      G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local copied_card = copy_card(context.other_card, nil, nil, G.playing_card)
                copied_card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, copied_card)
                G.hand:emplace(copied_card)
                copied_card.states.visible = nil
                
                G.E_MANAGER:add_event(Event({
                    func = function() 
                        copied_card:start_materialize()
                        return true
                    end
                }))
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Copied!", colour = G.C.GREEN})
                  end
            end
        end
    end
}