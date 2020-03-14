module WinFFI
  if WINDOWS_VERSION >= :xp
    module User32
      # https://docs.microsoft.com/en-us/windows/win32/api/commctrl/ns-commctrl-editballoontip
      class EDITBALLOONTIP < FFIAdditions::Struct
        attr_accessor :cbStruct,
                      :pszTitle,
                      :pszText,
                      :ttiIcon

        layout cbStruct: :dword,
               pszTitle: :string,
               pszText: :string,
               ttiIcon: :int
      end
    end
  end
end
