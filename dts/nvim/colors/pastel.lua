local colors = {
    foreground = "#d0d0d0",  -- Lighter, more vibrant foreground
    background = "#151515",  -- Keep background dark for contrast
    black = "#444444",       -- Slightly lighter black for better contrast
    red = "#f28a8a",         -- More vibrant red
    green = "#9cb68b",       -- More vibrant green
    yellow = "#e0b97f",      -- More vibrant yellow
    blue = "#6a7fb2",        -- More vibrant blue
    magenta = "#9f7d8a",     -- More vibrant magenta
    cyan = "#9bacc4",        -- More vibrant cyan
    white = "#c7c7c7",       -- Lighter, more vibrant white
    bright_black = "#2e2e2e",-- Slightly lighter for bright black
    bright_red = "#f28a8a",  -- Same vibrant red as before
    bright_green = "#9cb68b",-- Same vibrant green as before
    bright_yellow = "#e0b97f",-- Same vibrant yellow
    bright_blue = "#6a7fb2", -- Same vibrant blue
    bright_magenta = "#9f7d8a",-- Same vibrant magenta
    bright_cyan = "#9bacc4", -- Same vibrant cyan
    bright_white = "#d0d0d0", -- Same vibrant white
}

-- Use nvim_set_hl for highlighting groups
local function set_highlight(group, fg, bg, attr)
    vim.api.nvim_set_hl(0, group, {
        fg = fg or "NONE",
        bg = bg or "NONE",
        bold = (attr == "bold"),
        italic = (attr == "italic"),
    })
end

-- Basic UI highlights
set_highlight("Normal", colors.foreground, colors.background)
set_highlight("Comment", "#9c9c9c", nil, "italic")  -- Lighter color for comments
set_highlight("Constant", colors.cyan, nil)
set_highlight("String", colors.green, nil)
set_highlight("Function", colors.blue, nil)
set_highlight("Keyword", colors.red, nil, "bold")
set_highlight("Type", colors.magenta, nil)

-- Add more highlights as needed

