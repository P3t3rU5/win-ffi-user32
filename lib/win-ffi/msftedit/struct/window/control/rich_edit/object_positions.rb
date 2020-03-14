module WinFFI
  module Msftedit
    # https://docs.microsoft.com/en-us/windows/win32/api/richedit/ns-richedit-objectpositions
    class OBJECTPOSITIONS < FFIAdditions::Struct
      attr_accessor :nmhdr, :cObjectCount, :pcpPositions

      layout nmhdr:        User32::NMHDR,
             cObjectCount: :long,
             pcpPositions: :pointer
    end
  end
end