require 'win-ffi/user32'

module WinFFI
  module User32
    # Reserved IDs for system objects
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd373606(v=vs.85).aspx
    SystemObjectId = enum :system_object_id, [
        :WINDOW,            (0x00000000),
        :SYSMENU,           (-1),
        :TITLEBAR,          (-2),
        :MENU,              (-3),
        :CLIENT,            (-4),
        :VSCROLL,           (-5),
        :HSCROLL,           (-6),
        :SIZEGRIP,          (-7),
        :CARET,             (-8),
        :CURSOR,            (-9),
        :ALERT,             (-10),
        :SOUND,             (-11),
        :QUERYCLASSNAMEIDX, (-12),
        :NATIVEOM,          (-16),
    ]

    define_prefix(:OBJID, SystemObjectId)
  end
end

