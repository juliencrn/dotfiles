#######################################################
# General settings
#######################################################

general {
  interval = 5
  colors = true
  color_good = "#50FA7B"
  color_degraded = "#F1FA8C"
  color_bad = "#FF5555"
}

order += "taskwarrior"
# order += "xscreensaver"
order += "tztime paris"
order += "volume master"
order += "spotify"
# order += "uname"
# order += "window"
# order += "coin_market"
order += "do_not_disturb"
# order += "lm_sensors"
# order += "speedtest"
order += "apt_updates"
order += "memory"
# order += "disk /"
# order += "ethernet _first_"
order += "path_exists VPN"
order += "whatismyip"


#######################################################
# Activated modules
#######################################################

taskwarrior {
  filter = "status:pending"
  # format = "Tasks({tasks}) {descriptions}"
  format = "[\?if=tasks  Tasks: {tasks}|No tasks]"
}

tztime paris {
  format = " %H:%M:%S - %d/%m/%Y"
  timezone = "Europe/Paris"
}

volume master {
  format = "  %volume" 
	device = "default"
	mixer = "Master"
	mixer_idx = 0
}

spotify {
    button_next = 4
    button_play_pause = 1
    button_previous = 5
    format = " {artist}: {title}"
    format_down = ""
}

do_not_disturb {
    format = '[\?if=state |] Do not disturb: [\?color=state [\?if=state  ON|OFF]]'
}

apt_updates {
  format = " {apt}"
}

memory {
  format = "  RAM: %percentage_used"
  threshold_degraded = "10%"
  format_degraded = "MEMORY: %free"
}

path_exists VPN {
  # path exists when a VPN tunnel launched by nmcli/nm-applet is active
  path = "/proc/sys/net/ipv4/conf/tun0"
  format = " %title: %status"
  format_down = " %title: %status"
}

whatismyip {
  format = "{icon} {ip} - {city}, {country} "
}


#######################################################
# Not Activated modules
#######################################################

disk "/" {
  format = "SSD: %percentage_used"
}

ethernet _first_ {
  format_up = "@: %ip (%speed)"
  format_down = "@: down"
}