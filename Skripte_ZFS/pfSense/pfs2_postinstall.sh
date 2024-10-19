#!/bin/bash
qm set 2000 -delete ide2
qm set 2000 -boot order=virtio0
qm set 2000 -net0 model=virtio,bridge=vmbr0,firewall=0
qm set 2000 -onboot 1



