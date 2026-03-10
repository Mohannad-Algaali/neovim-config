return {
    'goolord/alpha-nvim',
    config = function ()
        -- require'alpha'.setup(require'alpha.themes.dashboard'.config)
        require 'alpha'.setup(require 'utils.alpha-dashboard'.config)
    end
}
