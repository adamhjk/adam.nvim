# Neovim Configuration Guidelines

## Commands
- Format code: `<leader>f` or `:Format`
- Toggle autoformat: `:KickstartFormatToggle`
- LSP actions: `<leader>la` (code action), `<leader>ln` (rename)
- Search files: `<leader>t` (find files), `<leader>F` (live grep)
- Test commands: None defined (add when implementing tests)

## Style Guidelines
- **Formatting**: Uses formatter.nvim (stylua for Lua, eslint_d for TS/Vue)
- **Indentation**: 2 spaces (ts=2 sts=2 sw=2)
- **Imports**: Follow lazy.nvim plugin structure for new plugins
- **Plugin Structure**: Use `lua/custom/plugins/*.lua` with return table format
- **Naming**: Follow existing conventions (lowercase, underscore_case)
- **Error Handling**: Use LSP diagnostics (`<leader>e` to view, `[d`/`]d` to navigate)
- **File Organization**: Single plugin per file in `lua/custom/plugins/`
- **Leader Key**: `,` is defined as both leader and localleader

## Conventions
- Use Lua for all configuration
- Follow kickstart.nvim modular approach for new features
- Add new plugins in `lua/custom/plugins/` directory