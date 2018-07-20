module WinFFI
  if WINDOWS_VERSION >= 7
    module User32
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/ns-winuser-taggestureconfig
      class GESTURECONFIG < FFIAdditions::Struct
        def dwID; end
        def dwID=(v); end
        def dwWant; end
        def dwWant=(v); end
        def dwBlock; end
        def dwBlock=(v); end

        layout dwID:    :dword, # gesture ID,
               dwWant:  :dword, # settings related to gesture ID that are to be turned on,
               dwBlock: :dword  # settings related to gesture ID that are to be turned off
      end
    end
  end
end