SMODS.Joker{
    key = 'JOKER_Paper_Shredder',
    atlas = 'Jokers',
    pos = {x = 6, y = 3},
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            basediscardsperround = 0
        }
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "@andresirlo",
},
    in_pool = function(self, args)
          return (
          not args 
            
          or args.source == 'sho' or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end
    ,

    calculate = function(self, card, context)
        if context.selling_self  and not context.blueprint then
                return {
                    func = function()
                local current_play_size = G.GAME.starting_params.discard_limit
                local target_play_size = G.GAME.round_resets.discards
                local difference = target_play_size - current_play_size
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Play Size set to "..tostring(G.GAME.round_resets.discards), colour = G.C.BLUE})
                SMODS.change_discard_limit(difference)
                return true
            end
                }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.original_play_size = G.GAME.starting_params.discard_limit
        local difference = 1e+100 - G.GAME.starting_params.discard_limit
        SMODS.change_discard_limit(difference)
    end,

    remove_from_deck = function(self, card, from_debuff)
        if card.ability.extra.original_play_size then
            local difference = card.ability.extra.original_play_size - G.GAME.starting_params.discard_limit
            SMODS.change_discard_limit(difference)
        end
    end
}