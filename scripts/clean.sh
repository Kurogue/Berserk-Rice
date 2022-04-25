#!/bin/bash

echo $(sudo pacman -Rsn $(pacman -Qdtq))
