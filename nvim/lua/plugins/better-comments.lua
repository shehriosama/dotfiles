return {
    "Djancyp/better-comments.nvim",

    config = function ()
        require('better-comment').Setup({
            tags = {
                {
                    name = "TODO",
                    fg = "#f78c6c",
                    bg = "",
                    bold = true,
                    virtual_text = "",
                },
                {
                    name = "?",
                    fg = "#82aaff",
                    bg = "",
                    bold = true,
                    virtual_text = "",
                },
                {
                    name = "*",
                    fg = "#c3e88d",
                    bg = "",
                    bold = true,
                    virtual_text = "Important",
                },
                {
                    name = "!",
                    fg = "#f07178",
                    bg = "",
                    bold = true,
                    virtual_text = "",
                }

            }
        })
    end
}
