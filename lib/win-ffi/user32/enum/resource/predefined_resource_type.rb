module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms648009(v=vs.85).aspx
    PredefinedResourceType = enum :predefined_resource_type, [
        :CURSOR,        1,
        :BITMAP,        2,
        :ICON,          3,
        :MENU,          4,
        :DIALOG,        5,
        :STRING,        6,
        :FONTDIR,       7,
        :FONT,          8,
        :ACCELERATOR,   9,
        :RCDATA,       10,
        :MESSAGETABLE, 11,

        :GROUP_CURSOR, 12,
        :GROUP_ICON,   14,
        :VERSION,      16,
        :DLGINCLUDE,   17,
        :PLUGPLAY,     19,
        :VXD,          20,
        :ANICURSOR,    21,
        :ANIICON,      22,
        :HTML,         23,
        :MANIFEST,     24
    ]

    define_prefix(:RT, PredefinedResourceType)
  end
end