-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jan/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    config = { "\27LJ\2\n\5\0\0\21\3\24\0j6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\1\3\0006\2\0\0'\4\4\0B\2\2\0029\2\5\2B\2\1\0026\3\6\0009\3\a\0036\5\0\0'\a\4\0B\5\2\0029\5\b\5B\5\1\0A\3\0\0024\4\0\0006\5\t\0\18\a\1\0B\5\2\4X\bDÄ\18\n\t\0\18\r\t\0009\v\n\t'\14\v\0'\15\f\0B\v\4\2\18\r\v\0009\v\n\v'\14\r\0'\15\f\0B\v\4\2\18\t\v\0-\v\0\0008\v\t\v\n\v\0\0X\v\3Ä-\v\0\0008\t\t\vX\v\3Ä4\v\3\0>\t\1\v\18\t\v\0006\v\t\0\18\r\t\0B\v\2\4X\14(Ä\18\18\n\0009\16\14\n'\19\15\0B\16\3\2\15\0\16\0X\17\"Ä-\16\1\0009\16\16\16\18\18\2\0\18\19\15\0B\16\3\2\14\0\16\0X\16\27Ä-\16\1\0009\16\16\16\18\18\3\0\18\19\15\0B\16\3\2\15\0\16\0X\17\rÄ-\16\1\0009\16\16\16\18\18\4\0\18\19\15\0B\16\3\2\14\0\16\0X\16\rÄ6\16\17\0009\16\18\16\18\18\4\0\18\19\15\0B\16\3\1X\16\aÄ-\16\2\0009\16\19\16'\18\20\0\18\19\15\0'\20\21\0&\18\20\18B\16\2\1E\14\3\3R\14÷E\b\3\3R\b∫6\5\t\0\18\a\4\0B\5\2\4X\b\6Ä6\n\0\0'\f\22\0B\n\2\0029\n\23\n\18\f\t\0B\n\2\1E\b\3\3R\b¯K\0\1\0\3¿\1¿\0¿\21install_debugger\29dap-install.core.installA does not have a DAP client, please remove the \"+debug\" flag\18The language \twarn\vinsert\ntable\14has_value\f%+debug\tfind\15%s+%+debug\5\r%s+%+lsp\tgsub\vipairs\18get_debuggers\rtbl_keys\bvim\28get_installed_debuggers\30dap-install.api.debuggers\nlangs\fmodules\29doom.core.config.modules\frequire´\3\1\0\t\0\28\0(6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0025\5\n\0006\6\5\0009\6\6\0069\6\a\6'\b\b\0B\6\2\2'\a\t\0&\6\a\6=\6\v\5B\3\2\0015\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0033\4\27\0\18\5\4\0B\5\1\0012\0\0ÄK\0\1\0\0\truby\1\2\0\0\rruby_vsc\15typescript\1\3\0\0\vchrome\vjsnode\15javascript\1\3\0\0\vchrome\vjsnode\ago\1\2\0\0\rgo_delve\trust\1\2\0\0\14ccppr_vsc\6c\1\2\0\0\14ccppr_vsc\bcpp\1\0\0\1\2\0\0\14ccppr_vsc\22installation_path\1\0\0\17/dapinstall/\tdata\fstdpath\afn\bvim\nsetup\16dap-install\15doom.utils\24doom.extras.logging\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\2\4\0\r-\0\0\0009\0\0\0)\2\1\0B\0\2\2\15\0\0\0X\1\2Ä'\0\1\0X\1\4Ä-\0\1\0009\0\2\0'\2\3\0B\0\2\2L\0\2\0\1¿\0¿\n<Tab>\6t\5\tjumpO\0\0\3\2\4\0\r-\0\0\0009\0\0\0)\2ˇˇB\0\2\2\15\0\0\0X\1\2Ä'\0\1\0X\1\4Ä-\0\1\0009\0\2\0'\2\3\0B\0\2\2L\0\2\0\1¿\0¿\f<S-Tab>\6t\5\tjumpÍ\2\1\0\t\0\18\0'6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\4\5\0B\2\2\0016\2\0\0'\4\6\0B\2\2\0029\2\a\2B\2\1\0013\2\b\0003\3\t\0009\4\n\0'\6\v\0\18\a\2\0005\b\f\0B\4\4\0019\4\r\0'\6\v\0\18\a\2\0005\b\14\0B\4\4\0019\4\n\0'\6\15\0\18\a\3\0005\b\16\0B\4\4\0019\4\r\0'\6\15\0\18\a\3\0005\b\17\0B\4\4\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\1\0\1\texpr\2\f<S-Tab>\1\0\1\texpr\2\tsmap\1\0\1\texpr\2\n<Tab>\timap\0\0\tload luasnip/loaders/from_vscode\1\0\2\17updateevents\29TextChanged,TextChangedI\fhistory\2\15set_config\vconfig\fluasnip\24doom.utils.mappings\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  aniseed = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/aniseed",
    url = "https://github.com/Olical/aniseed"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n/\0\1\5\0\4\0\0056\1\0\0009\1\1\1'\3\2\0009\4\3\0D\1\3\0\aid\a%s\vformat\vstringÉ\1\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\n Ô†µ \n ÔÅ± \fwarning\n ÔÅó \nerror\npairs\6 E\0\1\2\0\4\0\t6\1\0\0009\1\1\0018\1\0\0019\1\2\1\6\1\3\0X\1\2Ä+\1\2\0L\1\2\0K\0\1\0\14dashboard\rfiletype\abo\bvimX\0\1\5\0\4\0\r9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\14\0\1\0X\2\5Ä9\1\0\0\18\3\1\0009\1\1\1'\4\3\0B\1\3\2L\1\2\0\v%_spec\v%_test\nmatch\rfilenameU\0\1\5\0\4\0\r9\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\14\0\1\0X\2\5Ä9\1\0\0\18\3\1\0009\1\1\1'\4\3\0B\1\3\2L\1\2\0\n%.txt\t%.md\nmatch\rfilenameq\0\1\a\0\4\0\0209\1\0\0\18\3\1\0009\1\1\1'\4\2\0B\1\3\2\14\0\1\0X\2\tÄ9\1\0\0\18\3\1\0009\1\1\1'\4\3\0)\5\1\0+\6\2\0B\1\5\2\15\0\1\0X\2\2Ä+\1\2\0L\1\2\0+\1\1\0L\1\2\0\ndoom-\ndoom_\tfind\rfilenameù\3\0\0\b\0\17\1>4\0\0\0006\1\0\0009\1\1\0019\1\2\0019\1\3\1)\3\0\0'\4\4\0B\1\3\0026\2\0\0009\2\1\0029\2\2\0029\2\3\2)\4\0\0'\5\5\0B\2\3\0026\3\0\0009\3\1\0039\3\2\0039\3\3\3)\5\0\0'\6\6\0B\3\3\0026\4\0\0009\4\1\0049\4\2\0049\4\3\4)\6\0\0'\a\a\0B\4\3\2\b\1\0\0X\5\6Ä5\5\t\0'\6\b\0\18\a\1\0&\6\a\6=\6\n\5>\5\1\0\b\2\0\0X\5\6Ä5\5\f\0'\6\v\0\18\a\2\0&\6\a\6=\6\n\5>\5\2\0\b\4\0\0X\5\6Ä5\5\14\0'\6\r\0\18\a\4\0&\6\a\6=\6\n\5>\5\3\0\b\3\0\0X\5\6Ä5\5\16\0'\6\15\0\18\a\3\0&\6\a\6=\6\n\5>\5\4\0L\0\2\0\1\0\1\nguifg\f#51afef\n Ô†µ \1\0\1\nguifg\f#98be65\n ÔÅô \1\0\1\nguifg\f#ECBE7B\n ÔÅ± \ttext\1\0\1\nguifg\f#ff6c6b\n ÔÅó \tHint\16Information\fWarning\nError\14get_count\15diagnostic\blsp\bvim\0Õ\b\1\0\b\0!\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2 \0005\3\4\0003\4\3\0=\4\5\0033\4\6\0=\4\a\0033\4\b\0=\4\t\0035\4\v\0005\5\n\0=\5\f\0044\5\4\0005\6\r\0003\a\14\0=\a\15\6>\6\1\0055\6\16\0003\a\17\0=\a\15\6>\6\2\0055\6\18\0003\a\19\0=\a\15\6>\6\3\5=\5\20\4=\4\21\0034\4\6\0005\5\22\0>\5\1\0045\5\23\0>\5\2\0045\5\24\0>\5\3\0045\5\25\0>\5\4\0045\5\26\0>\5\5\4=\4\27\0035\4\29\0003\5\28\0=\5\30\4=\4\31\3=\3\f\2B\0\2\1K\0\1\0\1\0\0\17custom_areas\nright\1\0\0\0\foffsets\1\0\3\rfiletype\vpacker\ttext\20Plugins manager\15text_align\vcenter\1\0\3\rfiletype\fOutline\ttext\fSymbols\15text_align\vcenter\1\0\3\rfiletype\fminimap\ttext\fMinimap\15text_align\vcenter\1\0\3\rfiletype\nnetrw\ttext\18File Explorer\15text_align\vcenter\1\0\3\rfiletype\rNvimTree\ttext\18File Explorer\15text_align\vcenter\vgroups\nitems\0\1\0\2\tname\tDoom\15auto_close\2\0\1\0\2\tname\tDocs\15auto_close\2\fmatcher\0\1\0\2\tname\nTests\15auto_close\2\foptions\1\0\0\1\0\1\27toggle_hidden_on_enter\2\18custom_filter\0\26diagnostics_indicator\0\fnumbers\1\0\19\22show_buffer_icons\2\22buffer_close_icon\bÔôï\28show_buffer_close_icons\2\18modified_icon\b‚óè\25enforce_regular_tabs\2\15close_icon\bÔÄç\22left_trunc_marker\bÔÇ®\23right_trunc_marker\bÔÇ©\16diagnostics\rnvim_lsp\20max_name_length\3\20\22max_prefix_length\3\15\rtab_size\3\25\24persist_buffer_sort\2\27always_show_bufferline\1\fsort_by\14directory\20separator_style\nthick\24show_tab_indicators\2\19indicator_icon\b‚ñé\20show_close_icon\1\0\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n¨\25\0\0\f\0009\0y6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0016\2\0\0'\4\6\0B\2\2\0029\2\a\2'\3\b\0&\2\3\2=\2\5\0016\1\3\0009\1\4\1'\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\15\0005\3\r\0005\4\f\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\14\3=\3\19\0025\3\21\0005\4\20\0=\4\14\3=\3\22\0025\3\24\0005\4\23\0=\4\14\3=\3\25\0025\3\27\0005\4\26\0=\4\14\3=\3\28\0025\3\30\0005\4\29\0=\4\14\3=\3\31\0025\3!\0005\4 \0=\4\14\3=\3\4\2=\2\v\0016\1\3\0009\1\4\0014\2\3\0'\3#\0006\4\3\0009\4$\0049\4%\4'\6&\0006\a\3\0009\a$\a9\a'\a6\t\3\0009\t$\t9\t(\t6\v\3\0009\v\4\v9\v)\vB\t\2\0A\a\0\0A\4\1\2'\5*\0&\3\5\3>\3\1\2=\2\"\0016\1\3\0009\1\4\0016\2\3\0009\2,\0029\4-\0009\4+\4B\2\2\2\15\0\2\0X\3\3Ä5\2.\0\14\0\2\0X\3\2Ä9\2-\0009\2+\2=\2+\0016\1\3\0009\1/\1'\0030\0009\4-\0009\0041\0049\0042\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0033\0009\4-\0009\0041\0049\0044\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0035\0009\4-\0009\0041\0049\0046\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0037\0009\4-\0009\0041\0049\0048\4&\3\4\3B\1\2\1K\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\21\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  \tdoom\16tbl_isempty\28dashboard_custom_header\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand3lua require(\"doom.core.functions\").open_docs()\1\2\0\0000ÔÄ≠  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000Ôë¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ÔáÇ  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000Ôú°  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ÔÄÆ  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ÔÖú  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ÔÄû  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\vconfig\21doom.core.config\frequire\0" },
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["doom-themes.nvim"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/doom-themes.nvim",
    url = "https://github.com/GustavoPrietoP/doom-themes.nvim"
  },
  ["format.nvim"] = {
    commands = { "Format", "FormatWrite" },
    config = { "\27LJ\2\nN\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\0¿9stylua --config-path ~/.config/stylua/stylua.toml %sN\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\0¿9stylua --config-path ~/.config/stylua/stylua.toml %s$\0\1\5\1\1\0\4-\1\0\0'\3\0\0\18\4\0\0D\1\3\0\0¿\15yapf -i %s¢\t\1\0\b\0005\0n6\0\0\0009\0\1\0006\1\2\0'\3\1\0B\1\2\0029\1\3\0015\3\a\0004\4\3\0005\5\5\0005\6\4\0=\6\6\5>\5\1\4=\4\b\0034\4\3\0005\5\n\0004\6\3\0003\a\t\0>\a\1\6=\6\6\5>\5\1\4=\4\v\0034\4\3\0005\5\r\0005\6\f\0=\6\6\5>\5\1\4=\4\14\0034\4\3\0005\5\16\0004\6\3\0003\a\15\0>\a\1\6=\6\6\5>\5\1\4=\4\17\0034\4\3\0005\5\19\0004\6\3\0003\a\18\0>\a\1\6=\6\6\5>\5\1\4=\4\20\0034\4\3\0005\5\22\0005\6\21\0=\6\6\5>\5\1\4=\4\23\0034\4\3\0005\5\25\0005\6\24\0=\6\6\5>\5\1\4=\4\26\0034\4\3\0005\5\28\0005\6\27\0=\6\6\5>\5\1\4=\4\29\0034\4\3\0005\5\31\0005\6\30\0=\6\6\5>\5\1\4=\4 \0034\4\3\0005\5\"\0005\6!\0=\6\6\5>\5\1\0045\5$\0005\6#\0=\6\6\5>\5\2\4=\4%\0034\4\3\0005\5'\0005\6&\0=\6\6\5>\5\1\4=\4(\0034\4\3\0005\5*\0005\6)\0=\6\6\5>\5\1\4=\4+\0034\4\3\0005\5-\0005\6,\0=\6\6\5>\5\1\4=\4.\0034\4\3\0005\0050\0005\6/\0=\6\6\5>\5\1\4=\0041\0034\4\3\0005\0053\0005\0062\0=\6\6\5>\5\1\4=\0044\3B\1\2\0012\0\0ÄK\0\1\0\tyaml\1\0\0\1\2\0\0\30prettier -w --parser yaml\ttoml\1\0\0\1\2\0\0\30prettier -w --parser toml\tjson\1\0\0\1\2\0\0\30prettier -w --parser json\tscss\1\0\0\1\2\0\0\30prettier -w --parser scss\bcss\1\0\0\1\2\0\0\29prettier -w --parser css\rmarkdown\1\0\3\16end_pattern\n^```$\vtarget\fcurrent\18start_pattern\16^```python$\1\2\0\0\fyapf -i\1\0\0\1\2\0\0\"prettier -w --parser markdown\thtml\1\0\0\1\2\0\0\30prettier -w --parser html\15typescript\1\0\0\1\2\0\0$prettier -w --parser typescript\15javascript\1\0\0\1\3\0\0\16prettier -w%./node_modules/.bin/eslint --fix\ago\1\0\1\21tempfile_postfix\t.tmp\1\3\0\0\rgofmt -w\17goimports -w\vpython\1\0\0\0\blua\1\0\0\0\fvimwiki\1\0\2\16end_pattern\n^}}}$\18start_pattern\20^{{{javascript$\1\2\0\0\31prettier -w --parser babel\bvim\1\0\2\16end_pattern\n^EOF$\18start_pattern\17^lua << EOF$\0\6*\1\0\0\bcmd\1\0\0\1\2\0\0\24sed -i 's/[ \t]*$//'\nsetup\frequire\vformat\vstring\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/format.nvim",
    url = "https://github.com/lukas-reineke/format.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nK\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\5¿\14DASHBOARD\24get_buffer_filetypeK\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\a\0\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\5¿\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä õ\4\0\0\6\1#\0_5\0\1\0-\1\0\0'\3\0\0B\1\2\2=\1\2\0-\1\0\0'\3\3\0B\1\2\2=\1\4\0-\1\0\0'\3\5\0B\1\2\2=\1\6\0-\1\0\0'\3\5\0B\1\2\2=\1\a\0-\1\0\0'\3\5\0B\1\2\2=\1\b\0-\1\0\0'\3\t\0B\1\2\2=\1\n\0-\1\0\0'\3\0\0B\1\2\2=\1\v\0-\1\0\0'\3\f\0B\1\2\2=\1\r\0-\1\0\0'\3\f\0B\1\2\2=\1\14\0-\1\0\0'\3\f\0B\1\2\2=\1\15\0-\1\0\0'\3\16\0B\1\2\2=\1\17\0-\1\0\0'\3\t\0B\1\2\2=\1\18\0-\1\0\0'\3\t\0B\1\2\2=\1\19\0-\1\0\0'\3\0\0B\1\2\2=\1\20\0-\1\0\0'\3\0\0B\1\2\2=\1\21\0-\1\0\0'\3\22\0B\1\2\2=\1\23\0-\1\0\0'\3\22\0B\1\2\2=\1\24\0-\1\0\0'\3\22\0B\1\2\2=\1\25\0-\1\0\0'\3\0\0B\1\2\2=\1\26\0-\1\0\0'\3\0\0B\1\2\2=\1\27\0006\1\28\0009\1\29\0019\1\30\1'\3\31\0006\4\28\0009\4 \0049\4!\4B\4\1\0028\4\4\0B\4\1\2&\3\4\3B\1\2\1'\1\"\0L\1\2\0\2¿\nÔåå  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\a\0\b\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\0026\2\5\0009\2\6\2'\4\a\0\18\5\0\0\18\6\1\0D\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvim∫\1\0\0\6\1\t\0\24-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\0\vÄ6\0\2\0009\0\3\0'\2\4\0006\3\5\0009\3\6\0039\3\a\3-\4\0\0009\4\0\4B\4\1\0C\0\2\0X\0\aÄ6\0\2\0009\0\3\0'\2\b\0006\3\5\0009\3\6\0039\3\a\3D\0\3\0K\0\1\0\4¿\fÔêç %s \rfiletype\abo\bvim\18ÓòÅ %s ¬ª %s \vformat\vstring\18No Active Lsp\19get_lsp_clientS\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\5\2\14dashboard\2\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\tÔû° \19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   7\0\0\3\1\3\0\6'\0\0\0-\1\0\0009\1\1\1'\2\2\0&\0\2\0L\0\2\0\0¿\6 \17doom_version\vDOOM v\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä¬\30\1\0\17\0ã\1\1À\0046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\0026\3\0\0'\5\6\0B\3\2\0026\4\0\0'\6\a\0B\4\2\0026\5\0\0'\a\b\0B\5\2\0026\6\0\0'\b\t\0B\6\2\0029\a\n\0035\b\f\0=\b\v\0039\b\r\0019\b\14\b\14\0\b\0X\b\5Ä6\b\15\0009\b\16\b9\n\17\3'\v\18\0B\b\3\0013\b\19\0003\t\20\0009\n\21\a5\v\28\0005\f\23\0003\r\22\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f\29\v>\v\1\n9\n\21\a5\v\"\0005\f\31\0003\r\30\0=\r\24\f5\r!\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f=\f#\v>\v\2\n9\n\21\a5\v*\0005\f$\0009\r%\6\15\0\r\0X\14\1Ä9\r&\6=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f+\v>\v\3\n9\n\21\a5\v/\0005\f,\0009\r%\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0006\14\0\0'\16-\0B\14\2\0029\14.\14>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f0\v>\v\4\n9\n\21\a5\v6\0005\f3\0009\r\r\0019\r1\r\15\0\r\0X\14\2Ä'\r2\0X\14\1Ä'\r4\0=\r\24\f9\r%\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f5\r5\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f4\v>\v\5\n9\n\21\a5\v:\0005\f8\0003\r7\0=\r\24\f=\t'\f4\r\3\0\18\14\2\0'\0169\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f;\v>\v\6\n9\n\21\a5\v=\0005\f<\0=\t'\f4\r\3\0\18\14\2\0'\0169\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f>\v>\v\a\n9\n\21\a5\vC\0005\f?\0=\t'\f9\r\r\0019\r@\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fD\v>\v\b\n9\n\21\a5\vH\0005\fE\0=\t'\f9\r\r\0019\rF\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16G\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fI\v>\v\t\n9\n\21\a5\vL\0005\fJ\0=\t'\f9\r\r\0019\rK\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fM\v>\v\n\n9\nN\a5\vP\0005\fO\0009\r&\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fQ\v>\v\1\n9\nN\a5\vS\0005\fR\0009\r&\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fT\v>\v\2\n9\nN\a5\vX\0005\fV\0003\rU\0=\r\24\f3\rW\0=\r'\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fY\v>\v\3\n9\nN\a5\v]\0005\f[\0003\rZ\0=\r\24\f9\r\\\6=\r'\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f^\v>\v\4\n9\nN\a5\vb\0005\f_\0009\r\\\6=\r'\f5\ra\0\18\14\2\0'\16`\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f=\fc\v>\v\5\n9\nN\a5\vf\0005\fe\0003\rd\0=\r\24\f9\r&\6=\r'\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fg\v>\v\6\n9\nN\a5\vi\0005\fh\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16`\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fj\v>\v\a\n9\nN\a5\vl\0005\fk\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16G\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fm\v>\v\b\n9\nN\a5\vo\0005\fn\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fp\v>\v\t\n\15\0\b\0X\n\28Ä9\nN\a5\vt\0005\fr\0003\rq\0=\r\24\f=\b'\f5\rs\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fu\v>\v\n\n9\nN\a5\vx\0005\fw\0003\rv\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fy\v>\v\v\n9\nz\a5\v}\0005\f|\0003\r{\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f~\v>\v\1\n9\nz\a5\vÄ\0005\f\0=\t'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fÅ\v>\v\2\n9\nÇ\a5\vÖ\0005\fÉ\0=\t'\f4\r\3\0\18\14\2\0'\16Ñ\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fÜ\v>\v\1\n9\nÇ\a5\vâ\0005\fà\0003\rá\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fä\v>\v\2\n2\0\0ÄK\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\15BufferIcon\1\0\0\vyellow\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tÔëó \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\rprovider\15FileEncode\14separator\6 \15FileFormat\1\0\0\1\0\2\rprovider\15FileFormat\14separator\a  \nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\rlsp_warn\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\rprovider\16LinePercent\14separator\a  \rLineInfo\1\0\0\vfg_alt\1\0\0\0\1\0\0\1\4\0\0\0\0\tbold\rFileName\1\0\1\14separator\6 \rFilePath\30statusline_show_file_path\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\18hide_in_width\21buffer_not_empty\1\0\2\rprovider\rFileSize\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\14dashboard\22exclude_filetypes\vinsert\ntable\23dashboard_statline\tdoom\1\a\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\nnetrw\20short_line_list\fsection\25galaxyline.condition galaxyline.providers.buffer\29galaxyline.providers.lsp\15galaxyline\14get_color\29galaxyline.themes.colors\vconfig\21doom.core.config\15doom.utils\frequire\5ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/NTBBloodbath/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n›\n\0\0\5\0\28\0\0316\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\2B\0\2\1K\0\1\0\14diff_opts\1\0\1\rinternal\2\28current_line_blame_opts\1\0\2\ndelay\3Ë\a\rposition\beol\17watch_gitdir\1\0\2\17follow_files\2\rinterval\3Ë\a\fkeymaps\tn [c\1\2\1\0@&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0@&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\n\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\vbuffer\2\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\to ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\tx ih2:<C-U>lua require\"gitsigns\".select_hunk()<CR>\17n <leader>gS0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\fnoremap\2\17n <leader>gb0<cmd>lua require\"gitsigns\".blame_line()<CR>\17n <leader>gh2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\nsigns\1\0\4\20update_debounce\3d\18sign_priority\3\6\nnumhl\1\vlinehl\1\17changedelete\1\0\4\nnumhl\21GitSignsChangeNr\ttext\6~\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\14topdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\b‚Äæ\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vdelete\1\0\4\nnumhl\21GitSignsDeleteNr\ttext\6_\vlinehl\21GitSignsDeleteLn\ahl\19GitSignsDelete\vchange\1\0\4\nnumhl\21GitSignsChangeNr\ttext\b‚îÇ\vlinehl\21GitSignsChangeLn\ahl\19GitSignsChange\badd\1\0\0\1\0\4\nnumhl\18GitSignsAddNr\ttext\b‚îÇ\vlinehl\18GitSignsAddLn\ahl\16GitSignsAdd\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  kommentary = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/kommentary",
    url = "https://github.com/b3nj5m1n/kommentary"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nã\3\0\0\4\0\a\0\f5\0\0\0005\1\1\0=\1\2\0004\1\0\0=\1\3\0006\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\1K\0\1\0\nsetup\18lsp_signature\frequire\24extra_trigger_chars\17handler_opts\1\0\1\vborder\vsingle\1\0\17\14max_width\3x\ndebug\1\20floating_window\1\fpadding\5\17shadow_guibg\nBlack\17shadow_blend\3$\15max_height\3\f\rlog_path\24debug_log_file_path\17hi_parameter\vSearch\16hint_scheme\vString\16hint_prefix\tÓû° \16hint_enable\2\ffix_pos\1#floating_window_above_cur_line\2\vzindex\3»\1\14doc_lines\3\n\tbind\2\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  neorg = {
    config = { "\27LJ\2\nÌ\3\0\0\b\0\17\0%6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\b\0006\5\4\0009\5\5\0059\5\6\5'\a\a\0B\5\2\2>\5\1\4B\2\2\0026\3\4\0009\3\5\0039\3\t\3\18\5\2\0\a\2\n\0X\6\2Ä'\6\v\0X\a\1Ä'\6\f\0&\5\6\5B\3\2\2:\3\1\3\18\6\3\0009\4\r\3'\a\14\0B\4\3\2\15\0\4\0X\5\3Ä9\4\15\0'\6\16\0B\4\2\1K\0\1\0¡\1doom-neorg:  clang has poor compatibility compiling treesitter parsers.  We recommend using gcc instead, see issue #246 for details.  (https://github.com/NTBBloodbath/doom-nvim/issues/246)\twarn\nclang\nmatch\15 --version\5\acl\15systemlist\1\a\0\0\0\acc\bgcc\nclang\acl\bzig\aCC\vgetenv\afn\bvim\28find_executable_in_path\15doom.utils\24doom.extras.logging\frequireÊ\3\1\0\f\0\29\0*6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\24\0005\4\5\0004\5\0\0=\5\6\0045\5\b\0005\6\a\0=\6\t\5=\5\n\0044\5\0\0=\5\v\0045\5\19\0005\6\17\0005\a\f\0006\b\r\0009\b\14\b'\n\15\0\18\v\0\0B\b\3\2=\b\16\a=\a\18\6=\6\t\5=\5\20\0045\5\22\0005\6\21\0=\6\t\5=\5\23\4=\4\25\3B\1\2\0016\1\26\0009\1\27\0013\3\28\0)\4Ë\3B\1\3\1K\0\1\0\0\rdefer_fn\bvim\tload\1\0\0\18core.gtd.base\1\0\0\1\0\1\14workspace\bgtd\21core.norg.dirman\1\0\0\15workspaces\1\0\0\14doom_docs\v%s/doc\vformat\vstring\1\0\2\bgtd\16~/neorg/gtd\22default_workspace\f~/neorg\24core.norg.concealer\18core.keybinds\vconfig\1\0\0\1\0\2\21default_keybinds\2\17neorg_leader\a,o\18core.defaults\1\0\0\nsetup\nneorg\14doom_root\21doom.core.system\frequire\0" },
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n⁄\1\0\0\a\0\a\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0015\3\6\0\18\4\0\0'\6\5\0B\4\2\2\15\0\4\0X\5\0ÄB\1\2\1K\0\1\0\1\0\4\22enable_afterquote\2\rcheck_ts\2\30enable_check_bracket_line\2\21enable_moveright\2\15treesitter\nsetup\19nvim-autopairs\23is_plugin_disabled\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lua", "cmp-buffer", "cmp-path", "cmp-nvim-lsp", "cmp_luasnip" },
    config = { "\27LJ\2\n\21\0\1\2\1\0\0\3-\1\0\0008\1\0\1L\1\2\0\2¿F\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvimó\1\0\0\6\0\b\2\0276\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\2\23\0\0\0\b\0\1\0X\1\17Ä6\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\2\18\3\1\0009\1\5\1\18\4\0\0\18\5\0\0B\1\4\2\18\3\1\0009\1\6\1'\4\a\0B\1\3\2X\2\3Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\a%s\nmatch\bsub\fgetline\6.\bcol\afn\bvim\2\0˘\1\0\2\b\1\n\0\0236\2\1\0009\2\2\2'\4\3\0-\5\0\0009\a\0\1B\5\2\0029\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\0015\2\t\0009\3\6\0009\3\a\0038\2\3\2\14\0\2\0X\3\1Ä)\2\0\0=\2\b\1L\1\2\0\3¿\1\0\3\vbuffer\3\1\rnvim_lsp\3\0\tpath\3\1\bdup\tname\vsource\1\0\5\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\n[Buf]\rnvim_lua\n[Lua]\fluasnip\n[Snp]\tmenu\n%s %s\vformat\vstring\tkindç\2\0\1\6\4\n\0'-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\29Ä-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\tÄ6\1\3\0009\1\4\0019\1\5\1-\3\2\0'\5\6\0B\3\2\2'\4\a\0B\1\3\1X\1\15Ä-\1\3\0B\1\1\2\15\0\1\0X\2\tÄ6\1\3\0009\1\4\0019\1\5\1-\3\2\0'\5\b\0B\3\2\2'\4\t\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\4¿\5¿\6n\n<Tab>\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\21select_next_item\fvisibleƒ\1\0\1\6\3\b\0\27-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\17Ä-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\tÄ6\1\3\0009\1\4\0019\1\5\1-\3\2\0'\5\6\0B\3\2\2'\4\a\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\4¿\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\21select_prev_item\fvisibleC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequireú\t\1\0\14\0006\0W6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0025\2\3\0003\3\4\0003\4\5\0003\5\6\0009\6\a\0005\b\t\0005\t\b\0=\t\n\b5\t\f\0005\n\v\0=\n\r\t=\t\14\b5\t\16\0003\n\15\0=\n\17\t=\t\18\b5\t\21\0009\n\19\0009\n\20\nB\n\1\2=\n\22\t9\n\19\0009\n\23\nB\n\1\2=\n\24\t9\n\19\0009\n\25\n)\f¸ˇB\n\2\2=\n\26\t9\n\19\0009\n\25\n)\f\4\0B\n\2\2=\n\27\t9\n\19\0009\n\28\nB\n\1\2=\n\29\t9\n\19\0009\n\30\nB\n\1\2=\n\31\t9\n\19\0009\n \n5\f#\0009\r!\0009\r\"\r=\r$\fB\n\2\2=\n%\t9\n\19\0003\f&\0005\r'\0B\n\3\2=\n(\t9\n\19\0003\f)\0005\r*\0B\n\3\2=\n+\t=\t\19\b5\t-\0003\n,\0=\n.\t=\t/\b4\t\6\0005\n0\0>\n\1\t5\n1\0>\n\2\t5\n2\0>\n\3\t5\n3\0>\n\4\t5\n4\0>\n\5\t=\t5\bB\6\2\0012\0\0ÄK\0\1\0\fsources\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsnippet\vexpand\1\0\0\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\15formatting\vformat\1\0\0\0\18documentation\vborder\1\0\0\1\t\0\0\b‚ï≠\b‚îÄ\b‚ïÆ\b‚îÇ\b‚ïØ\b‚îÄ\b‚ï∞\b‚îÇ\15completion\1\0\0\1\0\1\16completeopt\"menu,menuone,preview,noinsert\nsetup\0\0\0\1\0\25\16Constructor\n Ôê£ \vMethod\n Ôö¶ \tEnum\t Ô©ó\14Interface\n Ô∞Æ \tFile\n Ôúì \vFolder\n Ôùä \rConstant\n Ô≤Ä \15EnumMember\n ÔÖù \rOperator\n Ôöî \rVariable\n Óúñ \tText\v Ôíû  \18TypeParameter\n ÔûÉ \nEvent\n ÔÉß \vStruct\n Ô≥§ \fKeyword\n Ô†ä \nClass\n Ô†ñ \14Reference\n Ôúú \nColor\n Ô£ó \fSnippet\n Ôëè \nValue\n Ô¢ü \tUnit\n Ôëµ \vModule\n Ôô® \rFunction\n Ôûî \rProperty\n Ô∞† \nField\n Ô¥≤ \fluasnip\bcmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp",
    wants = { "LuaSnip" }
  },
  ["nvim-dap"] = {
    after = { "DAPInstall.nvim", "nvim-dap-ui" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n\30\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\topen\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\nclose\31\0\0\2\1\1\0\4-\0\0\0009\0\0\0B\0\1\1K\0\1\0\1¿\ncloseê\4\1\0\a\0\30\0*6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0009\2\4\0029\2\5\0023\3\a\0=\3\6\0029\2\3\0009\2\b\0029\2\t\0023\3\n\0=\3\6\0029\2\3\0009\2\b\0029\2\v\0023\3\f\0=\3\6\0029\2\r\0015\4\15\0005\5\14\0=\5\16\0045\5\18\0005\6\17\0=\6\19\5=\5\20\0045\5\22\0005\6\21\0=\6\23\5=\5\24\0045\5\26\0005\6\25\0=\6\23\5=\5\27\0045\5\28\0=\5\29\4B\2\2\0012\0\0ÄK\0\1\0\rfloating\1\0\0\ttray\1\0\2\rposition\vbottom\tsize\3\n\1\2\0\0\trepl\fsidebar\relements\1\0\2\rposition\tleft\tsize\3(\1\5\0\0\vscopes\16breakpoints\vstacks\fwatches\rmappings\vexpand\1\0\4\topen\6o\trepl\6r\tedit\6e\vremove\6d\1\3\0\0\t<CR>\18<2-LeftMouse>\nicons\1\0\0\1\0\2\rexpanded\b‚ñæ\14collapsed\b‚ñ∏\nsetup\0\17event_exited\0\21event_terminated\vbefore\0\17dapui_config\22event_initialized\nafter\14listeners\ndapui\bdap\frequire\0" },
    load_after = {
      ["nvim-dap"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\nü\2\0\0\4\0\20\0$6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\5\0B\1\2\0025\2\b\0009\3\a\0=\3\a\0029\3\t\0=\3\t\0029\3\n\0=\3\n\0029\3\v\0=\3\v\0029\3\f\0=\3\f\0029\3\r\0=\3\r\0029\3\14\0=\3\14\0029\3\15\0=\3\15\0029\3\16\0=\3\16\0029\3\17\0=\3\17\0029\3\18\0=\3\18\0029\3\19\0=\3\19\2=\2\6\1K\0\1\0\15typescript\ash\truby\vpython\bnix\rmarkdown\blua\15javascript\thtml\bcss\bcpp\1\0\0\6c\18linters_by_ft\tlint\flinters\tdoom\vconfig\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\ní\2\0\1\4\0\b\0\0196\1\0\0'\3\1\0B\1\2\0029\1\2\1\18\3\0\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\0016\1\3\0009\1\4\1'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0007hi! LspReferenceRead cterm=underline gui=underline8hi! LspReferenceWrite cterm=underline gui=underline7hi! LspReferenceText cterm=underline gui=underline\bcmd\bvim\14on_attach\15illuminate\frequire)\0\0\4\2\1\0\6-\0\0\0\18\2\0\0009\0\0\0-\3\1\0B\0\3\1K\0\1\0\r¿\14¿\nsetupU\0\0\5\3\4\0\n-\0\0\0\18\2\0\0009\0\0\0005\3\1\0-\4\1\0=\4\2\3-\4\2\0=\4\3\3B\0\3\1K\0\1\0\r¿\5\0\6\0\14on_attach\17capabilities\1\0\0\nsetupÚ\r\1\0\23\a6\0ß\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0014\3\0\0006\4\5\0\18\6\2\0B\4\2\4X\aSÄ\18\v\b\0009\t\6\b'\f\a\0'\r\b\0B\t\4\2\18\v\t\0009\t\6\t'\f\t\0'\r\b\0B\t\4\2\18\v\t\0009\t\6\t'\f\n\0'\r\b\0B\t\4\2\18\f\b\0009\n\v\b'\r\f\0B\n\3\2\n\n\0\0X\v\aÄ6\v\r\0009\v\14\v\18\r\n\0'\14\15\0B\v\3\2\14\0\v\0X\f\tÄ-\v\0\0008\v\t\v\n\v\0\0X\v\4Ä-\v\0\0008\v\t\v\14\0\v\0X\f\1Ä+\v\0\0\18\14\b\0009\f\16\b'\15\17\0B\f\3\2\15\0\f\0X\r(Ä\n\v\0\0X\r\23Ä6\r\5\0\18\15\v\0B\r\2\4X\16\16Ä6\18\r\0009\18\18\18\18\20\17\0B\18\2\2-\19\1\0009\19\19\19\18\21\3\0\18\22\18\0B\19\3\2\v\19\1\0X\19\5Ä6\19\20\0009\19\21\19\18\21\3\0\18\22\18\0B\19\3\1E\16\3\3R\16ÓX\r\15Ä\18\15\b\0009\r\16\b'\16\22\0B\r\3\2\15\0\r\0X\14\2Ä1\2\2\0X\r\aÄ-\r\3\0009\r\23\r'\15\24\0\18\16\b\0'\17\25\0&\15\17\15B\r\2\1E\a\3\3R\a´4\4\0\0006\5\26\0-\a\0\0B\5\2\4H\b\18Ä6\n\5\0\18\f\t\0B\n\2\4X\r\fÄ-\15\1\0009\15\19\15\18\17\4\0\18\18\14\0B\15\3\2\14\0\15\0X\15\5Ä6\15\20\0009\15\21\15\18\17\4\0\18\18\14\0B\15\3\1E\r\3\3R\rÚF\b\3\3R\bÏ4\5\0\0004\6\0\0006\a\5\0\18\t\4\0B\a\2\4X\nFÄ9\f\27\0\18\14\v\0B\f\2\3\15\0\f\0X\14@Ä-\14\1\0009\14\19\14\18\16\3\0\18\17\v\0B\14\3\2\14\0\14\0X\14\21Ä\18\16\r\0009\14\28\rB\14\2\2\15\0\14\0X\0154Ä6\14\20\0009\14\21\14\18\16\6\0\18\17\v\0B\14\3\1\18\16\r\0009\14\29\rB\14\2\1-\14\3\0009\14\30\14'\16\31\0\18\17\v\0'\18 \0&\16\18\16B\14\2\1X\14$Ä9\14!\r\a\14\"\0X\14\3Ä-\14\4\0\14\0\14\0X\15\5Ä5\14#\0-\15\5\0=\15$\14-\15\6\0=\15%\14\18\17\r\0009\15&\r3\18'\0B\15\3\1\18\17\r\0009\15\28\rB\15\2\2\14\0\15\0X\15\15Ä6\15\20\0009\15\21\15\18\17\5\0\18\18\v\0B\15\3\1\18\17\r\0009\15(\rB\15\2\1-\15\3\0009\15\30\15'\17)\0\18\18\v\0'\19 \0&\17\19\17B\15\2\0012\14\0Ä2\f\0ÄE\n\3\3R\n∏6\a\5\0\18\t\3\0B\a\2\4X\n%Ä-\f\1\0009\f\19\f\18\14\4\0\18\15\v\0B\f\3\2\14\0\f\0X\f\30Ä9\f\27\0\18\14\v\0B\f\2\3\15\0\f\0X\14\24Ä\18\16\r\0009\14&\r3\17*\0B\14\3\1\18\16\r\0009\14\28\rB\14\2\2\14\0\14\0X\14\15Ä6\14\20\0009\14\21\14\18\16\5\0\18\17\v\0B\14\3\1\18\16\r\0009\14(\rB\14\2\1-\14\3\0009\14\30\14'\16)\0\18\17\v\0'\18 \0&\16\18\16B\14\2\0012\f\0ÄE\n\3\3R\nŸ-\a\2\0\15\0\a\0X\b\vÄ6\a\0\0'\t+\0B\a\2\0029\a,\a9\a-\a5\t.\0-\n\5\0=\n$\t-\n\6\0=\n%\tB\a\2\0016\a/\0\18\t\5\0B\a\2\2\v\a\0\0X\a\5Ä6\a/\0\18\t\6\0B\a\2\2\n\a\0\0X\a\26Ä'\a0\0\21\b\5\0)\t\0\0\1\t\b\0X\t\5Ä\18\t\a\0'\n1\0\18\v\b\0'\f2\0&\a\f\t\21\t\6\0)\n\0\0\1\n\t\0X\n\5Ä\18\n\a\0'\v3\0\18\f\b\0'\r2\0&\a\r\n\18\n\a\0'\v4\0&\a\v\n6\n\r\0009\n5\n\18\f\a\0B\n\2\1K\0\1\0\3¿\1¿\4Ä\0¿\a¿\5¿\6Ä\vnotify+Use :LspInstallInfo to check status.  \18Uninstalling \r LSPs.  \16Installing \vDoom: \tnext\1\0\0\nsetup\vmetals\14lspconfig\0+doom-lsp-installer: Installing server \finstall\0\ron_ready\14on_attach\17capabilities\1\0\0\16sumneko_lua\tname\6.-doom-lsp-installer: Uninstalling server \tinfo\14uninstall\17is_installed\15get_server\npairs;\" does not have an LSP, please remove the \"+lsp\" flag.\19The language \"\nerror\nscala\vinsert\ntable\14has_value\ttrim\t+lsp\tfind\6,\nsplit\bvim\17+lsp%((.+)%)\nmatch\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\vipairs\nlangs\fmodules\29doom.core.config.modules\23nvim-lsp-installer\frequire\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\b¿œ\17\1\0\15\0à\1\0Ω\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\2\3\0025\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\0042\0035\0043\0=\0044\0035\0045\0=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\0035\4M\0=\4N\0035\4O\0=\4P\0035\4Q\0=\4R\0035\4S\0=\4T\3+\4\1\0006\5L\0009\5U\0059\5V\0059\5W\5B\5\1\0029\6X\0059\6Y\0069\6Z\6+\a\2\0=\a[\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a\\\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a]\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a^\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a_\0069\6X\0059\6Y\0069\6Z\0065\ab\0005\ba\0=\bc\a=\a`\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\ad\0069\6X\0059\6Y\0069\6Z\0065\ag\0005\bf\0=\bh\a=\ae\0069\6X\0055\aj\0005\bm\0005\tl\0005\nk\0=\nc\t=\tn\b=\bo\a=\ai\6+\6\0\0\18\a\2\0'\tp\0B\a\2\2\14\0\a\0X\a\5Ä6\aq\0009\ar\a\15\0\a\0X\b\1Ä3\6s\0006\a\0\0'\tt\0B\a\2\0029\au\a5\tÉ\0005\n\0005\v}\0005\fw\0005\rv\0=\rx\f5\rz\0005\14y\0=\14{\r=\r|\f=\f~\v=\vÄ\n=\5Å\n=\6Ç\n=\nÑ\tB\a\2\0023\bÖ\0006\tL\0009\tÜ\t3\vá\0)\f2\0B\t\3\0012\0\0ÄK\0\1\0\0\rdefer_fn\0\14lspconfig\1\0\0\14on_attach\17capabilities\rsettings\1\0\0\bLua\1\0\0\16diagnostics\fglobals\1\0\0\1\2\0\0\19packer_plugins\14workspace\1\0\0\1\0\1\20preloadFileSize\3»\1\nsetup\flua-dev\0\19vim-illuminate\19packer_plugins\16illuminated\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\1\t\0\0\5\rquickfix\rrefactor\21refactor.extract\20refactor.inline\21refactor.rewrite\vsource\27source.organizeImports\1\0\1\24dynamicRegistration\1\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\vconfig\1\3\0\0\vjsonls\vyamlls\tyaml\1\2\0\0\vyamlls\bxml\1\2\0\0\flemminx\bvue\1\2\0\0\nvuels\bvim\1\2\0\0\nvimls\15typescript\1\2\0\0\rtsserver\vsvelte\1\2\0\0\vsvelte\trust\1\2\0\0\18rust_analyzer\truby\1\2\0\0\15solargraph\vpython\1\2\0\0\fpyright\15powershell\1\2\0\0\18powershell_es\bphp\1\2\0\0\rphpactor\nocaml\1\2\0\0\rocamells\nlatex\1\2\0\0\vtexlab\vkotlin\1\2\0\0\27kotlin_language_server\15javascript\1\2\0\0\rtsserver\tjava\1\2\0\0\njdtls\njson5\1\2\0\0\vjsonls\tjson\1\2\0\0\vjsonls\vhaskel\1\2\0\0\bhls\thtml\1\2\0\0\thtml\vgroovy\1\2\0\0\rgroovyls\fgraphql\1\2\0\0\fgraphql\ago\1\2\0\0\ngopls\ffortran\1\2\0\0\vfortls\nember\1\2\0\0\nember\belm\1\2\0\0\nelmls\velixer\1\2\0\0\relixerls\bdot\1\2\0\0\ndotls\15dockerfile\1\2\0\0\rdockerls\fclojure\1\2\0\0\16clojure_lsp\bcss\1\2\0\0\ncssls\ncmake\1\2\0\0\ncmake\bcpp\1\2\0\0\vclangd\6c\1\2\0\0\vclangd\fc_sharp\1\2\0\0\14omnisharp\tbash\1\2\0\0\vbashls\fangular\1\2\0\0\14angularls\fansible\1\2\0\0\14ansiblels\blua\1\0\0\1\2\0\0\16sumneko_lua\23is_plugin_disabled\15doom.utils\24doom.extras.logging\frequire\0" },
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-mapper"] = {
    config = { "\27LJ\2\n›\1\0\0\n\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\0025\4\6\0006\5\a\0009\5\b\5'\a\t\0\18\b\0\0\18\t\1\0B\5\4\2=\5\n\4B\2\2\1K\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\2\vno_map\2\20action_on_enter\fexecute\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0" },
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/nvim-mapper",
    url = "https://github.com/lazytanuki/nvim-mapper"
  },
  ["nvim-tree-docs"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-tree-docs",
    url = "https://github.com/nvim-treesitter/nvim-tree-docs"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeClipboard", "NvimTreeClose", "NvimTreeFindFile", "NvimTreeOpen", "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\2\nŒ\22\0\0\f\0{\0£\0026\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0016\2\5\0009\2\6\0025\3\b\0=\3\a\0026\2\5\0009\2\6\2)\3\1\0=\3\t\0026\2\5\0009\2\6\0029\3\v\0009\3\f\3=\3\n\0026\2\5\0009\2\6\2)\3\1\0=\3\r\0026\2\5\0009\2\6\2)\3\1\0=\3\14\0026\2\5\0009\2\6\2'\3\16\0=\3\15\0026\2\5\0009\2\6\2)\3\1\0=\3\17\0026\2\5\0009\2\6\2)\3\1\0=\3\18\0026\2\5\0009\2\6\2)\3Ù\1=\3\19\0026\2\5\0009\2\6\0025\3\22\0005\4\21\0=\4\23\0035\4\24\0=\4\25\3=\3\20\0026\2\5\0009\2\6\0025\3\27\0=\3\26\0026\2\5\0009\2\6\0025\3\29\0=\3\28\0026\2\5\0009\2\6\0025\3\31\0005\4 \0=\4!\0035\4\"\0=\4#\0035\4%\0009\5\v\0009\5$\5=\5&\0049\5\v\0009\5'\5=\5(\0049\5\v\0009\5)\5=\5*\0049\5\v\0009\5+\5=\5,\4=\4-\3=\3\30\0026\2\0\0'\4.\0B\2\2\0029\2/\0025\0040\0004\5\0\0=\0051\0045\0054\0006\6\0\0'\b2\0B\6\2\0029\0063\6'\b-\0B\6\2\2\15\0\6\0X\a\0Ä5\0065\0009\a\v\0009\a$\a=\a&\0069\a\v\0009\a'\a=\a(\0069\a\v\0009\a)\a=\a*\0069\a\v\0009\a+\a=\a,\6=\0066\5=\0057\0045\0058\0004\6\0\0=\0069\5=\5:\0045\5;\0004\6\0\0=\6<\5=\5=\0045\5?\0009\6\v\0009\6>\6=\6@\0059\6\v\0009\6A\6\15\0\6\0X\a\2Ä'\6B\0X\a\1Ä'\6C\0=\6D\0055\6E\0004\a\24\0005\bG\0005\tF\0=\tH\b\18\t\1\0'\vI\0B\t\2\2=\tJ\b>\b\1\a5\bL\0005\tK\0=\tH\b\18\t\1\0'\vM\0B\t\2\2=\tJ\b>\b\2\a5\bN\0\18\t\1\0'\vO\0B\t\2\2=\tJ\b>\b\3\a5\bP\0\18\t\1\0'\vQ\0B\t\2\2=\tJ\b>\b\4\a5\bR\0\18\t\1\0'\vS\0B\t\2\2=\tJ\b>\b\5\a5\bT\0\18\t\1\0'\vU\0B\t\2\2=\tJ\b>\b\6\a5\bV\0\18\t\1\0'\vU\0B\t\2\2=\tJ\b>\b\a\a5\bW\0\18\t\1\0'\vX\0B\t\2\2=\tJ\b>\b\b\a5\bY\0\18\t\1\0'\vZ\0B\t\2\2=\tJ\b>\b\t\a5\b[\0\18\t\1\0'\v\\\0B\t\2\2=\tJ\b>\b\n\a5\b]\0\18\t\1\0'\v^\0B\t\2\2=\tJ\b>\b\v\a5\b_\0\18\t\1\0'\v`\0B\t\2\2=\tJ\b>\b\f\a5\ba\0\18\t\1\0'\vb\0B\t\2\2=\tJ\b>\b\r\a5\bc\0\18\t\1\0'\vd\0B\t\2\2=\tJ\b>\b\14\a5\be\0\18\t\1\0'\vf\0B\t\2\2=\tJ\b>\b\15\a5\bg\0\18\t\1\0'\vh\0B\t\2\2=\tJ\b>\b\16\a5\bi\0\18\t\1\0'\vj\0B\t\2\2=\tJ\b>\b\17\a5\bk\0\18\t\1\0'\vl\0B\t\2\2=\tJ\b>\b\18\a5\bm\0\18\t\1\0'\vn\0B\t\2\2=\tJ\b>\b\19\a5\bo\0\18\t\1\0'\vp\0B\t\2\2=\tJ\b>\b\20\a5\bq\0\18\t\1\0'\vr\0B\t\2\2=\tJ\b>\b\21\a5\bs\0\18\t\1\0'\vt\0B\t\2\2=\tJ\b>\b\22\a5\bu\0\18\t\1\0'\vv\0B\t\2\2=\tJ\b>\b\23\a=\aw\6=\6x\5=\5y\4B\2\2\0016\2\5\0009\2z\0026\4\0\0'\6.\0B\4\2\0029\4^\4)\5\25\0B\2\3\1K\0\1\0\rdefer_fn\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\vtabnew\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-x>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\4\0\0\t<CR>\19<2-RightMouse>\n<C-]>\acb\tedit\bkey\1\0\0\1\3\0\0\6o\18<2-LeftMouse>\1\0\1\16custom_only\1\tside\tleft\nright\19explorer_right\nwidth\1\0\1\16auto_resize\2\18sidebar_width\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\16diagnostics\nicons\1\0\0\1\0\1\venable\2\23is_plugin_disabled\15doom.utils\23ignore_ft_on_setup\1\0\a\17hijack_netrw\2\18disable_netrw\1\15auto_close\1\15update_cwd\2\18hijack_cursor\2\16open_on_tab\2\18open_on_setup\1\nsetup\14nvim-tree\blsp\nerror\14lsp_error\fwarning\rlsp_warn\tinfo\rlsp_info\thint\1\0\0\rlsp_hint\vfolder\1\0\b\fsymlink\bÔíÇ\topen\bÓóæ\fdefault\bÓóø\17arrow_closed\bÔë†\nempty\bÔÑî\15arrow_open\bÔëº\15empty_open\bÔÑï\17symlink_open\bÓóæ\bgit\1\0\a\14untracked\bÔÑ®\frenamed\bÔëö\fdeleted\bÔëò\runmerged\bÓúß\fignored\b‚óå\vstaged\bÔëô\runstaged\bÔëó\1\0\2\fsymlink\bÔíÅ\fdefault\bÓòí\20nvim_tree_icons\1\0\4\nfiles\3\1\18folder_arrows\3\0\bgit\3\1\ffolders\3\1\25nvim_tree_show_icons\1\0\3\rMAKEFILE\3\1\rMakefile\3\1\14README.md\3\1\28nvim_tree_special_files\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\4\0\0\vnotify\vpacker\aqf$nvim_tree_window_picker_exclude\27nvim_tree_refresh_wait\26nvim_tree_group_empty\27nvim_tree_add_trailing\a:~#nvim_tree_root_folder_modifier\24nvim_tree_gitignore\21nvim_tree_git_hl\16show_hidden\tdoom\28nvim_tree_hide_dotfiles\29nvim_tree_indent_markers\1\5\0\0\t.git\17node_modules\v.cache\16__pycache__\21nvim_tree_ignore\6g\bvim\23nvim_tree_callback\21nvim-tree.config\vconfig\21doom.core.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-context-commentstring", "nvim-ts-autotag", "nvim-tree-docs", "neorg" },
    config = { "\27LJ\2\n÷\2\0\1\f\1\14\0:4\1\0\0006\2\0\0\18\4\0\0B\2\2\4X\5'Ä\a\6\1\0X\a\16Ä6\a\2\0009\a\3\a\18\t\1\0'\n\4\0B\a\3\0016\a\2\0009\a\3\a\18\t\1\0'\n\5\0B\a\3\0016\a\2\0009\a\3\a\18\t\1\0'\n\6\0B\a\3\1X\a\21Ä\18\t\6\0009\a\a\6'\n\b\0'\v\t\0B\a\4\2\18\t\a\0009\a\a\a'\n\n\0'\v\t\0B\a\4\2\18\t\a\0009\a\a\a'\n\v\0'\v\t\0B\a\4\2\18\6\a\0006\a\2\0009\a\3\a\18\t\1\0\18\n\6\0B\a\3\1E\5\3\3R\5◊-\2\0\0\18\4\1\0'\5\f\0B\2\3\2\15\0\2\0X\3\5Ä6\2\2\0009\2\3\2\18\4\1\0'\5\r\0B\2\3\1L\1\2\0\0¿\btsx\15typescript\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\ttoml\tyaml\tjson\vinsert\ntable\vconfig\vipairsÍ\3\0\0\b\0\17\0%6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\b\0006\5\4\0009\5\5\0059\5\6\5'\a\a\0B\5\2\2>\5\1\4B\2\2\0026\3\4\0009\3\5\0039\3\t\3\18\5\2\0\a\2\n\0X\6\2Ä'\6\v\0X\a\1Ä'\6\f\0&\5\6\5B\3\2\2:\3\1\3\18\6\3\0009\4\r\3'\a\14\0B\4\3\2\15\0\4\0X\5\3Ä9\4\15\0'\6\16\0B\4\2\1K\0\1\0æ\1doom-treesitter:  clang has poor compatibility compiling treesitter parsers.  We recommend using gcc, see issue #246 for details.  (https://github.com/NTBBloodbath/doom-nvim/issues/246)\twarn\nclang\nmatch\15 --version\5\acl\15systemlist\1\a\0\0\0\acc\bgcc\nclang\acl\bzig\aCC\vgetenv\afn\bvim\28find_executable_in_path\15doom.utils\24doom.extras.logging\frequire»\a\1\0\f\0-\0V6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\3\0B\1\2\0029\1\4\0016\2\0\0'\4\1\0B\2\2\0029\2\5\0023\3\6\0006\4\0\0'\6\a\0B\4\2\0029\4\b\4B\4\1\0025\5\r\0005\6\n\0005\a\v\0=\a\f\6=\6\14\5=\5\t\0046\5\15\0\15\0\5\0X\6\tÄ6\5\15\0009\5\16\5\15\0\5\0X\6\5Ä6\5\17\0009\5\18\0059\a\19\1'\b\t\0B\5\3\0016\5\15\0\15\0\5\0X\6\tÄ6\5\15\0009\5\20\5\15\0\5\0X\6\5Ä6\5\17\0009\5\18\0059\a\19\1'\b\21\0B\5\3\0016\5\0\0'\a\22\0B\5\2\0029\5\23\0055\a\24\0\18\b\3\0009\n\19\1B\b\2\2=\b\25\a5\b\26\0=\b\27\a5\b\29\0\18\t\2\0'\v\28\0B\t\2\2\15\0\t\0X\n\0Ä=\b\28\a5\b\30\0=\b\31\a5\b \0=\b!\a5\b\"\0=\b#\a5\b$\0=\b%\a5\b&\0005\t'\0=\t(\b=\b)\aB\5\2\0016\5*\0009\5+\0053\a,\0)\bË\3B\5\3\0012\0\0ÄK\0\1\0\0\rdefer_fn\bvim\fautotag\14filetypes\1\t\0\0\thtml\15javascript\20javascriptreact\15typescript\20typescriptreact\vsvelte\bvue\rmarkdown\1\0\1\venable\2\26context_commentstring\1\0\1\venable\2\14tree_docs\1\0\1\venable\2\15playground\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\venable\2\14autopairs\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\nsetup\28nvim-treesitter.configs\thttp\14rest.nvim\nlangs\vinsert\ntable\nneorg\19packer_plugins\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\burl3https://github.com/nvim-neorg/tree-sitter-norg\vbranch\tmain\tnorg\23get_parser_configs\28nvim-treesitter.parsers\0\23is_plugin_disabled\fmodules\29doom.core.config.modules\14has_value\15doom.utils\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\nÉ\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = true,
    path = "/home/jan/.local/share/nvim/site/pack/packer/start/persistence.nvim",
    url = "https://github.com/folke/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20range-highlight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/range-highlight.nvim",
    url = "https://github.com/winston0410/range-highlight.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\nÜ\v\0\0\n\0008\0\\6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\0044\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0005\a\b\0=\a\t\0065\a\n\0=\a\v\6=\6\f\0056\6\0\0'\b\r\0B\6\2\0029\6\14\6=\6\15\0055\6\16\0=\6\17\0056\6\0\0'\b\r\0B\6\2\0029\6\18\6=\6\19\0054\6\0\0=\6\20\0055\6\21\0=\6\22\0055\6\23\0=\6\24\0056\6\0\0'\b\25\0B\6\2\0029\6\26\0069\6\27\6=\6\28\0056\6\0\0'\b\25\0B\6\2\0029\6\29\0069\6\27\6=\6\30\0056\6\0\0'\b\25\0B\6\2\0029\6\31\0069\6\27\6=\6 \0056\6\0\0'\b\25\0B\6\2\0029\6!\6=\6!\0055\6/\0005\a#\0009\b\"\1=\b$\a9\b%\1=\b&\a9\b'\0019\t(\1 \b\t\b=\b)\a9\b*\1=\b+\a9\b,\0019\t-\1 \b\t\b=\b.\a=\a0\0065\a1\0009\b\"\1=\b$\a9\b%\1=\b&\a9\b'\0019\t(\1 \b\t\b=\b)\a=\a2\6=\0063\5=\0055\4B\2\2\0019\0026\0'\0047\0B\2\2\1K\0\1\0\vmapper\19load_extension\rdefaults\1\0\0\rmappings\6n\1\0\0\6i\1\0\0\t<CR>\vcenter\19select_default\14<Leader>f\nclose\n<C-q>\16open_qflist\25smart_send_to_qflist\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\27buffer_previewer_maker\21qflist_previewer\22vim_buffer_qflist\19grep_previewer\23vim_buffer_vimgrep\19file_previewer\bnew\19vim_buffer_cat\25telescope.previewers\fset_env\1\0\1\14COLORTERM\14truecolor\16borderchars\1\t\0\0\b‚îÄ\b‚îÇ\b‚îÄ\b‚îÇ\b‚ï≠\b‚ïÆ\b‚ïØ\b‚ï∞\vborder\19generic_sorter\29get_generic_fuzzy_sorter\25file_ignore_patterns\1\4\0\0\f^%.git/\19^node_modules/\18^__pycache__/\16file_sorter\19get_fuzzy_file\22telescope.sorters\18layout_config\15horizontal\1\0\2\18preview_width\4≥ÊÃô\3≥Êåˇ\3\vmirror\1\rvertical\1\0\1\vmirror\1\1\0\3\20prompt_position\vbottom\19preview_cutoff\3x\nwidth\4\0ÄÄ†ˇ\3\17find_command\1\0\n\ruse_less\2\19color_devicons\2\20scroll_strategy\ncycle\rwinblend\3\0\20selection_caret\6 \18prompt_prefix\v ÔÄÇ  \20layout_strategy\15horizontal\21sorting_strategy\15descending\23selection_strategy\nreset\17initial_mode\vinsert\1\a\0\0\arg\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\nsetup\22telescope.actions\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble", "TroubleClose", "TroubleRefresh", "TroubleToggle" },
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-illuminate"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nã#\0\0\b\0«\1\0®\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\1+\3\0\0=\3\4\0029\2\5\0005\4\t\0005\5\6\0005\6\a\0=\6\b\5=\5\n\0045\5\v\0=\5\3\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\17\0005\6\16\0=\6\18\5=\5\19\0045\5\21\0005\6\20\0=\6\22\5=\5\23\0045\5\24\0=\5\25\4B\2\2\0015\2\27\0005\3\26\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0005\4,\0=\4-\0035\4.\0=\4/\0035\0040\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\3=\0031\0025\3<\0005\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\0041\0035\4B\0=\4-\0035\4C\0=\4&\0035\4D\0005\5E\0=\0051\0045\5F\0=\5-\0045\5G\0=\5H\0045\5I\0=\5J\0045\5K\0=\5L\4=\4M\0035\4N\0005\5O\0=\5P\0045\5Q\0=\5>\0045\5R\0=\5M\0045\5S\0=\5T\0045\5U\0=\5V\0045\5W\0=\5@\4=\4T\3=\3-\0025\3X\0005\4Y\0=\0041\0035\4Z\0=\4-\0035\4[\0=\4M\0035\4\\\0=\4>\0035\4]\0=\4^\0035\4_\0=\4@\0035\4`\0=\4a\0035\4b\0=\4L\0035\4c\0=\4T\3=\3M\0025\3d\0005\4e\0=\4-\0035\4f\0=\0045\0035\4g\0=\4/\0035\4h\0=\4H\0035\4i\0=\4@\0035\4j\0=\4k\0035\4l\0=\4a\3=\3/\0025\3m\0005\4n\0=\4o\0035\4p\0=\4T\0035\4q\0=\4;\0035\4r\0=\4s\0035\4t\0=\4L\0035\4u\0=\4^\0035\4v\0=\4a\0035\4w\0=\4@\0035\4x\0=\4&\0035\4y\0=\0041\0035\4z\0=\4{\0035\4|\0=\4-\3=\0037\0025\3}\0005\4~\0=\4-\0035\4\0=\4Ä\0035\4Å\0=\4>\0035\4Ç\0=\4;\0035\4É\0=\4L\0035\4Ñ\0=\4s\3=\3;\0025\3Ö\0005\4Ü\0=\4V\0035\4á\0=\4k\0035\4à\0=\4@\3=\3V\0025\3â\0005\4ä\0=\0047\0035\4ã\0=\0041\0035\4å\0=\4L\0035\4ç\0=\4&\0035\4é\0=\4(\3=\3L\0025\3è\0005\4ê\0=\0041\0035\4ë\0=\4-\0035\4í\0=\0047\0035\4ì\0=\4>\0035\4î\0=\0045\0035\4ï\0=\4L\0035\4ñ\0=\4ó\3=\3H\0025\3ò\0005\4ô\0=\4k\0035\4ö\0=\4M\0035\4õ\0=\4ú\0035\4ù\0=\4û\0035\4ü\0=\4†\0035\4°\0=\4&\0035\4¢\0=\4£\0035\4§\0=\4T\0035\4•\0=\4¶\0035\4ß\0=\4®\0035\4©\0=\4™\0035\4´\0=\4¨\0035\4≠\0=\4Æ\0035\4Ø\0=\4∞\0035\4±\0=\4L\0035\4≤\0=\4*\3=\3k\0025\3≥\0005\4¥\0=\0041\0035\4µ\0=\4M\0035\4∂\0=\4J\0035\4∑\0=\4@\0035\4∏\0=\4(\0035\4π\0=\4L\0035\4∫\0=\4H\3=\3o\0025\3ª\0005\4º\0=\4P\0035\4Ω\0=\4£\0035\4æ\0=\4¶\0035\4ø\0=\4;\0035\4¿\0=\4H\3=\3£\0026\3\0\0'\5¡\0B\3\2\0029\3¬\3\18\4\3\0'\6√\0B\4\2\2\14\0\4\0X\4\3Ä9\4H\0025\5ƒ\0=\5;\0049\4≈\0\18\6\2\0005\a∆\0B\4\3\1K\0\1\0\1\0\1\vprefix\r<leader>\rregister\1\2\0\0\14autopairs\14autopairs\23is_plugin_disabled\15doom.utils\1\2\0\0\16jump to tag\1\2\0\0\18pop tag stack\1\2\0\0\17jump forward\1\2\0\0\14jump back\1\2\0\0\19Alternate file\1\0\1\tname\v+jumps\1\2\0\0\rTerminal\1\2\0\0\fSymbols\1\2\0\0\fMinimap\1\2\0\0\24Ranger File Browser\1\2\0\0\18Tree Explorer\1\2\0\0\17Start screen\1\2\0\0\18Debugging UI \1\0\1\tname\n+open\1\2\0\0\23Split window right\1\2\0\0\23Split window below\6=\1\2\0\0\19Balance window\6K\1\2\0\0\21Expand window up\6L\1\2\0\0\24Expand window right\6J\1\2\0\0\24Expand window below\6H\1\2\0\0\23Expand window left\6k\1\2\0\0\14Window up\1\2\0\0\17Window right\6j\1\2\0\0\17Window below\1\2\0\0\16Window left\0062\1\2\0\0\26Layout double columns\6|\1\2\0\0\23Split window right\6-\1\2\0\0\23Split window below\1\2\0\0\18Delete window\1\2\0\0\17Other window\1\0\1\tname\r+windows\6x\1\2\0\0\22syntax/treesetter\1\2\0\0\nspell\1\2\0\0\vnumber\1\2\0\0\vindent\1\2\0\0\15signcolumn\1\2\0\0\15completion\1\2\0\0\15background\1\0\1\tname\v+tweak\1\2\0\0\17Jump to mark\1\2\0\0\20Command history\1\2\0\0\16Goto symbol\1\2\0\0\vBuffer\1\2\0\0\tGrep\1\0\1\tname\f+search\1\2\0\0%Restore previously saved session\1\2\0\0\18Save and quit\1\2\0\0\tQuit\1\0\1\tname\19+quit/sessions\1\2\0\0\19Plugins status\1\2\0\0\22Sync your plugins\1\2\0\0000Profile the time taken loading your plugins\1\2\0\0\28Install missing plugins\6C\1\2\0\0!Compile your plugins changes\1\2\0\0%Clean disabled or unused plugins\1\0\1\tname\r+plugins\1\2\0\0\fCommits\6B\1\2\0\0\rBranches\1\2\0\0\15Blame line\1\2\0\0\17Preview hunk\1\2\0\0\15Reset hunk\1\2\0\0\17Reset buffer\1\2\0\0\20Undo stage hunk\1\2\0\0\vStatus\6S\1\2\0\0\15Stage hunk\1\2\0\0\tPush\1\2\0\0\tPull\6o\1\2\0\0\17Open LazyGit\1\0\1\tname\t+git\1\2\0\0'Re-open file with sudo permissions\6w\1\2\0\0%Write file with sudo permissions\1\2\0\0\26Recently opened files\1\2\0\0\14Help tags\1\2\0\0\15Find files\1\2\0\0 Create a new unnamed buffer\1\2\0\0\30Edit Neovim configuration\1\0\1\tname\n+file\1\2\0\0 Reload user custom settings\1\2\0\0\23Change colorscheme\6R\1\2\0\0\24Create crash report\1\2\0\0\31Rollback Doom Nvim version\6u\1\2\0\0\21Update Doom Nvim\1\2\0\0)Open Doom Nvim information dashboard\1\2\0\0!Open Doom Nvim documentation\1\2\0\0&Edit your Doom Nvim configuration\1\2\0\0\26Show Doom keybindings\1\0\1\tname\n+doom\1\2\0\0\31Rename symbol under cursor\6q\1\2\0\0#Diagnostics into location list\6l\1\2\0\0\26Show line diagnostics\1\2\0\0\25Show type definition\1\2\0\0\rLsp info\6a\1\2\0\0\17Code actions\1\0\1\tname\t+lsp\6d\6s\1\2\0\0\23Evaluate selection\6e\1\2\0\0\31Evaluate word under cursor\6t\1\2\0\0\28Terminate debug session\1\2\0\0(Start (or continue) a debug session\1\2\0\0&Toggle breakpoint on current line\1\0\1\tname\v+debug\1\2\0\0?Run restclient on the line that the cursor is currently on\1\2\0\0\28Compile and run project\1\2\0\0\20Compile project\6r\1\2\0\0\21Run current file\6i\1\2\0\0\17Start a REPL\1\0\1\tname\n+code\6p\1\2\0\0\20Previous buffer\6[\1\2\0\0\20Previous buffer\6g\1\2\0\0\16Goto buffer\6n\1\2\0\0\16Next buffer\6]\1\2\0\0\16Next buffer\6b\1\2\0\0\27Switch to other buffer\6f\1\2\0\0\18Format buffer\6c\1\2\0\0\25Close current buffer\1\0\1\tname\r+buffers\6v\1\2\0\0\tSave\6m\1\2\0\0\tSave\6h\1\2\0\0\fManpage\6:\1\2\0\0\20Command history\6/\1\2\0\0\18Search a word\6,\1\2\0\0\18Switch buffer\6.\1\2\0\0\17Browse files\6`\1\0\0\1\2\0\0\14Find file\vhidden\1\t\0\0\r<silent>\n<Cmd>\n<cmd>\v<Plug>\tcall\blua\a^:\a^ \vlayout\vheight\1\0\2\nalign\tleft\fspacing\3\3\1\0\2\bmin\3\1\bmax\3\n\vwindow\fpadding\1\0\1\vborder\vsingle\1\5\0\0\3\0\3\0\3\0\3\0\15key_labels\1\0\3\n<tab>\bTAB\t<cr>\bRET\f<space>\bSPC\nicons\1\0\3\ngroup\6+\14separator\b‚ûú\15breadcrumb\a¬ª\1\0\n\azf\16Create fold\6>\17Indent right\6!#Filter though external program\6y\16Yank (copy)\6c\vChange\t<lt>\16Indent left\agU\14Uppercase\6d\vDelete\agu\14Lowercase\ag~\16Toggle case\fplugins\1\0\3\14show_help\2\rtriggers\tauto\19ignore_missing\2\fpresets\1\0\a\bnav\2\fwindows\2\fmotions\2\17text_objects\2\6g\2\14operators\1\6z\2\1\0\2\nmarks\1\14registers\1\nsetup\agc\14operators\30which-key.plugins.presets\14which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/jan/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmd%-parser"] = "cmd-parser.nvim",
  ["^lint"] = "nvim-lint",
  ["^lua%-dev"] = "lua-dev.nvim",
  ["^neogit"] = "neogit",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^plenary"] = "plenary.nvim",
  ["^popup"] = "popup.nvim",
  ["^telescope"] = "telescope.nvim",
  aniseed = "aniseed"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-illuminate
time([[Setup for vim-illuminate]], true)
try_loadstring("\27LJ\2\n|\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\t\0\0\thelp\14dashboard\vpacker\tnorg\rDoomInfo\rNvimTree\fOutline\15toggleterm\27Illuminate_ftblacklist\6g\bvim\0", "setup", "vim-illuminate")
time([[Setup for vim-illuminate]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\ní\2\0\1\4\0\b\0\0196\1\0\0'\3\1\0B\1\2\0029\1\2\1\18\3\0\0B\1\2\0016\1\3\0009\1\4\1'\3\5\0B\1\2\0016\1\3\0009\1\4\1'\3\6\0B\1\2\0016\1\3\0009\1\4\1'\3\a\0B\1\2\1K\0\1\0007hi! LspReferenceRead cterm=underline gui=underline8hi! LspReferenceWrite cterm=underline gui=underline7hi! LspReferenceText cterm=underline gui=underline\bcmd\bvim\14on_attach\15illuminate\frequire)\0\0\4\2\1\0\6-\0\0\0\18\2\0\0009\0\0\0-\3\1\0B\0\3\1K\0\1\0\r¿\14¿\nsetupU\0\0\5\3\4\0\n-\0\0\0\18\2\0\0009\0\0\0005\3\1\0-\4\1\0=\4\2\3-\4\2\0=\4\3\3B\0\3\1K\0\1\0\r¿\5\0\6\0\14on_attach\17capabilities\1\0\0\nsetupÚ\r\1\0\23\a6\0ß\0026\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0019\2\4\0014\3\0\0006\4\5\0\18\6\2\0B\4\2\4X\aSÄ\18\v\b\0009\t\6\b'\f\a\0'\r\b\0B\t\4\2\18\v\t\0009\t\6\t'\f\t\0'\r\b\0B\t\4\2\18\v\t\0009\t\6\t'\f\n\0'\r\b\0B\t\4\2\18\f\b\0009\n\v\b'\r\f\0B\n\3\2\n\n\0\0X\v\aÄ6\v\r\0009\v\14\v\18\r\n\0'\14\15\0B\v\3\2\14\0\v\0X\f\tÄ-\v\0\0008\v\t\v\n\v\0\0X\v\4Ä-\v\0\0008\v\t\v\14\0\v\0X\f\1Ä+\v\0\0\18\14\b\0009\f\16\b'\15\17\0B\f\3\2\15\0\f\0X\r(Ä\n\v\0\0X\r\23Ä6\r\5\0\18\15\v\0B\r\2\4X\16\16Ä6\18\r\0009\18\18\18\18\20\17\0B\18\2\2-\19\1\0009\19\19\19\18\21\3\0\18\22\18\0B\19\3\2\v\19\1\0X\19\5Ä6\19\20\0009\19\21\19\18\21\3\0\18\22\18\0B\19\3\1E\16\3\3R\16ÓX\r\15Ä\18\15\b\0009\r\16\b'\16\22\0B\r\3\2\15\0\r\0X\14\2Ä1\2\2\0X\r\aÄ-\r\3\0009\r\23\r'\15\24\0\18\16\b\0'\17\25\0&\15\17\15B\r\2\1E\a\3\3R\a´4\4\0\0006\5\26\0-\a\0\0B\5\2\4H\b\18Ä6\n\5\0\18\f\t\0B\n\2\4X\r\fÄ-\15\1\0009\15\19\15\18\17\4\0\18\18\14\0B\15\3\2\14\0\15\0X\15\5Ä6\15\20\0009\15\21\15\18\17\4\0\18\18\14\0B\15\3\1E\r\3\3R\rÚF\b\3\3R\bÏ4\5\0\0004\6\0\0006\a\5\0\18\t\4\0B\a\2\4X\nFÄ9\f\27\0\18\14\v\0B\f\2\3\15\0\f\0X\14@Ä-\14\1\0009\14\19\14\18\16\3\0\18\17\v\0B\14\3\2\14\0\14\0X\14\21Ä\18\16\r\0009\14\28\rB\14\2\2\15\0\14\0X\0154Ä6\14\20\0009\14\21\14\18\16\6\0\18\17\v\0B\14\3\1\18\16\r\0009\14\29\rB\14\2\1-\14\3\0009\14\30\14'\16\31\0\18\17\v\0'\18 \0&\16\18\16B\14\2\1X\14$Ä9\14!\r\a\14\"\0X\14\3Ä-\14\4\0\14\0\14\0X\15\5Ä5\14#\0-\15\5\0=\15$\14-\15\6\0=\15%\14\18\17\r\0009\15&\r3\18'\0B\15\3\1\18\17\r\0009\15\28\rB\15\2\2\14\0\15\0X\15\15Ä6\15\20\0009\15\21\15\18\17\5\0\18\18\v\0B\15\3\1\18\17\r\0009\15(\rB\15\2\1-\15\3\0009\15\30\15'\17)\0\18\18\v\0'\19 \0&\17\19\17B\15\2\0012\14\0Ä2\f\0ÄE\n\3\3R\n∏6\a\5\0\18\t\3\0B\a\2\4X\n%Ä-\f\1\0009\f\19\f\18\14\4\0\18\15\v\0B\f\3\2\14\0\f\0X\f\30Ä9\f\27\0\18\14\v\0B\f\2\3\15\0\f\0X\14\24Ä\18\16\r\0009\14&\r3\17*\0B\14\3\1\18\16\r\0009\14\28\rB\14\2\2\14\0\14\0X\14\15Ä6\14\20\0009\14\21\14\18\16\5\0\18\17\v\0B\14\3\1\18\16\r\0009\14(\rB\14\2\1-\14\3\0009\14\30\14'\16)\0\18\17\v\0'\18 \0&\16\18\16B\14\2\0012\f\0ÄE\n\3\3R\nŸ-\a\2\0\15\0\a\0X\b\vÄ6\a\0\0'\t+\0B\a\2\0029\a,\a9\a-\a5\t.\0-\n\5\0=\n$\t-\n\6\0=\n%\tB\a\2\0016\a/\0\18\t\5\0B\a\2\2\v\a\0\0X\a\5Ä6\a/\0\18\t\6\0B\a\2\2\n\a\0\0X\a\26Ä'\a0\0\21\b\5\0)\t\0\0\1\t\b\0X\t\5Ä\18\t\a\0'\n1\0\18\v\b\0'\f2\0&\a\f\t\21\t\6\0)\n\0\0\1\n\t\0X\n\5Ä\18\n\a\0'\v3\0\18\f\b\0'\r2\0&\a\r\n\18\n\a\0'\v4\0&\a\v\n6\n\r\0009\n5\n\18\f\a\0B\n\2\1K\0\1\0\3¿\1¿\4Ä\0¿\a¿\5¿\6Ä\vnotify+Use :LspInstallInfo to check status.  \18Uninstalling \r LSPs.  \16Installing \vDoom: \tnext\1\0\0\nsetup\vmetals\14lspconfig\0+doom-lsp-installer: Installing server \finstall\0\ron_ready\14on_attach\17capabilities\1\0\0\16sumneko_lua\tname\6.-doom-lsp-installer: Uninstalling server \tinfo\14uninstall\17is_installed\15get_server\npairs;\" does not have an LSP, please remove the \"+lsp\" flag.\19The language \"\nerror\nscala\vinsert\ntable\14has_value\ttrim\t+lsp\tfind\6,\nsplit\bvim\17+lsp%((.+)%)\nmatch\15%s+%+debug\r%s+%+lsp\5\22%s+%+lsp(%(%a+%))\tgsub\vipairs\nlangs\fmodules\29doom.core.config.modules\23nvim-lsp-installer\frequire\21\0\0\2\1\0\0\3-\0\0\0B\0\1\1K\0\1\0\b¿œ\17\1\0\15\0à\1\0Ω\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\2\0B\2\2\0029\2\3\0025\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\0042\0035\0043\0=\0044\0035\0045\0=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4J\0035\4K\0=\4L\0035\4M\0=\4N\0035\4O\0=\4P\0035\4Q\0=\4R\0035\4S\0=\4T\3+\4\1\0006\5L\0009\5U\0059\5V\0059\5W\5B\5\1\0029\6X\0059\6Y\0069\6Z\6+\a\2\0=\a[\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a\\\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a]\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a^\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\a_\0069\6X\0059\6Y\0069\6Z\0065\ab\0005\ba\0=\bc\a=\a`\0069\6X\0059\6Y\0069\6Z\6+\a\2\0=\ad\0069\6X\0059\6Y\0069\6Z\0065\ag\0005\bf\0=\bh\a=\ae\0069\6X\0055\aj\0005\bm\0005\tl\0005\nk\0=\nc\t=\tn\b=\bo\a=\ai\6+\6\0\0\18\a\2\0'\tp\0B\a\2\2\14\0\a\0X\a\5Ä6\aq\0009\ar\a\15\0\a\0X\b\1Ä3\6s\0006\a\0\0'\tt\0B\a\2\0029\au\a5\tÉ\0005\n\0005\v}\0005\fw\0005\rv\0=\rx\f5\rz\0005\14y\0=\14{\r=\r|\f=\f~\v=\vÄ\n=\5Å\n=\6Ç\n=\nÑ\tB\a\2\0023\bÖ\0006\tL\0009\tÜ\t3\vá\0)\f2\0B\t\3\0012\0\0ÄK\0\1\0\0\rdefer_fn\0\14lspconfig\1\0\0\14on_attach\17capabilities\rsettings\1\0\0\bLua\1\0\0\16diagnostics\fglobals\1\0\0\1\2\0\0\19packer_plugins\14workspace\1\0\0\1\0\1\20preloadFileSize\3»\1\nsetup\flua-dev\0\19vim-illuminate\19packer_plugins\16illuminated\29codeActionLiteralSupport\19codeActionKind\1\0\0\1\0\0\1\t\0\0\5\rquickfix\rrefactor\21refactor.extract\20refactor.inline\21refactor.rewrite\vsource\27source.organizeImports\1\0\1\24dynamicRegistration\1\15codeAction\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\rvalueSet\1\0\0\1\2\0\0\3\1\15tagSupport\28commitCharactersSupport\22deprecatedSupport\24labelDetailsSupport\25insertReplaceSupport\21preselectSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\vconfig\1\3\0\0\vjsonls\vyamlls\tyaml\1\2\0\0\vyamlls\bxml\1\2\0\0\flemminx\bvue\1\2\0\0\nvuels\bvim\1\2\0\0\nvimls\15typescript\1\2\0\0\rtsserver\vsvelte\1\2\0\0\vsvelte\trust\1\2\0\0\18rust_analyzer\truby\1\2\0\0\15solargraph\vpython\1\2\0\0\fpyright\15powershell\1\2\0\0\18powershell_es\bphp\1\2\0\0\rphpactor\nocaml\1\2\0\0\rocamells\nlatex\1\2\0\0\vtexlab\vkotlin\1\2\0\0\27kotlin_language_server\15javascript\1\2\0\0\rtsserver\tjava\1\2\0\0\njdtls\njson5\1\2\0\0\vjsonls\tjson\1\2\0\0\vjsonls\vhaskel\1\2\0\0\bhls\thtml\1\2\0\0\thtml\vgroovy\1\2\0\0\rgroovyls\fgraphql\1\2\0\0\fgraphql\ago\1\2\0\0\ngopls\ffortran\1\2\0\0\vfortls\nember\1\2\0\0\nember\belm\1\2\0\0\nelmls\velixer\1\2\0\0\relixerls\bdot\1\2\0\0\ndotls\15dockerfile\1\2\0\0\rdockerls\fclojure\1\2\0\0\16clojure_lsp\bcss\1\2\0\0\ncssls\ncmake\1\2\0\0\ncmake\bcpp\1\2\0\0\vclangd\6c\1\2\0\0\vclangd\fc_sharp\1\2\0\0\14omnisharp\tbash\1\2\0\0\vbashls\fangular\1\2\0\0\14angularls\fansible\1\2\0\0\14ansiblels\blua\1\0\0\1\2\0\0\16sumneko_lua\23is_plugin_disabled\15doom.utils\24doom.extras.logging\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\nK\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\5¿\14DASHBOARD\24get_buffer_filetypeK\0\0\2\1\2\0\t-\0\0\0009\0\0\0B\0\1\2\a\0\1\0X\1\2Ä+\1\1\0X\2\1Ä+\1\2\0L\1\2\0\5¿\14DASHBOARD\24get_buffer_filetype\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä õ\4\0\0\6\1#\0_5\0\1\0-\1\0\0'\3\0\0B\1\2\2=\1\2\0-\1\0\0'\3\3\0B\1\2\2=\1\4\0-\1\0\0'\3\5\0B\1\2\2=\1\6\0-\1\0\0'\3\5\0B\1\2\2=\1\a\0-\1\0\0'\3\5\0B\1\2\2=\1\b\0-\1\0\0'\3\t\0B\1\2\2=\1\n\0-\1\0\0'\3\0\0B\1\2\2=\1\v\0-\1\0\0'\3\f\0B\1\2\2=\1\r\0-\1\0\0'\3\f\0B\1\2\2=\1\14\0-\1\0\0'\3\f\0B\1\2\2=\1\15\0-\1\0\0'\3\16\0B\1\2\2=\1\17\0-\1\0\0'\3\t\0B\1\2\2=\1\18\0-\1\0\0'\3\t\0B\1\2\2=\1\19\0-\1\0\0'\3\0\0B\1\2\2=\1\20\0-\1\0\0'\3\0\0B\1\2\2=\1\21\0-\1\0\0'\3\22\0B\1\2\2=\1\23\0-\1\0\0'\3\22\0B\1\2\2=\1\24\0-\1\0\0'\3\22\0B\1\2\2=\1\25\0-\1\0\0'\3\0\0B\1\2\2=\1\26\0-\1\0\0'\3\0\0B\1\2\2=\1\27\0006\1\28\0009\1\29\0019\1\30\1'\3\31\0006\4\28\0009\4 \0049\4!\4B\4\1\0028\4\4\0B\4\1\2&\3\4\3B\1\2\1'\1\"\0L\1\2\0\2¿\nÔåå  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\breds\0\0\a\0\b\0\0166\0\0\0009\0\1\0009\0\2\0'\2\3\0B\0\2\0026\1\0\0009\1\1\0019\1\4\1'\3\3\0B\1\2\0026\2\5\0009\2\6\2'\4\a\0\18\5\0\0\18\6\1\0D\2\4\0\16%3d : %2d  \vformat\vstring\bcol\6.\tline\afn\bvim∫\1\0\0\6\1\t\0\24-\0\0\0009\0\0\0B\0\1\2\6\0\1\0X\0\vÄ6\0\2\0009\0\3\0'\2\4\0006\3\5\0009\3\6\0039\3\a\3-\4\0\0009\4\0\4B\4\1\0C\0\2\0X\0\aÄ6\0\2\0009\0\3\0'\2\b\0006\3\5\0009\3\6\0039\3\a\3D\0\3\0K\0\1\0\4¿\fÔêç %s \rfiletype\abo\bvim\18ÓòÅ %s ¬ª %s \vformat\vstring\18No Active Lsp\19get_lsp_clientS\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2Ä+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\5\2\14dashboard\2\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\tÔû° \19\0\0\1\0\1\0\2'\0\0\0L\0\2\0\b   7\0\0\3\1\3\0\6'\0\0\0-\1\0\0009\1\1\1'\2\2\0&\0\2\0L\0\2\0\0¿\6 \17doom_version\vDOOM v\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä¬\30\1\0\17\0ã\1\1À\0046\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\0026\3\0\0'\5\6\0B\3\2\0026\4\0\0'\6\a\0B\4\2\0026\5\0\0'\a\b\0B\5\2\0026\6\0\0'\b\t\0B\6\2\0029\a\n\0035\b\f\0=\b\v\0039\b\r\0019\b\14\b\14\0\b\0X\b\5Ä6\b\15\0009\b\16\b9\n\17\3'\v\18\0B\b\3\0013\b\19\0003\t\20\0009\n\21\a5\v\28\0005\f\23\0003\r\22\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f\29\v>\v\1\n9\n\21\a5\v\"\0005\f\31\0003\r\30\0=\r\24\f5\r!\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f=\f#\v>\v\2\n9\n\21\a5\v*\0005\f$\0009\r%\6\15\0\r\0X\14\1Ä9\r&\6=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f+\v>\v\3\n9\n\21\a5\v/\0005\f,\0009\r%\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0006\14\0\0'\16-\0B\14\2\0029\14.\14>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f0\v>\v\4\n9\n\21\a5\v6\0005\f3\0009\r\r\0019\r1\r\15\0\r\0X\14\2Ä'\r2\0X\14\1Ä'\r4\0=\r\24\f9\r%\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f5\r5\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f4\v>\v\5\n9\n\21\a5\v:\0005\f8\0003\r7\0=\r\24\f=\t'\f4\r\3\0\18\14\2\0'\0169\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f;\v>\v\6\n9\n\21\a5\v=\0005\f<\0=\t'\f4\r\3\0\18\14\2\0'\0169\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f>\v>\v\a\n9\n\21\a5\vC\0005\f?\0=\t'\f9\r\r\0019\r@\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fD\v>\v\b\n9\n\21\a5\vH\0005\fE\0=\t'\f9\r\r\0019\rF\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16G\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fI\v>\v\t\n9\n\21\a5\vL\0005\fJ\0=\t'\f9\r\r\0019\rK\r'\14A\0&\r\14\r=\rB\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fM\v>\v\n\n9\nN\a5\vP\0005\fO\0009\r&\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fQ\v>\v\1\n9\nN\a5\vS\0005\fR\0009\r&\6\15\0\r\0X\14\1Ä\18\r\t\0=\r'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fT\v>\v\2\n9\nN\a5\vX\0005\fV\0003\rU\0=\r\24\f3\rW\0=\r'\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fY\v>\v\3\n9\nN\a5\v]\0005\f[\0003\rZ\0=\r\24\f9\r\\\6=\r'\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\f^\v>\v\4\n9\nN\a5\vb\0005\f_\0009\r\\\6=\r'\f5\ra\0\18\14\2\0'\16`\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f=\fc\v>\v\5\n9\nN\a5\vf\0005\fe\0003\rd\0=\r\24\f9\r&\6=\r'\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fg\v>\v\6\n9\nN\a5\vi\0005\fh\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16`\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fj\v>\v\a\n9\nN\a5\vl\0005\fk\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16G\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fm\v>\v\b\n9\nN\a5\vo\0005\fn\0009\r&\6=\r'\f4\r\3\0\18\14\2\0'\16 \0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fp\v>\v\t\n\15\0\b\0X\n\28Ä9\nN\a5\vt\0005\fr\0003\rq\0=\r\24\f=\b'\f5\rs\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\2>\14\2\r=\r\27\f4\r\3\0\18\14\2\0'\16\26\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r)\f=\fu\v>\v\n\n9\nN\a5\vx\0005\fw\0003\rv\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fy\v>\v\v\n9\nz\a5\v}\0005\f|\0003\r{\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\f~\v>\v\1\n9\nz\a5\vÄ\0005\f\0=\t'\f4\r\3\0\18\14\2\0'\16(\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fÅ\v>\v\2\n9\nÇ\a5\vÖ\0005\fÉ\0=\t'\f4\r\3\0\18\14\2\0'\16Ñ\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fÜ\v>\v\1\n9\nÇ\a5\vâ\0005\fà\0003\rá\0=\r\24\f4\r\3\0\18\14\2\0'\16\25\0B\14\2\2>\14\1\r\18\14\2\0'\16\26\0B\14\2\0?\14\0\0=\r\27\f=\fä\v>\v\2\n2\0\0ÄK\0\1\0\22ShortRainbowRight\1\0\0\1\0\0\0\15BufferIcon\1\0\0\vyellow\1\0\1\rprovider\15BufferIcon\21short_line_right\15BufferType\1\0\0\1\0\1\rprovider\17FileTypeName\21ShortRainbowLeft\1\0\0\1\0\0\0\20short_line_left\17RainbowRight\1\0\0\1\0\0\0\16DoomVersion\1\0\0\1\4\0\0\0\0\tbold\1\0\1\14separator\a  \0\15DiffRemove\1\0\0\1\0\2\ticon\tÔëò \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\2\ticon\tÔëô \rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\tÔëó \rprovider\fDiffAdd\18DiffSeparator\1\0\0\1\0\0\0\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\24check_git_workspace\1\0\1\14separator\6 \0\28ShowLspClientOrFileType\1\0\0\0\1\0\1\14separator\a  \0\15FileEncode\1\0\0\1\0\2\rprovider\15FileEncode\14separator\6 \15FileFormat\1\0\0\1\0\2\rprovider\15FileFormat\14separator\a  \nright\19DiagnosticInfo\1\0\0\rlsp_hint\1\0\1\rprovider\19DiagnosticInfo\19DiagnosticWarn\1\0\0\vorange\rlsp_warn\1\0\1\rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\ticon\6 \14lsp_error\1\0\1\rprovider\20DiagnosticError\16LinePercent\1\0\0\1\0\2\rprovider\16LinePercent\14separator\a  \rLineInfo\1\0\0\vfg_alt\1\0\0\0\1\0\0\1\4\0\0\0\0\tbold\rFileName\1\0\1\14separator\6 \rFilePath\30statusline_show_file_path\rFileIcon\1\0\0\24get_file_icon_color\"galaxyline.providers.fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\24separator_highlight\afg\14condition\18hide_in_width\21buffer_not_empty\1\0\2\rprovider\rFileSize\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\16RainbowLeft\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\0\0\14dashboard\22exclude_filetypes\vinsert\ntable\23dashboard_statline\tdoom\1\a\0\0\rNvimTree\vpacker\fminimap\fOutline\15toggleterm\nnetrw\20short_line_list\fsection\25galaxyline.condition galaxyline.providers.buffer\29galaxyline.providers.lsp\15galaxyline\14get_color\29galaxyline.themes.colors\vconfig\21doom.core.config\15doom.utils\frequire\5ÄÄ¿ô\4\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n√\1\0\3\b\0\t\0\30\18\5\0\0009\3\0\0'\6\1\0B\3\3\2\15\0\3\0X\4\1ÄK\0\1\0006\3\2\0009\3\3\0039\3\4\0039\3\5\3\5\1\3\0X\3\6Ä6\3\2\0009\3\6\0039\3\a\3\18\5\0\0B\3\2\1X\3\nÄ6\3\2\0009\3\6\0039\3\b\0034\5\3\0004\6\3\0>\0\1\6>\6\1\5+\6\2\0004\a\0\0B\3\4\1K\0\1\0\14nvim_echo\21nvim_err_writeln\bapi\nERROR\vlevels\blog\bvim\14exit code\nmatchÃ\n\1\0\15\0003\1o6\0\0\0009\0\1\0006\1\0\0009\1\2\0016\2\3\0'\4\4\0B\2\2\0029\2\5\2,\3\4\0006\5\0\0009\5\1\0059\5\6\5'\a\a\0B\5\2\2\t\5\0\0X\5\16Ä5\5\n\0009\6\b\0029\6\t\6=\6\v\0059\6\b\0029\6\f\6=\6\r\0059\6\b\0029\6\14\6=\6\15\0059\6\b\0029\6\16\6=\6\17\5\18\3\5\0'\4\18\0X\5\15Ä5\5\19\0009\6\b\0029\6\t\6=\6\v\0059\6\b\0029\6\f\6=\6\20\0059\6\b\0029\6\14\6=\6\21\0059\6\b\0029\6\16\6=\6\17\5\18\3\5\0'\4\22\0006\5\23\0\18\a\3\0B\5\2\4H\b\nÄ\18\n\4\0\18\v\b\0&\n\v\n9\v\24\0\18\r\n\0005\14\25\0=\t\26\14=\n\27\14=\n\28\14B\v\3\1F\b\3\3R\bÙ9\5\29\0019\6\31\0019\b \0019\b!\b5\t&\0009\n\b\0029\n\"\n\15\0\n\0X\v\6Ä5\n$\0009\v\b\0029\v#\v=\v%\n\14\0\n\0X\v\1Ä+\n\1\0=\n'\tB\6\3\2=\6\30\0059\5\29\0016\6\0\0009\6\2\0069\6\31\0066\b\0\0009\b\2\b9\b\29\b9\b)\b5\t*\0B\6\3\2=\6(\0059\5\29\0016\6\0\0009\6\2\0069\6\31\0066\b\0\0009\b\2\b9\b\29\b9\b,\b5\t-\0B\6\3\2=\6+\0059\5.\0015\0060\0=\6/\0056\5\0\0003\0062\0=\0061\5K\0\1\0\0\vnotify\1\26\0\0\18 Ôíû  (Text) \19 Ôö¶  (Method)\21 Ôûî  (Function)\24 Ôê£  (Constructor)\18 Ô¥≤  (Field)\21 Óúñ  (Variable)\18 Ô†ñ  (Class)\22 Ô∞Æ  (Interface)\19 Ôô®  (Module)\21 Ô∞†  (Property)\17 Ôëµ  (Unit)\18 Ô¢ü  (Value)\16 Ô©ó (Enum)\20 Ô†ä  (Keyword)\20 Ôëè  (Snippet)\18 Ô£ó  (Color)\17 Ôúì  (File)\22 Ôúú  (Reference)\19 Ôùä  (Folder)\23 ÔÖù  (EnumMember)\21 Ô≤Ä  (Constant)\19 Ô≥§  (Struct)\18 ÔÉß  (Event)\21 Ôöî  (Operator)\26 ÔûÉ  (TypeParameter)\23CompletionItemKind\rprotocol\1\0\1\vborder\vsingle\19signature_help\31textDocument/signatureHelp\1\0\1\vborder\vsingle\nhover\23textDocument/hover\17virtual_text\1\0\0\vprefix\1\0\0\21lsp_virtual_text\28enable_lsp_virtual_text\27on_publish_diagnostics\15diagnostic\twith$textDocument/publishDiagnostics\rhandlers\nnumhl\vtexthl\ttext\1\0\0\16sign_define\npairs\23LspDiagnosticsSign\16Information\fWarning\1\0\0\19DiagnosticSign\tHint\rlsp_hint\tInfo\rlsp_info\tWarn\rlsp_warn\nError\1\0\0\14lsp_error\tdoom\15nvim-0.6.0\bhas\vconfig\21doom.core.config\frequire\blsp\afn\bvim\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: persistence.nvim
time([[Config for persistence.nvim]], true)
try_loadstring("\27LJ\2\nÉ\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\bdir\1\0\0\15/sessions/\tdata\fstdpath\afn\bvim\nsetup\16persistence\frequire\0", "config", "persistence.nvim")
time([[Config for persistence.nvim]], false)
-- Config for: nvim-mapper
time([[Config for nvim-mapper]], true)
try_loadstring("\27LJ\2\n›\1\0\0\n\0\v\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\0\0'\3\1\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\2\5\0025\4\6\0006\5\a\0009\5\b\5'\a\t\0\18\b\0\0\18\t\1\0B\5\4\2=\5\n\4B\2\2\1K\0\1\0\16search_path\f%s%slua\vformat\vstring\1\0\2\vno_map\2\20action_on_enter\fexecute\nsetup\16nvim-mapper\bsep\14doom_root\21doom.core.system\frequire\0", "config", "nvim-mapper")
time([[Config for nvim-mapper]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\n¨\25\0\0\f\0009\0y6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\1\3\0009\1\4\0016\2\0\0'\4\6\0B\2\2\0029\2\a\2'\3\b\0&\2\3\2=\2\5\0016\1\3\0009\1\4\1'\2\n\0=\2\t\0016\1\3\0009\1\4\0015\2\15\0005\3\r\0005\4\f\0=\4\14\3=\3\16\0025\3\18\0005\4\17\0=\4\14\3=\3\19\0025\3\21\0005\4\20\0=\4\14\3=\3\22\0025\3\24\0005\4\23\0=\4\14\3=\3\25\0025\3\27\0005\4\26\0=\4\14\3=\3\28\0025\3\30\0005\4\29\0=\4\14\3=\3\31\0025\3!\0005\4 \0=\4\14\3=\3\4\2=\2\v\0016\1\3\0009\1\4\0014\2\3\0'\3#\0006\4\3\0009\4$\0049\4%\4'\6&\0006\a\3\0009\a$\a9\a'\a6\t\3\0009\t$\t9\t(\t6\v\3\0009\v\4\v9\v)\vB\t\2\0A\a\0\0A\4\1\2'\5*\0&\3\5\3>\3\1\2=\2\"\0016\1\3\0009\1\4\0016\2\3\0009\2,\0029\4-\0009\4+\4B\2\2\2\15\0\2\0X\3\3Ä5\2.\0\14\0\2\0X\3\2Ä9\2-\0009\2+\2=\2+\0016\1\3\0009\1/\1'\0030\0009\4-\0009\0041\0049\0042\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0033\0009\4-\0009\0041\0049\0044\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0035\0009\4-\0009\0041\0049\0046\4&\3\4\3B\1\2\0016\1\3\0009\1/\1'\0037\0009\4-\0009\0041\0049\0048\4&\3\4\3B\1\2\1K\0\1\0\17footer_color!hi! dashboardFooter   guifg=\19shortcut_color!hi! dashboardShortcut guifg=\17center_color!hi! dashboardCenter   guifg=\17header_color\28dashboard_custom_colors!hi! dashboardHeader   guifg=\bcmd\1\21\0\0S                                                                              S=================     ===============     ===============   ========  ========S\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //S||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||S|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||S||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||S|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||S||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||S|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||S||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||S||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||S||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||S||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||S||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||S||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||S||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||S||.=='    _-'                                                     `' |  /==.||S=='    _-'                        N E O V I M                         \\/   `==S\\   _-'                                                                `-_   /T `''                                                                      ``'  \tdoom\16tbl_isempty\28dashboard_custom_header\14 seconds.\15start_time\freltime\17reltimefloat\t%.3f\vprintf\afn\25Doom Nvim loaded in \28dashboard_custom_footer\1\0\1\fcommand3lua require(\"doom.core.functions\").open_docs()\1\2\0\0000ÔÄ≠  Open Documentation             SPC d d\6f\1\0\1\fcommand5lua require(\"doom.core.functions\").edit_config()\1\2\0\0000Ôë¢  Open Private Configuration     SPC d c\6e\1\0\1\fcommand\24Telescope live_grep\1\2\0\0000ÔáÇ  Find Word                      SPC s g\6d\1\0\1\fcommand\25Telescope find_files\1\2\0\0000Ôú°  Find File                      SPC f f\6c\1\0\1\fcommand\20Telescope marks\1\2\0\0000ÔÄÆ  Jump to Bookmark               SPC s m\6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0000ÔÖú  Recently Opened Files          SPC f r\6a\1\0\0\16description\1\0\1\fcommand5lua require('persistence').load({ last = true })\1\2\0\0000ÔÄû  Load Last Session              SPC s r\29dashboard_custom_section\14telescope dashboard_default_executive\14/sessions\14doom_root\21doom.core.system dashboard_session_directory\6g\bvim\vconfig\21doom.core.config\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Format lua require("packer.load")({'format.nvim'}, { cmd = "Format", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file FormatWrite lua require("packer.load")({'format.nvim'}, { cmd = "FormatWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFindFile lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFindFile", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClose lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeClipboard lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeClipboard", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleClose lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleClose", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleRefresh lua require("packer.load")({'trouble.nvim'}, { cmd = "TroubleRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'lsp_signature.nvim', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au ColorScheme * ++once lua require("packer.load")({'todo-comments.nvim'}, { event = "ColorScheme *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'vim-illuminate', 'range-highlight.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'LuaSnip', 'nvim-autopairs'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'kommentary', 'nvim-dap', 'bufferline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
