require 'win-ffi/user32'

module WinFFI
  module User32
    # Get/SetWindowWord/Long offsets for use with WC_DIALOG windows
    buffer = if Architecture == "x64-mingw32"
      [
          :MSGRESULT, 0,
          # :DLGPROC, 0 + sizeof(:lresult),

      ]
    else
      [
          :MSGRESULT, 0,
          :DLGPROC,   4,
          :USER,      8,
      ]
      #define DWLP_MSGRESULT  0
      #define DWLP_DLGPROC    DWLP_MSGRESULT + sizeof(LRESULT)
      #define DWLP_USER       DWLP_DLGPROC + sizeof(DLGPROC)
    end

    DialogWindowLong = enum :dialog_window_long, buffer

    define_prefix(:DWL, DialogWindowLong)
  end
end
