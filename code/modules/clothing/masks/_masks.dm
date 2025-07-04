/obj/item/clothing/mask
	name = "mask"
	icon = 'icons/obj/clothing/masks.dmi'
	lefthand_file = 'icons/mob/inhands/clothing/masks_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/clothing/masks_righthand.dmi'
	body_parts_covered = HEAD
	slot_flags = ITEM_SLOT_MASK
	strip_delay = 40
	equip_delay_other = 40
	blood_overlay_type = "mask"
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION
	var/mask_adjusted = FALSE
	var/adjusted_flags = null
	///Did we install a filtering cloth?
	var/has_filter = FALSE
	/// The unique sound effect of dying while wearing this
	var/unique_death

/obj/item/clothing/mask/attack_self(mob/user)
	if((clothing_flags & VOICEBOX_TOGGLABLE))
		clothing_flags ^= (VOICEBOX_DISABLED)
		var/status = !(clothing_flags & VOICEBOX_DISABLED)
		to_chat(user, span_notice("You turn the voice box in [src] [status ? "on" : "off"]."))

/obj/item/clothing/mask/worn_overlays(mutable_appearance/standing, isinhands = FALSE)
	. = ..()
	if(isinhands)
		return

	if(body_parts_covered & HEAD)
		if(damaged_clothes)
			. += mutable_appearance('icons/effects/item_damage.dmi', "damagedmask")

/obj/item/clothing/mask/appears_bloody()
	return ..() && (body_parts_covered & HEAD)

/obj/item/clothing/mask/update_clothes_damaged_state(damaged_state = CLOTHING_DAMAGED)
	..()
	if(ismob(loc))
		var/mob/M = loc
		M.update_worn_mask()

//Proc that moves gas/breath masks out of the way, disabling them and allowing pill/food consumption
/obj/item/clothing/mask/proc/adjustmask(mob/living/carbon/user)
	if(user?.incapacitated())
		return
	mask_adjusted = !mask_adjusted
	if(!mask_adjusted)
		icon_state = initial(icon_state)
		clothing_flags |= visor_flags
		flags_inv |= visor_flags_inv
		flags_cover |= visor_flags_cover
		to_chat(user, span_notice("You push \the [src] back into place."))
		slot_flags = initial(slot_flags)
	else
		icon_state += "_up"
		to_chat(user, span_notice("You push \the [src] out of the way."))
		clothing_flags &= ~visor_flags
		flags_inv &= ~visor_flags_inv
		flags_cover &= ~visor_flags_cover
		if(adjusted_flags)
			slot_flags = adjusted_flags
	if(!istype(user))
		return
	// Update the mob if it's wearing the mask.
	if(user.wear_mask == src)
		user.wear_mask_update(src, toggle_off = mask_adjusted)
	if(loc == user)
		// Update action button icon for adjusted mask, if someone is holding it.
		user.update_mob_action_buttons()

/**
 * Proc called in lungs.dm to act if wearing a mask with filters, used to reduce the filters durability, return a changed gas mixture depending on the filter status
 * Arguments:
 * * breath - the gas mixture of the breather
 */
/obj/item/clothing/mask/proc/consume_filter(datum/gas_mixture/breath)
	return breath
