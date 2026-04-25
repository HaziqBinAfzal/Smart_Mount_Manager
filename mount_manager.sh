#!/bin/bash

while true; do
  echo "===== SMART MOUNT MANAGER ====="
  echo "1. Show devices"
  echo "2. Mount device"
  echo "3. Unmount device"
  echo "4. Exit"
  read -p "Choose option: " choice

  case $choice in
    1)
      lsblk
      ;;
    2)
      read -p "Enter device (e.g /dev/sdb1): " dev
      read -p "Enter mount point (e.g /mnt): " mp
      sudo mount $dev $mp
      ;;
    3)
      read -p "Enter mount point: " mp
      sudo umount $mp
      ;;
    4)
      exit
      ;;
    *)
      echo "Invalid option"
      ;;
  esac
done
