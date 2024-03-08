wsl-fix-connection () {
  echo "------------------------------"
  echo "        /etc/wsl.conf "
  echo "------------------------------"
  wsl-conf-update
  echo ""
  echo "------------------------------"
  echo "      Detecting Wifi DNS "
  echo "------------------------------"
  echo $(wsl-dns-query)
  echo "\n USING $(wsl-dns-get)"
  echo "------------------------------"
  echo "      /etc/resolv.conf "
  echo "------------------------------"
  echo "ADDING DNS"
  wsl-dns-add-auto
  echo "------------------------------"
  echo "       !!IMPORTANT !!"
  echo "------------------------------"
  echo "  - TAKE NOTE OF PREVIOUS /etc/wsl.conf"
  echo "    (incase something went wrong)"
  echo "  - RESTART WSL"
  echo "    (cmd$ wsl --shutdown)"
  echo "------------------------------"
}

# Add required lines to /etc/wsl.conf
wsl-conf-update () {
  # Create wsl.conf if it doesnt exist
  if [ -f /etc/wsl.conf ]
    then echo "PREVIOUS /etc/wsl.conf:"; cat /etc/wsl.conf
    else sudo touch /etc/wsl.conf
  fi
  # Add lines to wsl.conf if they're not already there
  if grep -Pzoq '[network].*\n.*generateResolvConf = false' /etc/wsl.conf
  then
    echo "\nNO ACTION TAKEN: required lines \n   [network]\n   generateResolvConf = false \nappear to already be present"
  else 
    echo "\nADDING LINES TO /etc/wsl.conf"
    # Make /etc/wsl.conf writeable
    sudo chattr -i /etc/wsl.conf
    # Add required lines
    echo "[network]\ngenerateResolvConf = false" | sudo tee -a /etc/wsl.conf
    # Make unwriteable
    sudo chattr +i /etc/wsl.conf
    # Print wsl.conf
    echo "\n/etc/wsl.conf:"
    cat /etc/wsl.conf
  fi  
}
wsl-dns-add-auto () {
  if [ "$1" ]
    # Check that no arguments were given
    then 
      echo "No arguments expected, but 1+ supplied (e.g. wsl-dsn-add-auto)"
    # Get the wifi DNS from windows and add to resolv.conf
    else 
      # Get DNS and trim any whitespace
      DNS=$(wsl-dns-get | awk '{$1=$1};1')
      wsl-dns-add "$DNS" > /dev/null
      wsl-clean-resolv-conf
  fi
}
wsl-dns-add () {
  # Check an argument was provided
  if [ ! "$1" ]; then 
    echo "No DNS given (e.g. wsl-dns-add 132.23.42.7)"
  else
    # Make resolv.conf writeable
    sudo chattr -i /etc/resolv.conf
    # Add the line 'nameserver X.X.X.X' { suppress echo to console; }
    echo "nameserver $1" | sudo tee -a /etc/resolv.conf > /dev/null
    # Make resolv.conf unwriteable
    sudo chattr +i /etc/resolv.conf
    # Print the new contents of resolv.conf
    wsl-print-resolv-conf
  fi
}
wsl-dns-remove () {
  # Check an argument was provided
  if [ ! "$1" ]; then 
    echo "No DNS given (e.g. wsl-remove-dns 132.23.42.7)"
  # Check if the argument matches one or more lines in resolv.conf
  elif grep -q "$1" /etc/resolv.conf; then
    # Make resolv.conf writeable
    sudo chattr -i /etc/resolv.conf
    # remove matched lines
    sudo sed -i "/$1/d" /etc/resolv.conf
    # Make unwriteable
    sudo chattr +i /etc/resolv.conf
    wsl-print-resolv-conf
  # If argument not in resolv.conf, print error msg
  else
    echo "DNS $1 not found in /etc/resolv.conf (see contents with wsl-print-resolv-conf)"
  fi
}
wsl-dns-query () {
  # Print all headings with DNS server entries in output of ipconfig /all (and the entries) 
  echo "$(ipconfig.exe /all)" | \
    awk '/^[A-Za-z].*:/{heading=$0; next} /DNS Servers/{print heading; print $0}'
}
wsl-dns-get () {
  # Method from ChatGPT: Get ipconfig.exe output from windows ipconfig command
  echo "$(ipconfig.exe /all)" | \
    # Get the wifi block of the output
    awk '/Wireless LAN adapter WiFi:/,/^$/ {if (/^$/) exit; else print}' | \
    # Get the DNS Servers line
    grep "DNS Servers" | \
    # Return just the WIFI DNS number X.X.X.X
    awk '{print $NF}' |
    cat
}
wsl-clean-resolv-conf () {
  # Make resolv.conf writeable
  sudo chattr -i /etc/resolv.conf
  # Delete leading/trailing whitespaces
  awk '{$1=$1};1' < /etc/resolv.conf | sponge test.txt
  # Delete duplicate lines
  awk '!seen[$0]++' /etc/resolv.conf > /dev/null
  sort -i -b -u /etc/resolv.conf | sudo tee /etc/resolv.conf > /dev/null
  # Make resolv.conf unwriteable
  sudo chattr +i /etc/resolv.conf
  wsl-print-resolv-conf
}
wsl-print-resolv-conf () {
  echo "/etc/resolv.conf:"
  cat /etc/resolv.conf
}
wsl-delete-last-line-resolv-conf () {
  sed '$d' /etc/resolv.conf
}
