module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/dde/ns-dde-ddedata
    # DDEDATA structure
    # WM_DDE_DATA parameter structure for hData (LOWORD(lParam)). The actual size of this structure depends on the size
    # of the Value array.
    # TODO
    # class DDEDATA < FFIAdditions::Struct
    #   layout :short,    :unsigned,
    #          :cfFormat, :short,
    #          :Value,    [:byte, 1]
    # end
  end
end
