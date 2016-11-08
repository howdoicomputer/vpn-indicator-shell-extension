## VPN Indicator Extension

[Demo!](demo.png)

This is a *really* simple extension that is basically polls for a tun0 device from ifconfig on a three second timer. Regardless of its simplicity, it was actually incredibly difficult to make due to a lack of documentation on Gnome Shell extensions.

I would like to note down these pieces of documentation:

* http://smasue.github.io/gnome-shell-tw
* https://people.gnome.org/~gcampagna/docs/GLib-2.0/GLib.spawn_sync.html

## Installation

1. `git clone https://github.com/howdoicomputer/vpn-indicator-gnome-extension`
2. `./install.sh`

3. Then you'll want to activate the plugin either by using the Gnome Tweak Tool or by execing `gnome-shell-extension-prefs` and using that UI.

Happy VPNing!

---
