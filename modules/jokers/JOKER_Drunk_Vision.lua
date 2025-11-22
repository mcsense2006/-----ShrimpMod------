SMODS.Joker{
    key = 'JOKER_Drunk_Vision',
    atlas = 'Jokers',
    pos = {x = 4, y = 3},
    cost = 3,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = { extra = { } },
    credit = {
    art = "Shrimp",
    code = "Shrimp",
    concept = "@andresirlo",
},
    calculate = function(self, card, context)
    end,

    add_to_deck = function(self, card, from_debuff)
        -- Combine ranks effect enabled
        -- Combine ranks effect enabled
    end,

    remove_from_deck = function(self, card, from_debuff)
        -- Combine ranks effect disabled
        -- Combine ranks effect disabled
    end
} 
      
local card_get_id_ref = Card.get_id
function Card:get_id()
    local original_id = card_get_id_ref(self)
    if not original_id then return original_id end

    if next(SMODS.find_card("j_shrimp_JOKER_Drunk_Vision")) then
        local source_ids = {9}
        for _, source_id in pairs(source_ids) do
            if original_id == source_id then return 6 end
        end
    end
    if next(SMODS.find_card("j_shrimp_JOKER_Drunk_Vision")) then
        local source_ids = {14}
        for _, source_id in pairs(source_ids) do
            if original_id == source_id then return 2 end
        end
    end
    return original_id
end
