SMODS.Joker{
    key = "JOKER_Common_Ends",
    config = {
        extra = {
            Mult = 0
        }
    },
    pos = {
        x = 4,
        y = 5
    },
    cost = 5,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "u/a45wesley",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Mahjong Serie', G.C.WHITE, HEX("4BC292"), 1 )
    end,
    loc_vars = function(self, info_queue, card)
            return {vars = { card.ability.extra.Mult}}
    end,
    in_pool = function(self, args)
          return not args   or args.source == 'sho' or args.source == 'buf' or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
      end
    ,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if (context.other_card:get_id() == 14 or context.other_card:is_face()) then
                card.ability.extra.Mult = (card.ability.extra.Mult) + 1
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.Mult
                }
        end
    end
}