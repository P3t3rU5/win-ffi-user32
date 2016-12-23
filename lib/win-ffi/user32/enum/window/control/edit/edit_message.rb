require 'win-ffi/user32'

module WinFFI
  module User32
    # https://msdn.microsoft.com/en-us/library/windows/desktop/ff485923(v=vs.85).aspx
    buffer = [
        :GETSEL,               0x00B0,
        :SETSEL,               0x00B1,
        :GETRECT,              0x00B2,
        :SETRECT,              0x00B3,
        :SETRECTNP,            0x00B4,
        :SCROLL,               0x00B5,
        :LINESCROLL,           0x00B6,
        :SCROLLCARET,          0x00B7,
        :GETMODIFY,            0x00B8,
        :SETMODIFY,            0x00B9,
        :GETLINECOUNT,         0x00BA,
        :LINEINDEX,            0x00BB,
        :SETHANDLE,            0x00BC,
        :GETHANDLE,            0x00BD,
        :GETTHUMB,             0x00BE,
        :LINELENGTH,           0x00C1,
        :REPLACESEL,           0x00C2,
        :GETLINE,              0x00C4,
        :LIMITTEXT,            0x00C5,  # win40 Name change        :LIMITTEXT,            0x00C5,
        :CANUNDO,              0x00C6,
        :UNDO,                 0x00C7,
        :FMTLINES,             0x00C8,
        :LINEFROMCHAR,         0x00C9,
        :SETTABSTOPS,          0x00CB,
        :SETPASSWORDCHAR,      0x00CC,
        :EMPTYUNDOBUFFER,      0x00CD,
        :GETFIRSTVISIBLELINE,  0x00CE,
        :SETREADONLY,          0x00CF,
        :SETWORDBREAKPROC,     0x00D0,
        :GETWORDBREAKPROC,     0x00D1,
        :GETPASSWORDCHAR,      0x00D2,
        :SETMARGINS,           0x00D3,
        :GETMARGINS,           0x00D4,
        :SETLIMITTEXT,         0x00C5,  # win40 Name change        :LIMITTEXT,            0x00C5,
        :GETLIMITTEXT,         0x00D5,
        :POSFROMCHAR,          0x00D6,
        :CHARFROMPOS,          0x00D7,
        :SETIMESTATUS,         0x00D8,
        :GETIMESTATUS,         0x00D9,

        # WM_USER + 50
        :CANPASTE,           0x432,
        :DISPLAYBAND,        0x433,
        :EXGETSEL,           0x434,
        :EXLIMITTEXT,        0x435,
        :EXLINEFROMCHAR,     0x436,
        :EXSETSEL,           0x437,
        :FINDTEXT,           0x438,
        :FORMATRANGE,        0x439,
        :GETCHARFORMAT,      0x43A,
        :GETEVENTMASK,       0x43B,
        :GETOLEINTERFACE,    0x43C,
        :GETPARAFORMAT,      0x43D,
        :GETSELTEXT,         0x43E,
        :HIDESELECTION,      0x43F,
        :PASTESPECIAL,       0x440,
        :REQUESTRESIZE,      0x441,
        :SELECTIONTYPE,      0x442,
        :SETBKGNDCOLOR,      0x443,
        :SETCHARFORMAT,      0x444,
        :SETEVENTMASK,       0x445,
        :SETOLECALLBACK,     0x446,
        :SETPARAFORMAT,      0x447,
        :SETTARGETDEVICE,    0x448,
        :STREAMIN,           0x449,
        :STREAMOUT,          0x44A,
        :GETTEXTRANGE,       0x44B,
        :FINDWORDBREAK,      0x44C,
        :SETOPTIONS,         0x44D,
        :GETOPTIONS,         0x44E,
        :FINDTEXTEX,         0x44F,

        :GETWORDBREAKPROCEX, 0x450,
        :SETWORDBREAKPROCEX, 0x451,

        # RichEdit 2.0 messages
        :SETUNDOLIMIT,     0x452,
        :REDO,             0x454,
        :CANREDO,          0x455,
        :GETUNDONAME,      0x456,
        :GETREDONAME,      0x457,
        :STOPGROUPTYPING,  0x458,
        :SETTEXTMODE,      0x459,
        :GETTEXTMODE,      0x45A,

        :AUTOURLDETECT,    0x45B,

        :GETAUTOURLDETECT, 0x45C,
        :SETPALETTE,       0x45D,
        :GETTEXTEX,        0x45E,
        :GETTEXTLENGTHEX,  0x45F,
        :SHOWSCROLLBAR,    0x460,
        :SETTEXTEX,        0x461,

        # East Asia specific messages
        :SETPUNCTUATION,  0x464,
        :GETPUNCTUATION,  0x465,
        :SETWORDWRAPMODE, 0x466,
        :GETWORDWRAPMODE, 0x467,
        :SETIMECOLOR,     0x468,
        :GETIMECOLOR,     0x469,
        :SETIMEOPTIONS,   0x46A,
        :GETIMEOPTIONS,   0x46B,
        :CONVPOSITION,    0x46C,

        :SETLANGOPTIONS,  0x478,
        :GETLANGOPTIONS,  0x479,
        :GETIMECOMPMODE,  0x47A,
        :FINDTEXTW,       0x47B,
        :FINDTEXTEXW,     0x47C,

        # RE3.0 FE messages
        :RECONVERSION,    0x47D,
        :SETIMEMODEBIAS,  0x47E,
        :GETIMEMODEBIAS,  0x47F,

        # BiDi specific messages
        :SETBIDIOPTIONS,       0x4C8,
        :GETBIDIOPTIONS,       0x4C9,

        :SETTYPOGRAPHYOPTIONS, 0x4CA,
        :GETTYPOGRAPHYOPTIONS, 0x4CB,

        # Extended edit style specific messages
        :SETEDITSTYLE, 0x4CC,
        :GETEDITSTYLE, 0x4CD,

        # Pegasus outline mode messages (RE 3.0)
        # Outline mode message
        :OUTLINE,      0x4DC,
        # Message for getting and restoring scroll pos
        :GETSCROLLPOS, 0x4DE,
        :SETSCROLLPOS, 0x4DF,
        # Change fontsize in current selection by wParam
        :SETFONTSIZE,  0x4E0,
        :GETZOOM,      0x4E1,
        :SETZOOM,      0x4E2,
        :GETVIEWKIND,  0x4E3,
        :SETVIEWKIND,  0x4E4,

        # RichEdit 4.0 messages
        :GETPAGE,          0x4E5,
        :SETPAGE,          0x4E6,
        :GETHYPHENATEINFO, 0x4E7,
        :SETHYPHENATEINFO, 0x4E8,

        :GETPAGEROTATE,    0x4EB,
        :SETPAGEROTATE,    0x4EC,
        :GETCTFMODEBIAS,   0x4ED,
        :SETCTFMODEBIAS,   0x4EE,
        :GETCTFOPENSTATUS, 0x4F0,
        :SETCTFOPENSTATUS, 0x4F1,
        :GETIMECOMPTEXT,   0x4F2,
        :ISIME,            0x4F3,
        :GETIMEPROPERTY,   0x4F4,

        :GETQUERYRTFOBJ,   0x50D,
        :SETQUERYRTFOBJ,   0x50E,
    ]

    if WindowsVersion >= 8 # New messages as of Win8
      buffer += [
          :INSERTTABLE,         0x4E8,

          :GETAUTOCORRECTPROC,  0x4E9,
          :SETAUTOCORRECTPROC,  0x4EA,
          :CALLAUTOCORRECTPROC, 0x4EB,

          :GETTABLEPARMS,       0x509,

          :SETEDITSTYLEEX,      0x513,
          :GETEDITSTYLEEX,      0x514,

          :GETSTORYTYPE,        0x522,
          :SETSTORYTYPE,        0x523,

          :GETELLIPSISMODE,     0x531,
          :SETELLIPSISMODE,     0x532,

          :SETTABLEPARMS,       0x533,

          :GETTOUCHOPTIONS,     0x536,
          :SETTOUCHOPTIONS,     0x537,
          :INSERTIMAGE,         0x53A,
          :SETUIANAME,          0x540,
          :GETELLIPSISSTATE,    0x542
      ]
      if WindowsVersion >= 8.1
        buffer += [
            :ENABLEFEATURE, 0x00DA
        ]
      end

    end

    # Edit Control Messages
    EditMessage = enum :edit_message, buffer

    define_prefix(:EM, EditMessage)
  end
end