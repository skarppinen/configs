-- Source basic editor options (including leader key, needed below for Lazy)
require("options")

-- Source all own keymaps, excluding plugin specific
-- keymaps.
require("keymaps")

-- Configure plugins, including plugin specific keymaps.
require("config.lazy")
