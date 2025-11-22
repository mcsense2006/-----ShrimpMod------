SMODS.Joker{ --Angry
    key = "JOKER_Angry",
    config = {
        extra = {
            mulx = 0
        }
    },
    pos = {
        x = 11,
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
        return {vars = {card.ability.extra.mulx}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round  and not context.blueprint then
            if (context.other_card:get_id() == 6 and (function()
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i].config.center.key == "j_shrimp_JOKER_Rude" then
              return false
          end
      end
      return true
  end)()) then
                return {
                    func = function()
                    card.ability.extra.mulx = (card.ability.extra.mulx) + 60
                    return true
                end
                }
            elseif (context.other_card:get_id() == 6 and (function()
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i].config.center.key == "j_shrimp_JOKER_Rude" then
              return true
          end
      end
      return false
  end)()) then
                return {
                    func = function()
                    card.ability.extra.mulx = (card.ability.extra.mulx) + 600
                    return true
                end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.mulx
                }
        end
    end
}