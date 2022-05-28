# Cody's i3 config
set $mod Mod4

# monitor order
# no nvidia driver
# exec xrandr --output DP-1 --output HDMI-1 --right-of DP-1 &
# with nvidia drivers
exec xrandr --output DP-0 --output HDMI-0 --right-of DP-0 &
# bar, compositor, autotiling, scratchpad
exec --no-startup-id ~/scripts/run-shapebar
exec picom --xrender-sync-fence
exec --no-startup-id "st -c stfloat"

# set workspaces
workspace 2 output HDMI-0
workspace 1 output DP-0

set $stdgap 10
set $dt 5

gaps inner $stdgap
gaps outer 0
smart_gaps on

# border colours
default_border pixel 2
client.focused #000000 #000000 #000000 #000000 #666666
client.focused_inactive #000000 #000000 #000000 #000000 #000000
client.unfocused #000000 #000000 #000000 #000000 #000000
client.urgent #000000 #000000 #000000 #000000 #000000
client.placeholder #000000 #000000 #000000 #000000 #000000
client.background #000000
hide_edge_borders smart

# font for window titles
font pango:monospace 12

# application binds
bindsym $mod+b exec --no-startup-id st
bindsym $mod+h exec --no-startup-id dmenu_run
bindsym $mod+j exec firefox
bindsym $mod+Shift+j exec firefox --private-window

# i3 binds
bindsym $mod+f kill
bindsym $mod+n fullscreen toggle
bindsym $mod+Shift+f floating toggle
bindsym $mod+k split v
bindsym $mod+p split h
bindsym $mod+space [class="stfloat" instance="st"] scratchpad show;

bindsym $mod+z gaps inner current plus 5
bindsym $mod+Shift+z gaps inner current minus 5
bindsym $mod+x gaps inner current set $stdgap
bindsym $mod+Shift+x gaps inner current set 0

# window classes
for_window [class="stfloat" instance="st"] move scratchpad, resize set 2400 1300, move position 80 70;
for_window [class="ffplay"] floating enable

# change focus
focus_on_window_activation none

bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

bindsym $mod+a focus left
bindsym $mod+e focus down
bindsym $mod+u focus up
bindsym $mod+o focus right

# change focus between tiling / floating windows
bindsym $mod+Shift+space focus mode_toggle

# move focused window
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

bindsym $mod+Shift+a move left
bindsym $mod+Shift+e move down
bindsym $mod+Shift+u move up
bindsym $mod+Shift+o move right


# resize windows
bindsym $mod+r mode "resize"
mode "resize" {
    bindsym a resize shrink width  $dt px
    bindsym o resize grow   width  $dt px
    bindsym u resize shrink height $dt px
    bindsym e resize grow   height $dt px

    # same bindings, but for the arrow keys
    bindsym Left  resize shrink width  $dt px
    bindsym Right resize grow   width  $dt px
    bindsym Up    resize shrink height $dt px
    bindsym Down  resize grow   height $dt px

    # back to normal
    bindsym Return mode "default"
    bindsym Escape mode "default"
    bindsym $mod+r mode "default"
}

# define workspaces
set $ws1 "1"
set $ws2 "2"
set $ws3 "3"
set $ws4 "4"
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "10"

# switch to workspace
bindsym $mod+q workspace $ws1
bindsym $mod+g workspace $ws2
bindsym $mod+m workspace $ws3
bindsym $mod+l workspace $ws4
bindsym $mod+w workspace $ws5
bindsym $mod+y workspace $ws6
bindsym $mod+1 workspace $ws7
bindsym $mod+2 workspace $ws8
bindsym $mod+3 workspace $ws9
bindsym $mod+4 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+q move container to workspace $ws1
bindsym $mod+Shift+g move container to workspace $ws2
bindsym $mod+Shift+m move container to workspace $ws3
bindsym $mod+Shift+l move container to workspace $ws4
bindsym $mod+Shift+w move container to workspace $ws5
bindsym $mod+Shift+y move container to workspace $ws6
bindsym $mod+Shift+1 move container to workspace $ws7
bindsym $mod+Shift+2 move container to workspace $ws8
bindsym $mod+Shift+3 move container to workspace $ws9
bindsym $mod+Shift+4 move container to workspace $ws10

# reload, restart, exit
bindsym $mod+Shift+d reload
bindsym $mod+Shift+s restart
bindsym $mod+Shift+t exec "i3-nagbar -t warning -m 'Kill i3?' -B 'Kill' 'i3-msg exit'"
# bindsym $mod+Shift+t exit

