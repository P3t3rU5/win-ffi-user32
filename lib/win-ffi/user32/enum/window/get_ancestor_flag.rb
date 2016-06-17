require 'win-ffi/user32'

module WinFFI
  module User32
    # The "real" ancestor window
    GetAncestorFlag = enum :get_ancestor_flag, [
        :PARENT,    1, # Retrieves the parent window_class. This does not include the owner, as it does with the GetParent
        # function.
        :ROOT,      2, # Retrieves the root window_class by walking the chain of parent windows.
        :ROOTOWNER, 3  # Retrieves the owned root window_class by walking the chain of parent and owner windows returned by
        # GetParent.
    ]

    define_prefix(:GA, GetAncestorFlag)
  end
end