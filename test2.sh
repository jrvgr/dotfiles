#!/bin/bash

out1="$(acpi -i)"

echo -e $out1 | dmenu -l 2
