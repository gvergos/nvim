local rose_pine_setup = function ()
	require('rose-pine').setup({
		dark_variant = 'main',
		bold_vert_split = false,
		dim_nc_background = false,
		disable_background = true,
		disable_float_background = true,
		disable_italics = true,

		groups = {
			background = 'none',
			panel = 'surface',
			border = 'none',
			comment = 'muted',
			link = 'iris',
			punctuation = 'subtle',

			error = 'love',
			hint = 'iris',
			info = 'foam',
			warn = 'gold',

			headings = {
				h1 = 'iris',
				h2 = 'foam',
				h3 = 'rose',
				h4 = 'gold',
				h5 = 'pine',
				h6 = 'foam',
			}
		},

		highlight_groups = {
			Visual = { bg = '#625164', fg='none' },
			SignColumn = { bg = 'none' },
			CursorLine = { bg = 'none' },
			LineNr = { fg = '#616161', bg = 'none' },
			CursorLineNr = { fg = '#00ffff', bg = 'none' },
			NumberColumn = { bg = 'none'},
			SpellBad = {bg = 'none', fg = '#A3503E'},
			DiagnosticError = { guifg=Red },
			DiagnosticWarn  = { guifg=DarkOrange },
			DiagnosticInfo  = { guifg=Blue },
			DiagnosticHint  = { guifg=Gray },
			--EndOfBuffer = { fg="#9951AC" },
			WinSeparator = { bg='none', fg='#755077' },
			MatchParen = { bg='#000000', fg='#ffffff'},
			StatusLine = { bg = 'none' }
			--NormalNC = { bg = '#282828' }
		}
	})
end
return {
	'rose-pine/neovim',
	name = 'rose-pine',
	config = function()
		rose_pine_setup()
	end
}
