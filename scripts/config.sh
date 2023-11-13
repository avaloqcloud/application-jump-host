#cloud-config
write_files:
  - path: /root/setup.sh
    permissions: '755'
    content: |
      #!/bin/bash
      hostname > /root/output

runcmd:
 - bash /root/setup.sh