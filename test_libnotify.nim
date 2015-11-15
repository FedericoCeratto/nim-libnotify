
import libnotify

when isMainModule:
  let n = newNotifyClient("a")
  n.set_app_name("hello")
  doAssert n.get_app_name() == "hello"

  n.send_new_notification("low", "no big deal", "file://usr/share/icons/gnome/scalable/apps/user-info-symbolic.svg",
    urgency=NotificationUrgency.Low, timeout=1)

  n.send_new_notification("normal", "hm", "STOCK_YES",
    urgency=NotificationUrgency.Normal, timeout=2)

  n.send_new_notification("crit", "uh-oh", "STOCK_NO",
    urgency=NotificationUrgency.Critical, timeout=3)

  n.uninit()
  echo "done"
