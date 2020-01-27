library(hexSticker)

sticker(here::here("inst/hex/sms.png"),
        # Image
        s_x = 1,
        s_y = .75,
        s_width = 0.4,
        s_height = 0.4,
        # Package name
        package = "smsportal",
        p_size = 22,
        # Hex
        h_color = "forestgreen",
        h_fill="#f9690e",
        # Output
        filename = here::here("man/figures/smsportal-hex.png"),
        dpi = 300
)
