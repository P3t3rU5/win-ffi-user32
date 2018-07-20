module WinFFI
  module User32
    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getuserobjectsecurity
      # BOOL WINAPI GetUserObjectSecurity(
      #   _In_         HANDLE hObj,
      #   _In_         PSECURITY_INFORMATION pSIRequested,
      #   _Inout_opt_  PSECURITY_DESCRIPTOR pSD,
      #   _In_         DWORD nLength,
      #   _Out_        LPDWORD lpnLengthNeeded )
      def self.GetUserObjectSecurity(hObj, pSIRequested, pSD, nLength, lpnLengthNeeded) end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer, :dword, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setuserobjectsecurity
      # BOOL WINAPI SetUserObjectSecurity(
      #   _In_  HANDLE hObj,
      #   _In_  PSECURITY_INFORMATION pSIRequested,
      #   _In_  PSECURITY_DESCRIPTOR pSID )
      def self.SetUserObjectSecurity(hObj, pSIRequested, pSID) end
      attach_function 'SetUserObjectSecurity', [:handle, :pointer, :pointer], :bool
    end
  end
end