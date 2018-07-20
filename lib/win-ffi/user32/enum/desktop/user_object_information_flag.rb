module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ms683238
    buffer = [:FLAGS, 1, :NAME, 2, :TYPE, 3, :USER_SID, 4, :TIMERPROC_EXCEPTION_SUPPRESSION, 7]

    buffer += [:HEAPSIZE, 5, :IO, 6] if WINDOWS_VERSION >= :vista

    UserObjectInformationFlag = enum :user_object_information_flag, buffer

    define_prefix(:UOI, UserObjectInformationFlag)
  end
end