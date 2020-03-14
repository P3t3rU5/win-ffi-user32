require 'win-ffi/core/struct/rect'

require_relative '../notification_message/header'

module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-nmcustomdraw
    class NMCUSTOMDRAW < FFIAdditions::Struct
      attr_accessor :hdr,
                    :dwDrawStage,
                    :hdc,
                    :rc,
                    :dwItemSpec,
                    :uItemState,
                    :lItemlParam

      layout hdr:         User32::NMHDR,
             dwDrawStage: :dword,
             hdc:         :hdc,
             rc:          RECT,
             dwItemSpec:  :dword_ptr,
             uItemState:  :uint,
             lItemlParam: :lparam
    end
  end
end