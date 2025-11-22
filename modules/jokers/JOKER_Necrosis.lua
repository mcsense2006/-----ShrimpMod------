SMODS.Joker{ --Necrosis
    key = "JOKER_Necrosis",
    config = {
        extra = {
            Xmult = 1,
            cardsremovedfromdeck = 0,
            set_probability = 1,
            both = 0
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
    in_pool = function(self, args)
          return (
          not args 
          or args.source ~= 'sho' 
          or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end,

    loc_vars = function(self, info_queue, card)
        
        return {vars = {card.ability.extra.Xmult}}
    end,

    calculate = function(self, card, context)
        if context.fix_probability  then
        local numerator, denominator = context.numerator, context.denominator
                numerator = card.ability.extra.set_probability
        denominator = card.ability.extra.set_probability
      return {
        numerator = numerator, 
        denominator = denominator
      }
        end
        if context.cardarea == G.jokers and context.joker_main  then
                card.ability.extra.Xmult = ((G.GAME.starting_deck_size - #(G.playing_cards or {}))) * 0.5
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
    end
}