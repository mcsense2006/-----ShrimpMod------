SMODS.Joker{ --Rude
    key = "JOKER_Rude",
    config = {
        extra = {
            xchip = 1
        }
    },
    pos = {
        x = 15,
        y = 3
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
        return {vars = {card.ability.extra.xchip}}
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  and not context.blueprint then
            if (context.other_card:get_id() == 6 and (function()
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i].config.center.key == "j_shrimp_JOKER_Angry" then
              return true
          end
      end
      return false
  end)()) then
                card.ability.extra.xchip = (card.ability.extra.xchip) + 6
            elseif (context.other_card:get_id() == 6 and (function()
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i].config.center.key == "j_shrimp_JOKER_Angry" then
              return false
          end
      end
      return true
  end)()) then
                card.ability.extra.xchip = (card.ability.extra.xchip) + 0.6
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    x_chips = card.ability.extra.xchip
                }
        end
    end
}