SMODS.Joker{
    key = "JOKER_Gay_Joker",
    config = {
        extra = {
        }
    },
    pos = {
        x = 3,
        y = 4
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = '@Steam_Master0',
        code = 'Shrimp',
        concept = 'Shrimp',
    },
    set_ability = function(self, card, initial)
        card:set_eternal(true)
    end,
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Meme', HEX("B00B69"), HEX("69B00B"), 1 )
    end,
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Straight"]) then
                return {
                    func = function()
                
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.5,
                    func = function()
                        if G.STAGE == G.STAGES.RUN then 
                          G.STATE = G.STATES.GAME_OVER
                          G.STATE_COMPLETE = false
                        end
                    end
                }))
                
                return true
            end
                }
            end
        end
    end
}