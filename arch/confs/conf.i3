#cody's i3 config
set $mod Mod4

#monitor order
#no nvidia driver
#exec xrandr --output DP-1 --output HDMI-1 --right-of DP-1 &
#with nvidia drivers
exec xrandr --output DP-0 --output HDMI-0 --right-of DP-0 &
#exec xranr --auto
#set workspaces
workspace 2 output HDMI-0
workspace 1 output DP-0

set $stdgap 20

#new_window 1pixel
gaps inner $stdgap
gaps outer 0

default_border pixel 2
client.focused #000000 #000000 #000000 #000000 #888888
client.focused_inactive #000000 #000000 #000000 #000000 #000000
client.unfocused #000000 #000000 #000000 #000000 #000000
client.urgent #000000 #000000 #000000 #000000 #000000
client.placeholder #000000 #000000 #000000 #000000 #000000
client.background #000000

bindsym $mod+z gaps inner current plus 5
bindsym $mod+Shift+z gaps inner current minus 5
bindsym $mod+x gaps inner current set $stdgap
bindsym $mod+Shift+x gaps inner current set 0

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
font pango:monospace 12

# This font is widely installed, provides lots of unicode glyphs, right-to-left
# text rendering and scalability on retina/hidpi displays (thanks to pango).
#font pango:DejaVu Sans Mono 8

# Before i3 v4.8, we used to recommend this one as the default:
# font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1
# The font above is very space-efficient, that is, it looks good, sharp and
# clear in small sizes. However, its unicode glyph coverage is limited, the old
# X core fonts rendering does not support right-to-left and this being a bitmap
# font, it doesn’t scale on retina/hidpi displays.

# Use Mouse+$mod to drag floating windows to their wanted position
#floating_modifier $mod

# start a terminal
#bindsym $mod+Return exec i3-sensible-terminal
bindsym $mod+b exec ~/scripts/st.sh
exec --no-startup-id ~/scripts/st-float
for_window [class="st" instance="stfloat"] move scratchpad, resize set 2400 1300, move position 80 70;
bindsym $mod+space [class="st" instance="stfloat"] scratchpad show;
# kill focused window
bindsym $mod+f kill

# start dmenu (a program launcher)
bindsym $mod+h exec dmenu_run
bindsym Print exec screenshot0d

# change focus
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

bindsym $mod+a focus left
bindsym $mod+e focus down
bindsym $mod+u focus up
bindsym $mod+o focus right

# move focused window
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

bindsym $mod+Shift+a move left
bindsym $mod+Shift+e move down
bindsym $mod+Shift+u move up
bindsym $mod+Shift+o move right

# split in horizontal orientation
bindsym $mod+k split h

# split in vertical orientation
bindsym $mod+p split v

# enter fullscreen mode for the focused container
bindsym $mod+n fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
#bindsym $mod+Shift+s layout stacking
#bindsym $mod+Shift+w layout tabbed
#bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+f floating toggle

# change focus between tiling / floating windows
#bindsym $mod+space focus mode_toggle

# focus the parent container
#bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
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

# reload the configuration file
bindsym $mod+Shift+d reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+s restart
# exit i3 (logs you out of your X session)
#bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
bindsym $mod+Shift+t exit

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        set $dt 5

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width $dt px or $dt ppt
        bindsym Down resize grow height $dt px or $dt ppt
        bindsym Up resize shrink height $dt px or $dt ppt
        bindsym Right resize grow width $dt px or $dt ppt

        bindsym j resize shrink width $dt px or $dt ppt
        bindsym i resize grow height $dt px or $dt ppt
        bindsym k resize shrink height $dt px or $dt ppt
        bindsym u resize grow width $dt px or $dt ppt

        # back to normal: Enter or Escape or $mod+r
        bindsym Return mode "default"
        bindsym Escape mode "default"
        bindsym $mod+r mode "default"
}

bindsym $mod+r mode "resize"

bindsym $mod+j exec firefox

for_window [class="ffplay"] floating enable

# Simple bar when shit breaks
#Bar {  status_command i3status }

exec --no-startup-id ~/scripts/run-shapebar

exec picom --xrender-sync-fence
