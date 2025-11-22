SMODS.Joker{ --yes i know this is some terrible code but its quite funny too (i have no idea how to make repeats in lua)
    name = "Pangoreuil",
    key = "JOKER_L_Pangoreuil",
    pos = {x = 0, y = 3},
    soul_pos = {x = 4, y = 0},
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'Jokers',
    credit = {
        art = "Shrimp",
        code = "Shrimp",
        concept = "Débilus",
    },
    config = {
        extra = {
            Tarot = 0,
            c_wheel_of_fortune = 0
        }
    },
    set_badges = function(self, card, badges)
             badges[#badges+1] = create_badge('Dev', G.C.DARK_EDITION, G.C.BLACK, 1 )
    end,

    calculate = function(self, card, context)
        if context.selling_self and not context.blueprint then
                return {
                    func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                    extra = {
                        func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                        colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE,
                        extra = {
                            func = function()local created_consumable = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        SMODS.add_card{set = 'Tarot', key = 'c_wheel_of_fortune', edition = 'e_negative', key_append = 'joker_forge_tarot'}
                        return true
                    end
                }))
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Let\'s go gambling!", colour = G.C.PURPLE})
                    end
                    return true
                end,
                            colour = G.C.PURPLE
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                        }
                }
        end
    end
}