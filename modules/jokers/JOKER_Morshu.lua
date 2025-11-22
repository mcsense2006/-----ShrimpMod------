SMODS.Joker{
    name = "Morshu",
    key = "JOKER_Morshu",
    config = {
        extra = {
            odds = 2,
            dollars = 5
        }
    },
    pos = {
        x = 2,
        y = 4
    },
    soul_pos = {
        x = 12,
        y = 0
    },
    cost = 15,
    rarity = 'shrimp_epic',
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = 'Shrimp',
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
    end,
    calculate = function(self, card, context)
        if context.ending_shop and not context.blueprint then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_6dbda175', 1, card.ability.extra.odds, 'j_modprefix_JOKER_Morshu') then
                      SMODS.calculate_effect({func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local random_sets = {'Tarot', 'Planet', 'Spectral'}
                        local random_set = random_sets[math.random(1, #random_sets)]
                        SMODS.add_card{set=random_set, edition = 'e_negative', key_append='joker_forge_' .. random_set:lower()}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "You want it?", colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
                        SMODS.calculate_effect({func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local random_sets = {'Tarot', 'Planet', 'Spectral'}
                        local random_set = random_sets[math.random(1, #random_sets)]
                        SMODS.add_card{set=random_set, edition = 'e_negative', key_append='joker_forge_' .. random_set:lower()}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '', colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
                        SMODS.calculate_effect({func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local random_sets = {'Tarot', 'Planet', 'Spectral'}
                        local random_set = random_sets[math.random(1, #random_sets)]
                        SMODS.add_card{set=random_set, edition = 'e_negative', key_append='joker_forge_' .. random_set:lower()}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '', colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
                        SMODS.calculate_effect({func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local random_sets = {'Tarot', 'Planet', 'Spectral'}
                        local random_set = random_sets[math.random(1, #random_sets)]
                        SMODS.add_card{set=random_set, edition = 'e_negative', key_append='joker_forge_' .. random_set:lower()}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '', colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
                        SMODS.calculate_effect({func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local random_sets = {'Tarot', 'Planet', 'Spectral'}
                        local random_set = random_sets[math.random(1, #random_sets)]
                        SMODS.add_card{set=random_set, edition = 'e_negative', key_append='joker_forge_' .. random_set:lower()}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = '', colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
                        SMODS.calculate_effect({dollars = -card.ability.extra.dollars}, card)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "It s yours my friend!", colour = G.C.MONEY})
                  end
            end
        end
    end
}
-- Morshu theme
--SMODS.Sound {
--    key = 'Morshu_Theme',
--    path = 'Morshu_Theme.ogg',
--    replace = {
--        'music1',
--        'music2',
--        'music3',
--        'music4',
--        'music5'
--    }
--}