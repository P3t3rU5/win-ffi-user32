require 'win-ffi/msftedit'

module WinFFI
  module Msftedit
    # Data type defining table cells for EM_INSERTTABLE
    class TABLECELLPARMS < FFIAdditions::Struct
      layout dxWidth:          :long,
             bitField:         :word,
             wShading:         :word,
             dxBrdrLeft:      :short,
             dyBrdrTop:       :short,
             dyBrdrBottom:    :short,
             crBrdrLeft:   :colorref,
             crBrdrTop:    :colorref,
             crBrdrRight:  :colorref,
             crBrdrBottom: :colorref,
             crBackPat:    :colorref,
             crForePat:    :colorref

      def nVertAlign
        bitField & 0x3
      end

      def fMergeTop
        (bitField >> 2) & 0x1
      end

      def fMergePrev
        (bitField >> 3) & 0x1
      end

      def fVertical
        (bitField >> 4) & 0x1
      end

      def fMergeStart
        (bitField >> 5) & 0x1
      end

      def fMergeCont
        (bitField >> 6) & 0x1
      end
    end
  end
end