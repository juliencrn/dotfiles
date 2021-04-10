#######################################################
# General settings of Py3status
#######################################################

py3status {
  interval = 5
  colors = true
  color_good = "#50FA7B"
  color_degraded = "#F1FA8C"
  color_bad = "#ff79c6"
}

# add conky config options
# See `man -P "less -p 'CONFIGURATION SETTINGS'" conky` for a full list.
conky {
    config = {
        'update_interval': 10      
    }
}

# Summary

# order += "window"
order += "tztime paris"
order += "getjson btc_price"
order += "volume master"
# order += "taskwarrior"
# order += "xscreensaver"

# order += "spotify"
# order += "uname"
order += "do_not_disturb"
# order += "memory"
order += "apt_updates"

# order += "conky proc"
# order += "conky top_cpu"
# order += "conky top_mem"
order += "conky cpu"
order += "conky memory"
# order += "conky info"

# order += "disk /"
# order += "ethernet _first_"
order += "path_exists VPN"
order += "whatismyip"



# Modules
getjson btc_price {
  color = '#f1fa8c'
	url = "https://api.coindesk.com/v1/bpi/currentprice.json"
	format = "BTC {bpi-EUR-rate_float} €"
	delimiter = "-"
	#cache_timeout = 900 # 15 minutes
}

# display total number of processes and running processes
conky proc {
    format = 'Processes [\?color=cyan {processes}/{running_processes}]'
}

# display top 3 cpu (+mem_res) processes
conky top_cpu {
    format = 'Top [\?color=darkgray '
    format += '{top name 1} '
    format += '[\?color=deepskyblue {top mem_res 1}] '
    format += '[\?color=lightskyblue {top cpu 1}%] '

    format += '{top name 2} '
    format += '[\?color=deepskyblue {top mem_res 2}] '
    format += '[\?color=lightskyblue {top cpu 2}%] '

    format += '{top name 3} '
    format += '[\?color=deepskyblue {top mem_res 3}] '
    format += '[\?color=lightskyblue {top cpu 3}%]]'
    config = {'short_units': True}
}

# display top 3 memory processes
conky top_mem {
    format = 'Top Mem [\?color=darkgray '
    format += '{top_mem name 1} '
    format += '[\?color=yellowgreen {top_mem mem_res 1}] '
    format += '[\?color=lightgreen {top_mem mem 1}%] '

    format += '{top_mem name 2} '
    format += '[\?color=yellowgreen {top_mem mem_res 2}] '
    format += '[\?color=lightgreen {top_mem mem 2}%] '

    format += '{top_mem name 3} '
    format += '[\?color=yellowgreen {top_mem mem_res 3}] '
    format += '[\?color=lightgreen {top_mem mem 3}%]]'
    config = {'short_units': True}
}

# display memory, memperc, membar + thresholds
conky memory {
    # format = 'Memory [\?color=lightskyblue {mem}/{memmax}] '
    # format = 'Memory [\?color=memperc {memperc}% \[{membar}\]]'
    format = 'RAM [\?color=memperc {memperc}%]'
    thresholds = [
        (0, 'darkgray'), (0.001, 'good'), (50, 'degraded'),
        (75, 'orange'), (85, 'bad')
    ]
}

# show cpu percents/bars + thresholds
conky cpu {
    format = 'CPU '
    format += '[\?color=cpu.cpu0 {cpu cpu0}%]'
    # format += '[\?color=cpu.cpu0 {cpu cpu0}% \[{cpubar cpu0}\]]'
    # format += '[\?color=cpu.cpu1 {cpu cpu1}% {cpubar cpu1}] '
    # format += '[\?color=cpu.cpu2 {cpu cpu2}% {cpubar cpu2}] '
    # format += '[\?color=cpu.cpu3 {cpu cpu3}% {cpubar cpu3}]'

    thresholds = [
        (0, 'darkgray'), (0.001, 'good'), (50, 'degraded'),
        (75, 'orange'), (85, 'bad')
    ]
}

# show more examples, many outputs
conky info {
    format = '[\?color=title&show OS] [\?color=output {distribution}] '
    format += '[\?color=title&show CPU] [\?color=cpu.cpu0 {cpu cpu0}%] '
    format += '[\?color=title&show Memory] [\?color=memperc {memperc}%] '
    format += '[\?color=output {mem}/{memmax} ({memperc}%)] '
    format += '[\?color=title&show HDD] [\?color=output {fs_used_perc}%] '
    format += '[\?color=title&show Kernel] [\?color=output {kernel}] '
    format += '[\?color=title&show Loadavg] [\?color=output {loadavg 1}] '
    format += '[\?color=title&show Uptime] [\?color=output {uptime}] '
    format += '[\?color=title&show Freq GHZ] [\?color=output {freq_g}]'
    color_title = '#f8f8f2'
    color_output = '#8be9fd'
    thresholds = [
        (0, 'darkgray'), (0.001, 'good'), (50, 'degraded'),
        (75, 'orange'), (85, 'bad')
    ]
}

taskwarrior {
  filter = "status:pending"
  # format = "Tasks({tasks}) {descriptions}"
  format = "[\?if=tasks  Tasks: {tasks}|No tasks]"
}

tztime paris {
  color = '#8be9fd'
  format = " %Hh %Mm %Ss - %d/%m/%Y"
  timezone = "Europe/Paris"
}

volume master {
  color = '#50fa7b'
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
  # color = '#8be9fd'
    # format = '[\?if=state |] Do not disturb: [\?color=state [\?if=state  ON|OFF]]'
    format = '[\?if=state |] Focus: [\?color=state [\?if=state ON|OFF]]'
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
  color_good = "#50fa7b"
  color_bad = "#ff79c6"
}

window {
  color = "#ffb86c"
  format = '{title}|♥'
}

whatismyip {
  # format = "{icon} {ip} - {city}, {country}"
  format = "{icon} {ip} {country}"
}

disk "/" {
  format = "SSD: %percentage_used"
}

ethernet _first_ {
  format_up = "@: %ip (%speed)"
  format_down = "@: down"
}
