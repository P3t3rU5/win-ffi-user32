require 'win-ffi/msftedit'

module WinFFI
  if WindowsVersion >= :vista
    module Msftedit
      # Data type defining table rows for EM_INSERTTABLE
      # https://msdn.microsoft.com/en-us/library/windows/desktop/hh768761(v=vs.85).aspx
      class TABLEROWPARMS < FFIAdditions::Struct
        layout cbRow:        :byte,
               cbCell:       :byte,
               cCell:        :byte,
               cRow:         :byte,
               dxCellMargin: :long,
               dxIndent:     :long,
               dyHeight:     :long,
               bitField:    :dword,
               cpStartRow:   :long,
               bTableLevel:  :byte,
               iCell:        :byte

        def nAlignment
          bitField & 0x7
        end

        def fRTL
          (bitfield >> 3) & 0x1
        end

        def fKeep
          (bitfield >> 4) & 0x1
        end

        def fKeepFollow
          (bitfield >> 5) & 0x1
        end

        def fWrap
          (bitfield >> 6) & 0x1
        end

        def fIdentCells
          (bitfield >> 7) & 0x1
        end

      end
    end
  end
end