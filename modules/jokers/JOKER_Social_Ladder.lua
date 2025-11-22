SMODS.Joker{
    name = "Social Ladder",
    key = "JOKER_Social_Ladder",
    config = {
        extra = {
            levels = 2,
            least = 0
        }
    },
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = '@andresirlo',
    },
    pos = {
        x = 13,
        y = 3
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  and not context.blueprint then
                temp_played = math.huge
        temp_order = math.huge
        for hand, value in pairs(G.GAME.hands) do 
          if value.played < temp_played and value.visible then
            temp_played = value.played
            temp_order = value.order
            target_hand = hand
          else if value.played == temp_played and value.visible then
            if value.order < temp_order then
              temp_order = value.order
              target_hand = hand
            end
          end
          end
        end
                return {
                    level_up = card.ability.extra.levels,
      level_up_hand = target_hand,
                    message = localize('k_level_up_ex')
                }
        end
    end
}