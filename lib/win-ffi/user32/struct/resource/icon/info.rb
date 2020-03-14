module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-iconinfo
    class ICONINFO < FFIAdditions::Struct
      attr_accessor :fIcon,
                    :xHotspot,
                    :yHotspot,
                    :hbmMask,
                    :hbmColor

      layout fIcon:    :bool,
             xHotspot: :dword,
             yHotspot: :dword,
             hbmMask:  :pointer,
             hbmColor: :pointer
    end
  end
end