require 'win-ffi/user32'

module WinFFI
  module User32
    # SPI_SETDESKWALLPAPER defined constants
    SpiSetDesktopWallpaper = enum :spi_set_desktop_wallpaper, [
        :DEFAULT, -1,
    ]

    define_prefix(:SETWALLPAPER, SpiSetDesktopWallpaper)
  end
end