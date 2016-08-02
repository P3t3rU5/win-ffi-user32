require 'win-ffi/user32'

module WinFFI
  module User32
    # Windowstation-specific access flags
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms687391(v=vs.85).aspx
    WindowStationAccessRights = enum :window_station_access_rights, [
        :ENUMDESKTOPS,      0x0001,
        :READATTRIBUTES,    0x0002,
        :ACCESSCLIPBOARD,   0x0004,
        :CREATEDESKTOP,     0x0008,
        :WRITEATTRIBUTES,   0x0010,
        :ACCESSGLOBALATOMS, 0x0020,
        :EXITWINDOWS,       0x0040,
        :ENUMERATE,         0x0100,
        :READSCREEN,        0x0200,
        :ALL_ACCESS,        0x037F,
    ]

    define_prefix(:WINSTA, WindowStationAccessRights)
  end
end

