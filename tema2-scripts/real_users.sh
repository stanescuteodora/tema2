#!/bin/bash
cat /etc/passwd | grep -e /bin/sh -e /bin/dash -e /bin/bash -e /bin/rbash -e /bin/x | cut -d ":" -f1 | sort 
