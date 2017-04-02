#!/bin/bash

find /home/koffi/Vidéos/scripts/ -type f -printf '%15s %p\n' | sort -rn | less
