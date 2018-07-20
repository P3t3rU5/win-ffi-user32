module WinFFI
  module User32
    # lParam of WM_COPYDATA message points to...
    # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-tagcopydatastruct
    class COPYDATASTRUCT < FFIAdditions::Struct
      def dwData; end
      def dwData=(v); end
      def cbData; end
      def cbData=(v); end
      def lpData; end
      def lpData=(v); end

      layout dwData: :ulong,
             cbData: :dword,
             lpData: :pointer
    end
  end
end