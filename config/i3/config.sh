#######################################################
#
# i3 config file (v4)
# Please see https://i3wm.org/docs/userguide.html for a complete reference!
#
#######################################################

# set $mod Mod1
set $mod Mod4
set $terminal gnome-terminal # Or gnome-terminal
set $bin ~/dotfiles/bin

# use these keys for focus, movement, and resize directions when reaching for
# the arrows is not convenient
set $up k
set $down j
set $left h
set $right l

# Dracula colors
set $black #000000
set $bg #282a36
set $active #44475a
set $white #f8f8f2
set $comment #6272a4
set $cyan #8be9fd
set $green #50fa7b
set $orange #ffb86c
set $pink #ff79c6
set $purple #bd93f9
set $red #ff5555
set $yellow #f1fa8c

#######################################################
# Theme
#######################################################

# class                 border   bground  text     indicator child_border
client.focused          $purple  $comment $white   $purple   $purple
client.focused_inactive $bg      $bg      $white   $bg       $bg
client.urgent           $red     $red     $white   $red      $red
client.unfocused        $bg      $bg      $white   $bg       $bg
client.placeholder      $bg      $bg      $white   $bg       $bg
client.background       $bg

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango: FontAwesome 12
font pango: Fira Code 10

#  Border
for_window [class=".*"] border pixel 4

# Gaps
gaps inner 16
gaps outer 0

# Only enable gaps on a workspace when there is at least one container
smart_gaps on

# Hide edge borders only if there is one window with no gaps
hide_edge_borders smart_no_gaps

#######################################################
# Key bindings
#######################################################

# Audio shortcuts (compatible with PulseAudio?)
bindsym $mod+minus exec --no-startup-id amixer -q -D pulse sset Master 5%- unmute
bindsym $mod+equal exec --no-startup-id amixer -q -D pulse sset Master 5%+ unmute

# Take screenshots
bindsym $mod+p exec --no-startup-id $bin/screenshot

# kill focused window
bindsym $mod+q kill

# NAVIGATION using Rofi
bindsym $mod+d exec rofi -show drun

# bindsym $mod+d exec --no-startup-id "dmenu_extended_run"
# bindsym $mod+Shift+d exec "dmenu_run -nf '#F8F8F2' -nb '$black' -sb '$green' -sf '$black' -fn 'Fira Code-10' -l 16 -h 20"
# bindsym $mod+a exec "rofi -combi-modi window,drun,run,keys -show combi -modi combi -terminal $terminal -matching fuzzy -sidebar-mode"
# bindsym $mod+Shift+a exec --no-startup-id sh ~/dotfiles/config/rofi/launch.sh
# bindsym $mod+Tab exec "rofi -show window"

# Open application shortcuts
bindsym $mod+b exec brave-browser
bindsym $mod+c exec code
bindsym $mod+n exec nautilus
bindsym $mod+Return exec $terminal

# change focus
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+y split h

# split in vertical orientation
bindsym $mod+x split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
# bindsym $mod+a focus parent

# focus the child container
# bindsym $mod+d focus child

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart

# switch to workspace
# bindsym $mod+1 workspace 1
# bindsym $mod+2 workspace 2
# bindsym $mod+3 workspace 3
# bindsym $mod+4 workspace 4
# bindsym $mod+5 workspace 5
# bindsym $mod+6 workspace 6
# bindsym $mod+7 workspace 7
# bindsym $mod+8 workspace 8
# bindsym $mod+9 workspace 9
# bindsym $mod+0 workspace 10

# move focused container to workspace
# bindsym $mod+Shift+1 move container to workspace 1
# bindsym $mod+Shift+2 move container to workspace 2
# bindsym $mod+Shift+3 move container to workspace 3
# bindsym $mod+Shift+4 move container to workspace 4
# bindsym $mod+Shift+5 move container to workspace 5
# bindsym $mod+Shift+6 move container to workspace 6
# bindsym $mod+Shift+7 move container to workspace 7
# bindsym $mod+Shift+8 move container to workspace 8
# bindsym $mod+Shift+9 move container to workspace 9
# bindsym $mod+Shift+0 move container to workspace 10

# exit i3 (logout) (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode
        bindsym $left       resize shrink width 10 px or 10 ppt
        bindsym $down       resize grow height 10 px or 10 ppt
        bindsym $up         resize shrink height 10 px or 10 ppt
        bindsym $right      resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 10 px or 10 ppt
        bindsym Down        resize grow height 10 px or 10 ppt
        bindsym Up          resize shrink height 10 px or 10 ppt
        bindsym Right       resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

#######################################################
# Bar
#######################################################

bar {
	# For the default i3 status bar information
        # status_command i3status
        status_command py3status -c ~/.config/i3status/config

        # The nproc command will be executed and the result will be 
        # shown on the right side of the i3bar. You can add custom shell
        # scripts here (after exec)
        # status_command exec /usr/bin/nproc

        # The next two lines are for the font that I am using
        font pango:Fira Code 10

        # I want by i3bar to be at the top rather than the bottom
        position top

        separator_symbol        "|"
        workspace_buttons       yes

	colors {
	        background $black 
                statusline $white
                separator  $active

                focused_workspace  $active $active $white
                active_workspace   $bg     $active $white
                inactive_workspace $bg     $bg     #BFBFBF
                urgent_workspace   $red    $red    $white
                binding_mode       $red    $red    $white
	}
}

#######################################################
# Startup applications
#######################################################

# Restart
exec_always --no-startup-id feh --bg-scale ~/dotfiles/assets/ubuntu-1.png 
# exec --no-startup-id hsetroot -solid "#00000"

# Startup

# xss-lock grabs a logind suspend inhibit lock and will use i3lock to lock the
# screen before suspend. Use loginctl lock-session to lock your screen.
# exec --no-startup-id xss-lock --transfer-sleep-lock -- i3lock --nofork

exec --no-startup-id nordvpn connect spain
exec --no-startup-id pulseaudio --start

# TODO: Use the script and fix screen order
# exec --no-startup-id sh ~/dotfiles/scripts/xrandr.sh
exec --no-startup-id $bin/setup_monitors
# exec --no-startup-id xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output HDMI-2 --mode 1920x1080 --pos 0x0 --rotate normal

# exec_always --no-startup-id killall picom
exec --no-startup-id picom -b