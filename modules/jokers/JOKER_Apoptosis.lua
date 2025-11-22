SMODS.Joker{ --Apoptosis
    key = "JOKER_Apoptosis",
    config = {
        extra = {
            count = 0,
            Xmult = 2.22,
            respect = 0
        }
    },
    loc_txt = {
        ['name'] = 'Apoptosis',
        ['text'] = {
            [1] = '{C:white, X:mult}X2.22{} mult, last scored card is destroyed, after destroying 6 cards sell this card to create Necrosis'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 15,
    rarity = "shrimp_epic",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.count}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
        if context.destroy_card and context.destroy_card.should_destroy  then
            return { remove = true }
        end
        if context.individual and context.cardarea == G.play  then
            context.other_card.should_destroy = false
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                context.other_card.should_destroy = true
                card.ability.extra.count = (card.ability.extra.count) + 1
                return {
                    message = "Destroyed!"
                }
            end
        end
        if context.selling_self  and not context.blueprint then
            if (card.ability.extra.count or 0) >= 6 then
                return {
                    func = function()
            local created_joker = false
    if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
        created_joker = true
        G.GAME.joker_buffer = G.GAME.joker_buffer + 1
            G.E_MANAGER:add_event(Event({
                func = function()
                    local joker_card = SMODS.add_card({ set = 'Joker', key = 'j_shrimp_JOKER_Necrosis' })
                    if joker_card then
                        
                        
                    end
                    G.GAME.joker_buffer = 0
                    return true
                end
            }))
            end
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
            return true
        end
                }
            end
        end
    end
}