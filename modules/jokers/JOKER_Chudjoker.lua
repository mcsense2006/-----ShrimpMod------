SMODS.Joker{
    name = "Chudjoker",
    key = "JOKER_Chudjoker",
    config = {
        extra = {
            set_probability = 0,
            set_probability2 = 0,
            numerator = 0
        }
    },
    pos = {
        x = 13,
        y = 2
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "@Steam_Master0",
        code = "Shrimp",
        concept = "<Credits would be appreciated>",
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
    end,
    calculate = function(self, card, context)
        if context.fix_probability and not context.blueprint then
        local numerator, denominator = context.numerator, context.denominator
            if (context.identifier == "8ball" or context.identifier == "gros_michel" or context.identifier == "business" or context.identifier == "space" or context.identifier == "cavendish" or context.identifier == "parking" or context.identifier == "halu1" or context.identifier == "bloodstone") then
                numerator = card.ability.extra.set_probability
            elseif (context.identifier == "wheel_of_fortune" or context.identifier == "lucky_mult" or context.identifier == "lucky_money" or context.identifier == "glass") then
                numerator = card.ability.extra.set_probability2
            end
      return {
        numerator = numerator, 
        denominator = denominator
      }
        end
    end
}