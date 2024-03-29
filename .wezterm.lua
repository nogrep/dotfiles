-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Obsidian'
config.font = wezterm.font 'JetBrains Mono'
-- Spawn a git bash shell in login mode
config.default_prog = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-il' }

-- timeout_milliseconds defaults to 1000 and can be omitted
config.disable_default_key_bindings = true
config.keys = {
  {
    key = 't',
    mods = 'SHIFT|CTRL',
    action = act.SpawnTab 'CurrentPaneDomain',
  },

  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'm',
    mods = 'SHIFT|CTRL',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  { key = '-', mods = 'CTRL', action = act.DecreaseFontSize },
  { key = ';', mods = 'CTRL', action = act.IncreaseFontSize },
  { key = 'h', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'SHIFT|CTRL', action = act.ActivatePaneDirection 'Right' },
}
for i = 1, 9 do
  -- CTRL+ALT + number to activate that tab
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = act.ActivateTab(i - 1),
  })
end
-- and finally, return the configuration to wezterm
return config
