SMODS.Joker{
    key = 'JOKER_Fern',
    atlas = 'Jokers',
    pos = {x = 4, y = 6},
    cost = 8,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    config = {
        extra = {
            gain = 1,
            xchips = 1,
            hand = 'High Card',
        }
    },
    credit = {
    art = "@Steam_Master0",
    code = "sushii64",
    concept = "Shrimp",
},
    -- makes sure to localize the poker hand's name for obvious reasons
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.gain, card.ability.extra.xchips, localize(card.ability.extra.hand, 'poker_hands') }}
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Sousou no Frieren', HEX("94528C"), G.C.White, 1 )
    end,
    calculate = function(self, card, context)
        -- at end of round, if you didn't lose
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            local _poker_hands = {}
            -- cycles through every existing poker hand (yes this counts modded ones)
            for handname, v in pairs(G.GAME.hands) do
                -- if the hand is visible (unlocked by playing it or if it's there by default)
                -- and it isn't the hand that's debuffed this round (to make sure it doesnt pick the same one twice in a row)
                if v.visible and handname ~= card.ability.extra.hand then
                    -- adds it to the table
                    _poker_hands[#_poker_hands + 1] = handname
                end
            end
            -- basically what that just did is made a table of all the hands you can see in the run info
            
            -- picks from that table and sets the hand do it
            card.ability.extra.hand = pseudorandom_element(_poker_hands, 'shrimp_hexdealer', {})
            -- says "Reset"
            return {
                message = localize('k_reset')
            }
        end
        -- debuff check when hand is played
        if context.debuff_hand and not context.check then
            -- checks to see if the played hand is the debuffed hand
            if context.scoring_name == card.ability.extra.hand then
                -- upgrades xchips
                card.ability.extra.xchips = card.ability.extra.xchips + card.ability.extra.gain
                -- says upgraded and tells the game not to score hand
                return {
                    message = localize('k_upgrade_ex'),
                    colour = G.C.CHIPS,
                    debuff = true
                }
            end
        end
        -- you know what this is already
        if context.joker_main then
            return {
                xchips = card.ability.extra.xchips
            }
        end
    end,
    -- sets the ability when the joker is created
    set_ability = function(self, card, initial, delay_sprites)
        local _poker_hands = {}
        -- see the same loop in the calculate function
        for handname, v in pairs(G.GAME.hands) do
            if v.visible and handname ~= card.ability.extra.hand then
                _poker_hands[#_poker_hands + 1] = handname
            end
        end
        -- this is a little different so it uses a different seed when it's in the collection
        -- as to not break the run itself or something idk i was told this
        card.ability.extra.hand = pseudorandom_element(_poker_hands,
            (card.area and card.area.config.type == 'title') and 'shrimp_false_hexdealer' or 'shrimp_hexdealer', {})
    end
}