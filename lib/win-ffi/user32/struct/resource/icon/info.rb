module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-_iconinfo
    class ICONINFO < FFIAdditions::Struct
      def fIcon; end
      def fIcon=(v) end
      def xHotspot; end
      def xHotspot=(v) end
      def yHotspot; end
      def yHotspot=(v) end
      def hbmMask; end
      def hbmMask=(v) end
      def hbmColor; end
      def hbmColor=(v) end

      layout fIcon:    :bool,
             xHotspot: :dword,
             yHotspot: :dword,
             hbmMask:  :pointer,
             hbmColor: :pointer
    end
  end
end