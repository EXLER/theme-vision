# ------------
# vision                                        
# ------------
# license: MIT
# source: https://github.com/EXLER/theme-vision
# ------------

function fish_prompt
	# Cache exit status
	set -l last_status $status

	# Set this once
	if not set -q __fish_prompt_hostname
		set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
	end
	if not set -q __fish_prompt_char
		switch (id -u)
			case 0
				set -g __fish_prompt_char '$'
			case '*'
				set -g __fish_prompt_char '→'
		end
	end

	# Set color variables
	set -l normal (set_color normal)
  	set -l white (set_color FFFFFF)
  	set -l yellow (set_color fce205)
  	set -l orange (set_color ffa500)
  	set -l hotpink (set_color df005f)

	# Configure __fish_git_prompt
  	set -g __fish_git_prompt_char_stateseparator ''
  	set -g __fish_git_prompt_color white
  	set -g __fish_git_prompt_color_prefix white
  	set -g __fish_git_prompt_color_suffix white
  	set -g __fish_git_prompt_color_dirtystate purple
	set -g __fish_git_prompt_color_stagedstate blue
	set -g __fish_git_prompt_color_invalidstate df005f
	set -g __fish_git_prompt_color_untrackedfiles df005f
	set -g __fish_git_prompt_color_cleanstate green
  	set -g __fish_git_prompt_showdirtystate true
  	set -g __fish_git_prompt_showuntrackedfiles true
  	set -g __fish_git_prompt_showstashstate true
  	set -g __fish_git_prompt_show_informative_status true 

  	set -g __fish_git_prompt_char_cleanstate ' ✓'
	set -g __fish_git_prompt_char_dirtystate ' +'
	set -g __fish_git_prompt_char_stagedstate ' ·'
	set -g __fish_git_prompt_char_conflictedstate " ✖"
	set -g __fish_git_prompt_char_untrackedfiles ' …'
	set -g __fish_git_prompt_char_stashstate ' ↩'
	set -g __fish_git_prompt_char_upstream_ahead ' +'
	set -g __fish_git_prompt_char_upstream_behind ' -'

	# Line 1
	echo '☰ '$orange$USER$white' in '$orange(pwd | sed "s,^$HOME,~,")$normal (__fish_git_prompt " (%s)")

	# Line 2
	echo -n $white$__fish_prompt_char $normal


end