/obj/item/clothing/head/costume/kitty
	name = "kitty ears"
	desc = "Comes with the parasitic brainworms!"
	icon_state = "kitty"
	color = "#999999"

	dog_fashion = /datum/dog_fashion/head/kitty

/obj/item/clothing/head/costume/kitty/visual_equipped(mob/living/carbon/human/user, slot)
	if(ishuman(user) && (slot & ITEM_SLOT_HEAD))
		update_icon(ALL, user)
		user.update_worn_head() //Color might have been changed by update_appearance.
	..()

/obj/item/clothing/head/costume/kitty/update_icon(updates=ALL, mob/living/carbon/human/user)
	. = ..()
	if(ishuman(user))
		add_atom_colour(user.hair_color, FIXED_COLOUR_PRIORITY)

/obj/item/clothing/head/costume/kitty/genuine
	desc = "A pair of kitty ears. A tag on the inside says \"Hand made from real cats.\""

/obj/item/clothing/head/costume/rabbitears
	name = "rabbit ears"
	desc = "Wearing these makes you valid."
	icon_state = "bunny"

	dog_fashion = /datum/dog_fashion/head/rabbit
