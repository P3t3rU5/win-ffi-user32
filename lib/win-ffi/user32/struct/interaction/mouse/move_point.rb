module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mousemovepoint
    class MOUSEMOVEPOINT < FFIAdditions::Struct
      attr_accessor :x, :y, :time, :dwExtraInfo

      layout x:           :int,
             y:           :int,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end