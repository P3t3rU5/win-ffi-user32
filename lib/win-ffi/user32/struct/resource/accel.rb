require_relative '../../enum/resource/accelerator_flag'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-accel
    class ACCEL < FFIAdditions::Struct
      attr_accessor :fvirt, :key, :cmd

      layout fvirt: AcceleratorFlag,
             key:   :word,
             cmd:   :word
    end
  end
end