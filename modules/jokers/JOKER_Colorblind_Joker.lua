SMODS.Joker{
    name = "Colorblind Joker",
    key = "JOKER_Colorblind_Joker",
    config = {
        extra = {
        }
    },
    credit = {
        art = 'Shrimp',
        code = 'Shrimp',
        concept = 'Shrimp',
    },
    pos = {
        x = 4,
        y = 2
    },
    cost = 7,
    rarity = 2,
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    add_to_deck = function(self, card, from_debuff)
        -- Combine suits effect enabled
        -- Combine suits effect enabled
    end,

    remove_from_deck = function(self, card, from_debuff)
        -- Combine suits effect disabled
        -- Combine suits effect disabled
    end
} 
      
local card_is_suit_ref = Card.is_suit
function Card:is_suit(suit, bypass_debuff, flush_calc)
    local ret = card_is_suit_ref(self, suit, bypass_debuff, flush_calc)
    if not ret and not SMODS.has_no_suit(self) then
        if next(SMODS.find_card("j_shrimp_JOKER_Colorblind_Joker")) then
            -- If checking for Spades and card is Hearts, return true
            if suit == "Spades" and self.base.suit == "Hearts" then
                ret = true
            end
            -- If checking for Hearts and card is Spades, return true
            if suit == "Hearts" and self.base.suit == "Spades" then
                ret = true
            end
            -- If checking for Diamonds and card is Clubs, return true
            if suit == "Diamonds" and self.base.suit == "Clubs" then
                ret = true
            end
            -- If checking for Clubs and card is Diamonds, return true
            if suit == "Clubs" and self.base.suit == "Diamonds" then
                ret = true
            end
        end
    end
    return ret
end