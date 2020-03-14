module WinFFI
  module User32
    # lParam of WM_COPYDATA message points to...
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-copydatastruct
    class COPYDATASTRUCT < FFIAdditions::Struct
      attr_accessor :dwData, :cbData, :lpData

      layout dwData: :ulong,
             cbData: :dword,
             lpData: :pointer
    end
  end
end