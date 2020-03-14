module WinFFI
  module User32
    # Menu item resource format
    # https://docs.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-menuitemtemplateheader
    class MENUITEMTEMPLATEHEADER < FFIAdditions::Struct
      attr_accessor :versionNumber, :offset

      layout versionNumber: :word,
             offset:        :word
    end
  end
end