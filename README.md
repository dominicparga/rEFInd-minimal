# Fork of rEFInd-minimal

This fork of [github.com/EvanPurkhiser/rEFInd-minimal](https://github.com/EvanPurkhiser/rEFInd-minimal) is a minimal theme for [rEFInd](http://www.rodsbooks.com/refind/).
It adds different color-themes, adds/changes some icons and refactors the original project a little.
Further, it is extended by the original refind-files to be easily copied into my refind-folder.

## Usage

The following steps describe how to add this theme to your `refind`-directory.

 1. Locate your `refind`-directory in your `EFI`-location, e.g. `/efi/EFI/refind`.
    The commands `fdisk -l` and `mount` may help.
 1. Create a folder `themes` in this directory.
 1. Clone this repository into the `themes` directory.
 1. Add `include themes/rEFInd-minimal/theme.conf` and `include themes/rEFInd-minimal/XYZ/theme.conf` at the end of `refind.conf`, where `XYZ` stands for your preferred color-theme, e.g. `dark`.

## Original `theme.conf`

The original `theme.conf` of `EvanPurkhiser/rEFInd-minimal` contains comments, which are mentioned below and removed from the conf-files in this project to reduce redundant copies of it.

```zsh
# Minimal refind theme

# Hide user interface elements for personal preference or to increase
# security:
#  banner      - the rEFInd title banner (built-in or loaded via "banner")
#  label       - boot option text label in the menu
#  singleuser  - remove the submenu options to boot Mac OS X in single-user
#                or verbose modes; affects ONLY MacOS X
#  safemode    - remove the submenu option to boot Mac OS X in "safe mode"
#  hwtest      - the submenu option to run Apple's hardware test
#  arrows      - scroll arrows on the OS selection tag line
#  hints       - brief command summary in the menu
#  editor      - the options editor (+, F2, or Insert on boot options menu)
#  all         - all of the above
# Default is none of these (all elements active)
#
hideui singleuser,hints,arrows,label,badges

# Set the name of a subdirectory in which icons are stored. Icons must
# have the same names they have in the standard directory. The directory
# name is specified relative to the main rEFInd binary's directory. If
# an icon can't be found in the specified directory, an attempt is made
# to load it from the default directory; thus, you can replace just some
# icons in your own directory and rely on the default for others.
# Default is "icons".
#
icons_dir themes/rEFInd-minimal/light/icons

# Use a custom title banner instead of the rEFInd icon and name. The file
# path is relative to the directory where refind.efi is located. The color
# in the top left corner of the image is used as the background color
# for the menu screens. Currently uncompressed BMP images with color
# depths of 24, 8, 4 or 1 bits are supported, as well as PNG images.
#
banner themes/rEFInd-minimal/light/background.png

# Tells rEFInd whether to display banner images pixel-for-pixel (noscale)
# or to scale banner images to fill the screen (fillscreen). The former is
# the default.
#
banner_scale fillscreen

# Custom images for the selection background. There is a big one (144 x 144)
# for the OS icons, and a small one (64 x 64) for the function icons in the
# second row. If only a small image is given, that one is also used for
# the big icons by stretching it in the middle. If only a big one is given,
# the built-in default will be used for the small icons.
#
# Like the banner option above, these options take a filename of an
# uncompressed BMP image file with a color depth of 24, 8, 4, or 1 bits,
# or a PNG image. The PNG format is required if you need transparency
# support (to let you "see through" to a full-screen banner).
#
selection_big   themes/rEFInd-minimal/light/selection_big.png
selection_small themes/rEFInd-minimal/light/selection_small.png

# Which non-bootloader tools to show on the tools line, and in what
# order to display them:
#  shell           - the EFI shell (requires external program; see rEFInd
#                    documentation for details)
#  gptsync         - the (dangerous) gptsync.efi utility (requires external
#                    program; see rEFInd documentation for details)
#  apple_recovery  - boots the Apple Recovery HD partition, if present
#  mok_tool        - makes available the Machine Owner Key (MOK) maintenance
#                    tool, MokManager.efi, used on Secure Boot systems
#  about           - an "about this program" option
#  exit            - a tag to exit from rEFInd
#  shutdown        - shuts down the computer (a bug causes this to reboot
#                    EFI systems)
#  reboot          - a tag to reboot the computer
#  firmware        - a tag to reboot the computer into the firmware's
#                    user interface (ignored on older computers)
# Default is shell,apple_recovery,mok_tool,about,shutdown,reboot,firmware
#
showtools shutdown
```

## Good sources

This repository forks, bases on and includes images and ideas from
    EvanPurkhiser
    https://github.com/EvanPurkhiser/rEFInd-minimal

The OS-icons 'Lightness for burg' are from
    SWOriginal
    http://sworiginal.deviantart.com/art/Lightness-for-burg-181461810]

The background 'Minimalist wallpaper' is from
    LeonardoAlanB
    http://leonardoalanb.deviantart.com/art/Minimalist-wallpaper-295519786
