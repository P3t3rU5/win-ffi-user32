module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/ns-dde-ddepoke
    # DDEPOKE structure
    # WM_DDE_POKE parameter structure for hData (LOWORD(lParam)). The actual size of this structure depends on the size
    # of the Value array.
    # TODO
    # class DDEPOKE < FFIAdditions::Struct
    #   layout :short,    :unsigned,
    #          :cfFormat, ClipboardFormats,
    #          :Value,    [:byte, 1], # This member was named rgb[1] in previous */
    # end
  end
end