require 'win-ffi/user32'

module WinFFI
  module User32
    # Predefined Clipboard Formats
    ClipboardFormat = enum :clipboard_format, [
        :TEXT,                 1,
        :BITMAP,               2,
        :METAFILEPICT,         3,
        :SYLK,                 4,
        :DIF,                  5,
        :TIFF,                 6,
        :OEMTEXT,              7,
        :DIB,                  8,
        :PALETTE,              9,
        :PENDATA,             10,
        :RIFF,                11,
        :WAVE,                12,
        :UNICODETEXT,         13,
        :ENHMETAFILE,         14,
        :HDROP,               15,
        :LOCALE,              16,
        :DIBV5,               17,
        :MAX,                 18, # Assume Windows 2000 or later
        :OWNERDISPLAY,    0x0080,
        :DSPTEXT,         0x0081,
        :DSPBITMAP,       0x0082,
        :DSPMETAFILEPICT, 0x0083,
        :DSPENHMETAFILE,  0x008E,

        # "Private" formats don't get GlobalFree()'d
        :PRIVATEFIRST,    0x0200,
        :PRIVATELAST,     0x02FF,

        # "GDIOBJ" formats do get DeleteObject()'d
        :GDIOBJFIRST,     0x0300,
        :GDIOBJLAST,      0x03FF,
    ]
  end
end