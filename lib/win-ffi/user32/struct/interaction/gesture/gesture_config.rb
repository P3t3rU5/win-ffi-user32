module WinFFI
  module User32
    if WINDOWS_VERSION >= 7
      # https://msdn.microsoft.com/en-us/library/windows/desktop/dd353231(v=vs.85).aspx
      class GESTURECONFIG < FFIAdditions::Struct
        layout dwID:    :dword, # gesture ID,
               dwWant:  :dword, # settings related to gesture ID that are to be turned on,
               dwBlock: :dword  # settings related to gesture ID that are to be turned off
      end
    end
  end
end