module WinFFI
  module User32
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mdicreatestructa
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-mdicreatestructw
    class MDICREATESTRUCT < FFIAdditions::Struct
      attr_accessor :szClass,
                    :szTitle,
                    :hOwner,
                    :x,
                    :y,
                    :cx,
                    :cy,
                    :style,
                    :lParam

      layout szClass: :string,
             szTitle: :string,
             hOwner:  :handle,
             x:       :int,
             y:       :int,
             cx:      :int,
             cy:      :int,
             style:   :dword,
             lParam:  :lparam
    end
  end
end


