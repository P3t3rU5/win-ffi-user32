module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-input_injection_value
    class INPUT_INJECTION_VALUE < FFIAdditions::Struct
      attr_accessor :page, :usage, :value, :index

      layout page:  :ushort,
             usage: :ushort,
             value: :int32,
             index: :ushort
    end
  end
end