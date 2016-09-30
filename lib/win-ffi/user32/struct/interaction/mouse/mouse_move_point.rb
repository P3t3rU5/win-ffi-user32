module WinFFI
  module User32
    class MOUSEMOVEPOINT < FFIAdditions::Struct
      layout x:             :int,
             y:             :int,
             time:        :dword,
             dwExtraInfo: :ulong
    end
  end
end