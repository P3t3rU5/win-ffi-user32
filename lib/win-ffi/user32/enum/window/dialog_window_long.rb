module WinFFI
  module User32
    # Get/SetWindowWord/Long offsets for use with WC_DIALOG windows
    buffer = if WinFFI.x64?
      [:MSGRESULT, 0, :DLGPROC, 4, :USER, 8]
    else
      [:MSGRESULT, 0]
      # TODO
      #define DWLP_DLGPROC    DWLP_MSGRESULT + sizeof(LRESULT)
      #define DWLP_USER       DWLP_DLGPROC + sizeof(DLGPROC)
    end

    DialogWindowLong = enum :dialog_window_long, buffer

    define_prefix(:DWL, DialogWindowLong)
  end
end
