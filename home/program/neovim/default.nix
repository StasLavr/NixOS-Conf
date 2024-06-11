{config, pkgs, inputs, ...}: {
  imports = [
     inputs.nixvim.homeManagerModules.nixvim	
  ]; 
   
   programs.nixvim = {
   enable = true; 
   defaultEditor = true;
   colorschemes.tokyonight.enable = true;
   colorschemes.tokyonight.settings = {style = "storm";};

  
   options = {
    number = true;
    shiftwidth = 2;
    tabstop = 2;
    relativenumber = true;
  
   };

   keymaps = [

    {
      key = "cr";
      action = ":bprew<CR>";
      options = {
      noremap = true;
      silent = true;
     };
    }
    {
      key = "cw";
      action = ":bnext<CR>";
      options = {
      noremap = true;
      silent = true;
     };
    } 
    {
      key = "fg";
      action = ":Telescope  find_files<CR>";
      options = {
      noremap = true;
      silent = true;
     };
    }
    {
      key = "fo";
      action = ":Telescope  oldfiles<CR>";
      options = {
      noremap = true;
      silent = true;
     };
    }

		{
      key = "<space>r";
      action = ":NvimTreeToggle<CR>";
      options = {
      noremap = true;
      silent = true;
     };
   }
   {
      key = "<space>t";
      action = ":ToggleTerm<CR>";
      options = {
      noremap = true;
      silent = true;
     };
		}

   ];

  plugins = {
    nix.enable = true;
    luasnip.enable = true;
    lualine.enable = true;
    nvim-autopairs.enable = true;
    auto-save.enable = true;
    toggleterm.enable = true;
    nvim-tree.enable = true;
    emmet.enable = true;
    surround.enable = true;
    telescope.enable = true;
     nvim-colorizer = {
	        enable = true;
	        userDefaultOptions = {
	          tailwind = true;
	          sass.enable = true;
	          css = true;
	        };
        };
     barbar = {
	        enable = true;
	        animation = true;
	        clickable = true;
	        tabpages = false;
	        semanticLetters = true;
	        highlightVisible = false;
	        excludeFileNames = ["alpha"];
	        icons = {
	          button = " ";
	          separator = {
	            left = " ";
	            right = "";
	          };
	          filetype = {
	            enable = true;
	            customColors = true;
	          };
	        };
	        maximumPadding = 1;
	        minimumPadding = 1;
	        maximumLength = 30;
	        sidebarFiletypes = {
	        "NvimTree" = {
	          event = "BufWipeout";
	          text = " 󰔱 Treexplorer";
	          };
	        };
	      };
     cmp = {
        enable = true;

        settings = {
          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

          mapping = {
            "<C-d>" = "cmp.mapping.scroll_docs(-4)";
            "<C-f>" = "cmp.mapping.scroll_docs(4)";
            "<C-Space>" = "cmp.mapping.complete()";
            "<C-e>" = "cmp.mapping.close()";
            "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
            "<CR>" = "cmp.mapping.confirm({ select = true })";
          };

          sources = [
            {name = "path";}
            {name = "nvim_lsp";}
            {name = "cmp_tabby";}
            {name = "luasnip";}
            {
              name = "buffer";
              # Words from other open buffers can also be suggested.
              option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            }
            {name = "neorg";}
          ];
        };
      };


     lsp = {
	        enable = true;
	        servers = {
	          nixd.enable = true;
	          nil_ls.enable = true;
	          pyright.enable = true;
	          tailwindcss.enable = true;
	          html.enable = true;
            cssls.enable = true;
            volar.enable = true;
            tsserver.enable = true;
	        };
	      };

     lspkind = {
	        enable = true;
	        mode = "symbol_text";
	        cmp = {
	          enable = true;
	          ellipsisChar = "...";
	          menu = {
	            buffer = "[Buffer]";
	            nvim_lsp = "[LSP]";
	            path = "[Path]";
	            luasnip = "[LuaSnip]";
	            nvim_lua = "[Lua]";
	            cmdline = "[Cmd]";
	            latex_symbols = "[Latex]";
	          };
	          maxWidth = 50;
	          after = ''
	            function(entry, vim_item, kind)
	              local strings = vim.split(kind.kind, "%s", { trimempty = true })
	              kind.kind = " " .. strings[1] .. " "
	              kind.menu = "   " .. strings[2]
	              return kind
	            end
	          '';
	        };
	      }; 
	};
};
}
