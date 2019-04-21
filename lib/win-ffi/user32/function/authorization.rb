module WinFFI
  module User32
    if WINDOWS_VERSION >= :xp
      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-getuserobjectsecurity
      # @param [FFI::Pointer] hObj
      # @param [FFI::Pointer] pSIRequested
      # @param [FFI::Pointer] pSD
      # @param [Integer] nLength
      # @param [FFI::Pointer] lpnLengthNeeded
      # @return [true, false]
      def self.GetUserObjectSecurity(hObj, pSIRequested, pSD, nLength, lpnLengthNeeded) end
      attach_function 'GetUserObjectSecurity', [:handle, :pointer, :pointer, :dword, :pointer], :bool

      # https://docs.microsoft.com/en-us/windows/desktop/api/winuser/nf-winuser-setuserobjectsecurity
      # @param [FFI::Pointer] hObj
      # @param [FFI::Pointer] pSIRequested
      # @param [FFI::Pointer] pSID
      # @return [true, false]
      def self.SetUserObjectSecurity(hObj, pSIRequested, pSID) end
      attach_function 'SetUserObjectSecurity', [:handle, :pointer, :pointer], :bool
    end
  end
end