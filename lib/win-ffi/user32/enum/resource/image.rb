module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-loadimagea
    Image = enum :image, [:BITMAP, 0, :ICON, 1, :CURSOR, 2, :ENHMETAFILE, 3]

    define_prefix(:IMAGE, Image)
  end
end