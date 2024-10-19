#!/bin/bash
qm create 3000 --name "pfSense3" --ostype other --memory 1536 --cpu host --cores 2 --scsihw virtio-scsi-pci --virtio0 local-zfs:8,discard=on --net0 virtio,bridge=vmbr0,macaddr="00:24:18:0A:3B:DE"
qm set 3000 --ide2 /var/lib/vz/template/iso/pfSense-CE-2.7.2-RELEASE-amd64.iso,media=cdrom
qm set 3000 --boot order=ide2