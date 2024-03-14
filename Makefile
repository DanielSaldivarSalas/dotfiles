define move_if_identical
@if [ ! -f $(1) ]; then \
		echo "$(1) not found"; \
elif [ ! -f $(2) ]; then \
		mv $(1) $(2); \
		echo "Moved $(1) to $(2)"; \
elif cmp -s $(1) $(2); then \
		rm $(1); \
		echo "Removed $(1) because they are identical."; \
else \
		mv $(1) $(2); \
		echo "Overriding $(2) with $(1)."; \
fi
endef


# this is a temporary workaround until V3 parser of Neorg comes along in 8.0.0
move:
		$(call move_if_identical,treesitter.lua,.config/nvim/lua/plugins/treesitter.lua)
		$(call move_if_identical,transparent.lua,.config/nvim/lua/plugins/transparent.lua)
		$(call move_if_identical,neorg.lua,.config/nvim/lua/plugins/neorg.lua)
		$(call move_if_identical,toggleterm.lua,.config/nvim/lua/plugins/toggleterm.lua)
		$(call move_if_identical,mason.lua,.config/nvim/lua/plugins/mason.lua)
		$(call move_if_identical,nvimlspconfig.lua,.config/nvim/lua/plugins/nvimlspconfig.lua)
		$(call move_if_identical,vimfugitive.lua,.config/nvim/lua/plugins/vimfugitive.lua)
		$(call move_if_identical,lazygit.lua,.config/nvim/lua/plugins/lazygit.lua)
		$(call move_if_identical,telescopemakefile.lua,.config/nvim/lua/plugins/telescopemakefile.lua)
		$(call move_if_identical,disabled.lua,.config/nvim/lua/plugins/disabled.lua)
