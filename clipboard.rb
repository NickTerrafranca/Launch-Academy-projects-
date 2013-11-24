
    light_total = light_invoice.inject(0) { |result, element| result + element }
    med_total = medium_invoice.inject(0) { |result, element| result + element }
    dark_total = dark_invoice.inject(0) { |result, element| result + element }

    subtotal_light = light_total * coffee_selection[:light]
    subtotal_medium = med_total * coffee_selection[:medium]
    subtotal_dark = dark_total * coffee_selection[:dark]

    sale_total = (subtotal_light + subtotal_medium + subtotal_dark)