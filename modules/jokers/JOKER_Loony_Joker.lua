SMODS.Joker{
    key = "JOKER_Loony_Joker",
    config = {
        extra = {
            mult = 15
        }
    },
    pos = {
        x = 9,
        y = 0
    },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Played Hand series', G.C.WHITE, G.C.BLACK, 1 )
    end,
    in_pool = function(self, args)
          return (
          not args 
            
          or args.source == 'sho' or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end
    ,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Four of a Kind"]) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}