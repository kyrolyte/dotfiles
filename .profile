export ENV=$HOME/.ashrc
export PATH=$PATH:/usr/local/bin

online() {
  echo "Starting Wi-Fi..."
  doas rc-service wpa_supplicant start

  echo "Waiting for handshake..."
  sleep 5

  echo "Requesting IP address..."
  doas udhcpc -b -R -i wlan0

  echo "Network check..."
  ip addr show wlan0 | grep "inet" || echo "Error: No IP assigned."
}

offline() {
  echo "Releasing DHCP lease..."
  doas pkill -SIGUSR2 -f "udhcpc.*wlan0"  
  doas pkill -f "udhcpc.*wlan0"  
  
  echo "Enabling Airpline Mode..."
  doas rc-service wpa_supplicant stop

  echo "Hard-disable interface..."
  doas ip link set wlan0 down
}
