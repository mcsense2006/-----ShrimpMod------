SMODS.Tag {
    atlas = 'Tag',
    key = "TAG_Epic",
    pos = { x = 1, y = 0 },
    apply = function(self, tag, context)
        if context.type == 'store_joker_create' then
            local card = SMODS.create_card {
                set = "Jokers",
                rarity = "shrimp_epic",
                area = context.area,
            }
            create_shop_card_ui(card, 'Joker', context.area)
            card.states.visible = false
            tag:yep('+', G.C.GREEN, function()
                card:start_materialize()
                card.ability.couponed = true
                card:set_cost()
                return true
            end)
            tag.triggered = true
            return card
        end
    end
}
