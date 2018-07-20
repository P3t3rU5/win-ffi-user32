module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/ns-dde-ddeack
    # DDEACK structure
    #
    # Structure of wStatus (LOWORD(lParam)) in WM_DDE_ACK message sent in response to a WM_DDE_DATA, WM_DDE_REQUEST,
    # WM_DDE_POKE, WM_DDE_ADVISE, or WM_DDE_UNADVISE message.
    # TODO
    # class DDEACK < FFIAdditions::Struct
    #   layout :short, :ushort,
    #
    # end
  end
end