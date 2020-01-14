#!/usr/bin/env bash

__SCRIPTS_DIR="$(dirname "$(pwd)${0:1}")"
__SRC_DIR="${__SCRIPTS_DIR}/../src"

__TMP='/boot/refind_linux.conf'
sudo cp "${__SRC_DIR}${__TMP}" "${__TMP}"
__TMP='/efi/EFI/refind'
sudo cp -r "${__SRC_DIR}${__TMP}/icons" "${__TMP}"
sudo cp -r "${__SRC_DIR}${__TMP}/themes" "${__TMP}"
__TMP='/efi/EFI/refind/refind.conf'
sudo cp "${__SRC_DIR}${__TMP}" "${__TMP}"
