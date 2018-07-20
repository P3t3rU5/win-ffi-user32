require_relative '../../../../../win-ffi/user32'

module WinFFI
  module User32
    # GetDpiMetrics() codes
    buffer = [
        :CYSIZE,         31,
        :CXSIZE,         30,
        :CXMENUCHECK,    71,
        :CYMENUCHECK,    72,
        :CYSMSIZE,       53,
        :CXSMSIZE,       52,
        :CYMENUSIZE,     55,
        :CXMENUSIZE,     54,
        :CYMENU,         15,
        :CYCAPTION,       4,
        :CYSMCAPTION,    51,
        :CXHSCROLL,      21,
        :CXVSCROLL,       2,
        :CYHSCROLL,       3,
        :CYVSCROLL,      20,
        :CYVTHUMB,        9,
        :CXHTHUMB,       10,
        :CXFRAME,        32,
        :CYFRAME,        33,
        :CXICON,         11,
        :CYICON,         12,
        :CXICONSPACING,  38,
        :CYICONSPACING,  39,
        :CXSMICON,       49,
        :CYSMICON,       50,
        :CXCURSOR,       13,
        :CYCURSOR,       14,

    ]

    buffer += [:CXPADDEDBORDER, 92] if WINDOWS_VERSION >= :vista

    GetDpiMetricsFlag = enum :get_dpi_metrics_flag, buffer

    define_prefix(:DPISM, GetDpiMetricsFlag)
  end
end
