SMODS.Joker{
    key = 'JOKER_Oops_all_1s',
    atlas = 'Jokers',
    pos = { x = 1, y = 0 },
    config = {
        extra = {
            mod_probability = 2,
            numerator = 0
        }
    },
    rarity = 2,
    cost = 4,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlock_card = true,
    discovered = true,
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "Shrimp",
    },
    set_badges = function(self, card, badges)
            badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
    end,
    calculate = function(self, card, context)
          if context.mod_probability  then
          local numerator, denominator = context.numerator, context.denominator
                  numerator = numerator / card.ability.extra.mod_probability
        return {
          numerator = numerator, 
          denominator = denominator
        }
          end
    end
}

