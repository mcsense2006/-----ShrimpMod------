SMODS.Joker{
    name = "Perkeolator",
    key = "JOKER_Perkeolator",
    config = {
        extra = {
            trigger = 0,
            odds = 2
        }
    },
    pos = { x = 7, y = 1 },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = false,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "Shrimp",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
    end,
    calculate = function(self, card, context)
        if context.ending_shop and not context.blueprint then
            if (card.ability.extra.trigger or 0) == 6 then
                return {
                    func = function()
                card:start_dissolve()
                return true
            end,
                    message = "Extinct!"
                }
            elseif true then
                if SMODS.pseudorandom_probability(card, 'group_0_995de0f1', 1, card.ability.extra.odds, 'j_modprefix_newjoker') then
                      SMODS.calculate_effect({func = function()
            local target_cards = {}
            for i, consumable in ipairs(G.consumeables.cards) do
                table.insert(target_cards, consumable)
            end
            if #target_cards > 0  then
                local card_to_copy = pseudorandom_element(target_cards, pseudoseed('copy_consumable'))
                
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local copied_card = copy_card(card_to_copy)
                        copied_card:set_edition("e_negative", true)
                        copied_card:add_to_deck()
                        G.consumeables:emplace(copied_card)
                        
                        return true
                    end
                }))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Copied!", colour = G.C.GREEN})
            end
                    return true
                end}, card)
                        SMODS.calculate_effect({func = function()
                    card.ability.extra.trigger = (card.ability.extra.trigger) + 1
                    return true
                end}, card)
                  end
            end
        end
    end
}