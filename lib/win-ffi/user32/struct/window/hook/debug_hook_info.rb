module WinFFI
  module User32
    # Structure used by WH_DEBUG
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms644965
    class DEBUGHOOKINFO < FFIAdditions::Struct
      def idThread; end
      def idThread=(v) end
      def idThreadInstaller; end
      def idThreadInstaller=(v) end
      def lParam; end
      def lParam=(v) end
      def wParam; end
      def wParam=(v) end
      def code; end
      def code=(v) end

      layout idThread:          :dword,
             idThreadInstaller: :dword,
             lParam:            :lparam,
             wParam:            :wparam,
             code:              :int
    end
  end
end