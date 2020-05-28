pragma Ada_2005;
pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with utypes_uuint32_t_h;
with utypes_uuint16_t_h;
with utypes_uuint8_t_h;
with sys_utypes_uint32_t_h;
with Interfaces.C.Strings;

package termbox_h is

   --  unsupported macro: SO_IMPORT __attribute__((visibility("default")))
   TB_KEY_F1 : constant := (16#FFFF#-0);  --  lib-termbox/src/termbox.h:21
   TB_KEY_F2 : constant := (16#FFFF#-1);  --  lib-termbox/src/termbox.h:22
   TB_KEY_F3 : constant := (16#FFFF#-2);  --  lib-termbox/src/termbox.h:23
   TB_KEY_F4 : constant := (16#FFFF#-3);  --  lib-termbox/src/termbox.h:24
   TB_KEY_F5 : constant := (16#FFFF#-4);  --  lib-termbox/src/termbox.h:25
   TB_KEY_F6 : constant := (16#FFFF#-5);  --  lib-termbox/src/termbox.h:26
   TB_KEY_F7 : constant := (16#FFFF#-6);  --  lib-termbox/src/termbox.h:27
   TB_KEY_F8 : constant := (16#FFFF#-7);  --  lib-termbox/src/termbox.h:28
   TB_KEY_F9 : constant := (16#FFFF#-8);  --  lib-termbox/src/termbox.h:29
   TB_KEY_F10 : constant := (16#FFFF#-9);  --  lib-termbox/src/termbox.h:30
   TB_KEY_F11 : constant := (16#FFFF#-10);  --  lib-termbox/src/termbox.h:31
   TB_KEY_F12 : constant := (16#FFFF#-11);  --  lib-termbox/src/termbox.h:32
   TB_KEY_INSERT : constant := (16#FFFF#-12);  --  lib-termbox/src/termbox.h:33
   TB_KEY_DELETE : constant := (16#FFFF#-13);  --  lib-termbox/src/termbox.h:34
   TB_KEY_HOME : constant := (16#FFFF#-14);  --  lib-termbox/src/termbox.h:35
   TB_KEY_END : constant := (16#FFFF#-15);  --  lib-termbox/src/termbox.h:36
   TB_KEY_PGUP : constant := (16#FFFF#-16);  --  lib-termbox/src/termbox.h:37
   TB_KEY_PGDN : constant := (16#FFFF#-17);  --  lib-termbox/src/termbox.h:38
   TB_KEY_ARROW_UP : constant := (16#FFFF#-18);  --  lib-termbox/src/termbox.h:39
   TB_KEY_ARROW_DOWN : constant := (16#FFFF#-19);  --  lib-termbox/src/termbox.h:40
   TB_KEY_ARROW_LEFT : constant := (16#FFFF#-20);  --  lib-termbox/src/termbox.h:41
   TB_KEY_ARROW_RIGHT : constant := (16#FFFF#-21);  --  lib-termbox/src/termbox.h:42
   TB_KEY_MOUSE_LEFT : constant := (16#FFFF#-22);  --  lib-termbox/src/termbox.h:43
   TB_KEY_MOUSE_RIGHT : constant := (16#FFFF#-23);  --  lib-termbox/src/termbox.h:44
   TB_KEY_MOUSE_MIDDLE : constant := (16#FFFF#-24);  --  lib-termbox/src/termbox.h:45
   TB_KEY_MOUSE_RELEASE : constant := (16#FFFF#-25);  --  lib-termbox/src/termbox.h:46
   TB_KEY_MOUSE_WHEEL_UP : constant := (16#FFFF#-26);  --  lib-termbox/src/termbox.h:47
   TB_KEY_MOUSE_WHEEL_DOWN : constant := (16#FFFF#-27);  --  lib-termbox/src/termbox.h:48

   TB_KEY_CTRL_TILDE : constant := 16#00#;  --  lib-termbox/src/termbox.h:51
   TB_KEY_CTRL_2 : constant := 16#00#;  --  lib-termbox/src/termbox.h:52
   TB_KEY_CTRL_A : constant := 16#01#;  --  lib-termbox/src/termbox.h:53
   TB_KEY_CTRL_B : constant := 16#02#;  --  lib-termbox/src/termbox.h:54
   TB_KEY_CTRL_C : constant := 16#03#;  --  lib-termbox/src/termbox.h:55
   TB_KEY_CTRL_D : constant := 16#04#;  --  lib-termbox/src/termbox.h:56
   TB_KEY_CTRL_E : constant := 16#05#;  --  lib-termbox/src/termbox.h:57
   TB_KEY_CTRL_F : constant := 16#06#;  --  lib-termbox/src/termbox.h:58
   TB_KEY_CTRL_G : constant := 16#07#;  --  lib-termbox/src/termbox.h:59
   TB_KEY_BACKSPACE : constant := 16#08#;  --  lib-termbox/src/termbox.h:60
   TB_KEY_CTRL_H : constant := 16#08#;  --  lib-termbox/src/termbox.h:61
   TB_KEY_TAB : constant := 16#09#;  --  lib-termbox/src/termbox.h:62
   TB_KEY_CTRL_I : constant := 16#09#;  --  lib-termbox/src/termbox.h:63
   TB_KEY_CTRL_J : constant := 16#0A#;  --  lib-termbox/src/termbox.h:64
   TB_KEY_CTRL_K : constant := 16#0B#;  --  lib-termbox/src/termbox.h:65
   TB_KEY_CTRL_L : constant := 16#0C#;  --  lib-termbox/src/termbox.h:66
   TB_KEY_ENTER : constant := 16#0D#;  --  lib-termbox/src/termbox.h:67
   TB_KEY_CTRL_M : constant := 16#0D#;  --  lib-termbox/src/termbox.h:68
   TB_KEY_CTRL_N : constant := 16#0E#;  --  lib-termbox/src/termbox.h:69
   TB_KEY_CTRL_O : constant := 16#0F#;  --  lib-termbox/src/termbox.h:70
   TB_KEY_CTRL_P : constant := 16#10#;  --  lib-termbox/src/termbox.h:71
   TB_KEY_CTRL_Q : constant := 16#11#;  --  lib-termbox/src/termbox.h:72
   TB_KEY_CTRL_R : constant := 16#12#;  --  lib-termbox/src/termbox.h:73
   TB_KEY_CTRL_S : constant := 16#13#;  --  lib-termbox/src/termbox.h:74
   TB_KEY_CTRL_T : constant := 16#14#;  --  lib-termbox/src/termbox.h:75
   TB_KEY_CTRL_U : constant := 16#15#;  --  lib-termbox/src/termbox.h:76
   TB_KEY_CTRL_V : constant := 16#16#;  --  lib-termbox/src/termbox.h:77
   TB_KEY_CTRL_W : constant := 16#17#;  --  lib-termbox/src/termbox.h:78
   TB_KEY_CTRL_X : constant := 16#18#;  --  lib-termbox/src/termbox.h:79
   TB_KEY_CTRL_Y : constant := 16#19#;  --  lib-termbox/src/termbox.h:80
   TB_KEY_CTRL_Z : constant := 16#1A#;  --  lib-termbox/src/termbox.h:81
   TB_KEY_ESC : constant := 16#1B#;  --  lib-termbox/src/termbox.h:82
   TB_KEY_CTRL_LSQ_BRACKET : constant := 16#1B#;  --  lib-termbox/src/termbox.h:83
   TB_KEY_CTRL_3 : constant := 16#1B#;  --  lib-termbox/src/termbox.h:84
   TB_KEY_CTRL_4 : constant := 16#1C#;  --  lib-termbox/src/termbox.h:85
   TB_KEY_CTRL_BACKSLASH : constant := 16#1C#;  --  lib-termbox/src/termbox.h:86
   TB_KEY_CTRL_5 : constant := 16#1D#;  --  lib-termbox/src/termbox.h:87
   TB_KEY_CTRL_RSQ_BRACKET : constant := 16#1D#;  --  lib-termbox/src/termbox.h:88
   TB_KEY_CTRL_6 : constant := 16#1E#;  --  lib-termbox/src/termbox.h:89
   TB_KEY_CTRL_7 : constant := 16#1F#;  --  lib-termbox/src/termbox.h:90
   TB_KEY_CTRL_SLASH : constant := 16#1F#;  --  lib-termbox/src/termbox.h:91
   TB_KEY_CTRL_UNDERSCORE : constant := 16#1F#;  --  lib-termbox/src/termbox.h:92
   TB_KEY_SPACE : constant := 16#20#;  --  lib-termbox/src/termbox.h:93
   TB_KEY_BACKSPACE2 : constant := 16#7F#;  --  lib-termbox/src/termbox.h:94
   TB_KEY_CTRL_8 : constant := 16#7F#;  --  lib-termbox/src/termbox.h:95

   TB_MOD_ALT : constant := 16#01#;  --  lib-termbox/src/termbox.h:108
   TB_MOD_MOTION : constant := 16#02#;  --  lib-termbox/src/termbox.h:109

   TB_DEFAULT : constant := 16#00#;  --  lib-termbox/src/termbox.h:112
   TB_BLACK : constant := 16#01#;  --  lib-termbox/src/termbox.h:113
   TB_RED : constant := 16#02#;  --  lib-termbox/src/termbox.h:114
   TB_GREEN : constant := 16#03#;  --  lib-termbox/src/termbox.h:115
   TB_YELLOW : constant := 16#04#;  --  lib-termbox/src/termbox.h:116
   TB_BLUE : constant := 16#05#;  --  lib-termbox/src/termbox.h:117
   TB_MAGENTA : constant := 16#06#;  --  lib-termbox/src/termbox.h:118
   TB_CYAN : constant := 16#07#;  --  lib-termbox/src/termbox.h:119
   TB_WHITE : constant := 16#08#;  --  lib-termbox/src/termbox.h:120

   TB_BOLD : constant := 16#0100#;  --  lib-termbox/src/termbox.h:127
   TB_UNDERLINE : constant := 16#0200#;  --  lib-termbox/src/termbox.h:128
   TB_REVERSE : constant := 16#0400#;  --  lib-termbox/src/termbox.h:129

   TB_EVENT_KEY : constant := 1;  --  lib-termbox/src/termbox.h:143
   TB_EVENT_RESIZE : constant := 2;  --  lib-termbox/src/termbox.h:144
   TB_EVENT_MOUSE : constant := 3;  --  lib-termbox/src/termbox.h:145

   TB_EUNSUPPORTED_TERMINAL : constant := -1;  --  lib-termbox/src/termbox.h:170
   TB_EFAILED_TO_OPEN_TTY : constant := -2;  --  lib-termbox/src/termbox.h:171
   TB_EPIPE_TRAP_ERROR : constant := -3;  --  lib-termbox/src/termbox.h:172

   TB_HIDE_CURSOR : constant := -1;  --  lib-termbox/src/termbox.h:202

   TB_INPUT_CURRENT : constant := 0;  --  lib-termbox/src/termbox.h:231
   TB_INPUT_ESC : constant := 1;  --  lib-termbox/src/termbox.h:232
   TB_INPUT_ALT : constant := 2;  --  lib-termbox/src/termbox.h:233
   TB_INPUT_MOUSE : constant := 4;  --  lib-termbox/src/termbox.h:234

   TB_OUTPUT_CURRENT : constant := 0;  --  lib-termbox/src/termbox.h:256
   TB_OUTPUT_NORMAL : constant := 1;  --  lib-termbox/src/termbox.h:257
   TB_OUTPUT_256 : constant := 2;  --  lib-termbox/src/termbox.h:258
   TB_OUTPUT_216 : constant := 3;  --  lib-termbox/src/termbox.h:259
   TB_OUTPUT_GRAYSCALE : constant := 4;  --  lib-termbox/src/termbox.h:260

   TB_EOF : constant := -1;  --  lib-termbox/src/termbox.h:313

  -- for shared objects  
  -- Key constants. See also struct tb_event's key field.
  -- *
  -- * These are a safe subset of terminfo keys, which exist on all popular
  -- * terminals. Termbox uses only them to stay truly portable.
  --  

  -- These are all ASCII code points below SPACE character and a BACKSPACE key.  
  -- These are non-existing ones.
  -- *
  -- * #define TB_KEY_CTRL_1 clash with '1'
  -- * #define TB_KEY_CTRL_9 clash with '9'
  -- * #define TB_KEY_CTRL_0 clash with '0'
  --  

  -- * Alt modifier constant, see tb_event.mod field and tb_select_input_mode function.
  -- * Mouse-motion modifier
  --  

  -- Colors (see struct tb_cell's fg and bg fields).  
  -- Attributes, it is possible to use multiple attributes by combining them
  -- * using bitwise OR ('|'). Although, colors cannot be combined. But you can
  -- * combine attributes and a single color. See also struct tb_cell's fg and bg
  -- * fields.
  --  

  -- A cell, single conceptual entity on the terminal screen. The terminal screen
  -- * is basically a 2d array of cells. It has the following fields:
  -- *  - 'ch' is a unicode character
  -- *  - 'fg' foreground color and attributes
  -- *  - 'bg' background color and attributes
  --  

   type tb_cell is record
      ch : aliased utypes_uuint32_t_h.uint32_t;  -- lib-termbox/src/termbox.h:138
      fg : aliased utypes_uuint16_t_h.uint16_t;  -- lib-termbox/src/termbox.h:139
      bg : aliased utypes_uuint16_t_h.uint16_t;  -- lib-termbox/src/termbox.h:140
   end record;
   pragma Convention (C_Pass_By_Copy, tb_cell);  -- lib-termbox/src/termbox.h:137

  -- An event, single interaction from the user. The 'mod' and 'ch' fields are
  -- * valid if 'type' is TB_EVENT_KEY. The 'w' and 'h' fields are valid if 'type'
  -- * is TB_EVENT_RESIZE. The 'x' and 'y' fields are valid if 'type' is
  -- * TB_EVENT_MOUSE. The 'key' field is valid if 'type' is either TB_EVENT_KEY
  -- * or TB_EVENT_MOUSE. The fields 'key' and 'ch' are mutually exclusive; only
  -- * one of them can be non-zero at a time.
  --  

   type tb_event is record
      c_type : aliased utypes_uuint8_t_h.uint8_t;  -- lib-termbox/src/termbox.h:155
      c_mod : aliased utypes_uuint8_t_h.uint8_t;  -- lib-termbox/src/termbox.h:156
      key : aliased utypes_uuint16_t_h.uint16_t;  -- lib-termbox/src/termbox.h:157
      ch : aliased utypes_uuint32_t_h.uint32_t;  -- lib-termbox/src/termbox.h:158
      w : aliased sys_utypes_uint32_t_h.int32_t;  -- lib-termbox/src/termbox.h:159
      h : aliased sys_utypes_uint32_t_h.int32_t;  -- lib-termbox/src/termbox.h:160
      x : aliased sys_utypes_uint32_t_h.int32_t;  -- lib-termbox/src/termbox.h:161
      y : aliased sys_utypes_uint32_t_h.int32_t;  -- lib-termbox/src/termbox.h:162
   end record;
   pragma Convention (C_Pass_By_Copy, tb_event);  -- lib-termbox/src/termbox.h:154

  -- modifiers to either 'key' or 'ch' below  
  -- one of the TB_KEY_* constants  
  -- unicode character  
  -- Error codes returned by tb_init(). All of them are self-explanatory, except
  -- * the pipe trap error. Termbox uses unix pipes in order to deliver a message
  -- * from a signal handler (SIGWINCH) to the main event reading loop. Honestly in
  -- * most cases you should just check the returned code as < 0.
  --  

  -- Initializes the termbox library. This function should be called before any
  -- * other functions. Function tb_init is same as tb_init_file("/dev/tty").
  -- * After successful initialization, the library must be
  -- * finalized using the tb_shutdown() function.
  --  

   function tb_init return int;  -- lib-termbox/src/termbox.h:179
   pragma Import (C, tb_init, "tb_init");

   function tb_init_file (name : Interfaces.C.Strings.chars_ptr) return int;  -- lib-termbox/src/termbox.h:180
   pragma Import (C, tb_init_file, "tb_init_file");

   function tb_init_fd (inout : int) return int;  -- lib-termbox/src/termbox.h:181
   pragma Import (C, tb_init_fd, "tb_init_fd");

   procedure tb_shutdown;  -- lib-termbox/src/termbox.h:182
   pragma Import (C, tb_shutdown, "tb_shutdown");

  -- Returns the size of the internal back buffer (which is the same as
  -- * terminal's window size in characters). The internal buffer can be resized
  -- * after tb_clear() or tb_present() function calls. Both dimensions have an
  -- * unspecified negative value when called before tb_init() or after
  -- * tb_shutdown().
  --  

   function tb_width return int;  -- lib-termbox/src/termbox.h:190
   pragma Import (C, tb_width, "tb_width");

   function tb_height return int;  -- lib-termbox/src/termbox.h:191
   pragma Import (C, tb_height, "tb_height");

  -- Clears the internal back buffer using TB_DEFAULT color or the
  -- * color/attributes set by tb_set_clear_attributes() function.
  --  

   procedure tb_clear;  -- lib-termbox/src/termbox.h:196
   pragma Import (C, tb_clear, "tb_clear");

   procedure tb_set_clear_attributes (fg : utypes_uuint16_t_h.uint16_t; bg : utypes_uuint16_t_h.uint16_t);  -- lib-termbox/src/termbox.h:197
   pragma Import (C, tb_set_clear_attributes, "tb_set_clear_attributes");

  -- Synchronizes the internal back buffer with the terminal.  
   procedure tb_present;  -- lib-termbox/src/termbox.h:200
   pragma Import (C, tb_present, "tb_present");

  -- Sets the position of the cursor. Upper-left character is (0, 0). If you pass
  -- * TB_HIDE_CURSOR as both coordinates, then the cursor will be hidden. Cursor
  -- * is hidden by default.
  --  

   procedure tb_set_cursor (cx : int; cy : int);  -- lib-termbox/src/termbox.h:208
   pragma Import (C, tb_set_cursor, "tb_set_cursor");

  -- Changes cell's parameters in the internal back buffer at the specified
  -- * position.
  --  

   procedure tb_put_cell
     (x : int;
      y : int;
      cell : access constant tb_cell);  -- lib-termbox/src/termbox.h:213
   pragma Import (C, tb_put_cell, "tb_put_cell");

   procedure tb_change_cell
     (x : int;
      y : int;
      ch : utypes_uuint32_t_h.uint32_t;
      fg : utypes_uuint16_t_h.uint16_t;
      bg : utypes_uuint16_t_h.uint16_t);  -- lib-termbox/src/termbox.h:214
   pragma Import (C, tb_change_cell, "tb_change_cell");

  -- Copies the buffer from 'cells' at the specified position, assuming the
  -- * buffer is a two-dimensional array of size ('w' x 'h'), represented as a
  -- * one-dimensional buffer containing lines of cells starting from the top.
  -- *
  -- * (DEPRECATED: use tb_cell_buffer() instead and copy memory on your own)
  --  

   procedure tb_blit
     (x : int;
      y : int;
      w : int;
      h : int;
      cells : access constant tb_cell);  -- lib-termbox/src/termbox.h:222
   pragma Import (C, tb_blit, "tb_blit");

  -- Returns a pointer to internal cell back buffer. You can get its dimensions
  -- * using tb_width() and tb_height() functions. The pointer stays valid as long
  -- * as no tb_clear() and tb_present() calls are made. The buffer is
  -- * one-dimensional buffer containing lines of cells starting from the top.
  --  

   function tb_cell_buffer return access tb_cell;  -- lib-termbox/src/termbox.h:229
   pragma Import (C, tb_cell_buffer, "tb_cell_buffer");

  -- Sets the termbox input mode. Termbox has two input modes:
  -- * 1. Esc input mode.
  -- *    When ESC sequence is in the buffer and it doesn't match any known
  -- *    ESC sequence => ESC means TB_KEY_ESC.
  -- * 2. Alt input mode.
  -- *    When ESC sequence is in the buffer and it doesn't match any known
  -- *    sequence => ESC enables TB_MOD_ALT modifier for the next keyboard event.
  -- *
  -- * You can also apply TB_INPUT_MOUSE via bitwise OR operation to either of the
  -- * modes (e.g. TB_INPUT_ESC | TB_INPUT_MOUSE). If none of the main two modes
  -- * were set, but the mouse mode was, TB_INPUT_ESC mode is used. If for some
  -- * reason you've decided to use (TB_INPUT_ESC | TB_INPUT_ALT) combination, it
  -- * will behave as if only TB_INPUT_ESC was selected.
  -- *
  -- * If 'mode' is TB_INPUT_CURRENT, it returns the current input mode.
  -- *
  -- * Default termbox input mode is TB_INPUT_ESC.
  --  

   function tb_select_input_mode (mode : int) return int;  -- lib-termbox/src/termbox.h:254
   pragma Import (C, tb_select_input_mode, "tb_select_input_mode");

  -- Sets the termbox output mode. Termbox has three output options:
  -- * 1. TB_OUTPUT_NORMAL     => [1..8]
  -- *    This mode provides 8 different colors:
  -- *      black, red, green, yellow, blue, magenta, cyan, white
  -- *    Shortcut: TB_BLACK, TB_RED, ...
  -- *    Attributes: TB_BOLD, TB_UNDERLINE, TB_REVERSE
  -- *
  -- *    Example usage:
  -- *        tb_change_cell(x, y, '@', TB_BLACK | TB_BOLD, TB_RED);
  -- *
  -- * 2. TB_OUTPUT_256        => [0..256]
  -- *    In this mode you can leverage the 256 terminal mode:
  -- *    0x00 - 0x07: the 8 colors as in TB_OUTPUT_NORMAL
  -- *    0x08 - 0x0f: TB_* | TB_BOLD
  -- *    0x10 - 0xe7: 216 different colors
  -- *    0xe8 - 0xff: 24 different shades of grey
  -- *
  -- *    Example usage:
  -- *        tb_change_cell(x, y, '@', 184, 240);
  -- *        tb_change_cell(x, y, '@', 0xb8, 0xf0);
  -- *
  -- * 3. TB_OUTPUT_216        => [0..216]
  -- *    This mode supports the 3rd range of the 256 mode only.
  -- *    But you don't need to provide an offset.
  -- *
  -- * 4. TB_OUTPUT_GRAYSCALE  => [0..23]
  -- *    This mode supports the 4th range of the 256 mode only.
  -- *    But you dont need to provide an offset.
  -- *
  -- * Execute build/src/demo/output to see its impact on your terminal.
  -- *
  -- * If 'mode' is TB_OUTPUT_CURRENT, it returns the current output mode.
  -- *
  -- * Default termbox output mode is TB_OUTPUT_NORMAL.
  --  

   function tb_select_output_mode (mode : int) return int;  -- lib-termbox/src/termbox.h:297
   pragma Import (C, tb_select_output_mode, "tb_select_output_mode");

  -- Wait for an event up to 'timeout' milliseconds and fill the 'event'
  -- * structure with it, when the event is available. Returns the type of the
  -- * event (one of TB_EVENT_* constants) or -1 if there was an error or 0 in case
  -- * there were no event during 'timeout' period.
  --  

   function tb_peek_event (event : access tb_event; timeout : int) return int;  -- lib-termbox/src/termbox.h:304
   pragma Import (C, tb_peek_event, "tb_peek_event");

  -- Wait for an event forever and fill the 'event' structure with it, when the
  -- * event is available. Returns the type of the event (one of TB_EVENT_*
  -- * constants) or -1 if there was an error.
  --  

   function tb_poll_event (event : access tb_event) return int;  -- lib-termbox/src/termbox.h:310
   pragma Import (C, tb_poll_event, "tb_poll_event");

  -- Utility utf8 functions.  
   function tb_utf8_char_length (c : char) return int;  -- lib-termbox/src/termbox.h:314
   pragma Import (C, tb_utf8_char_length, "tb_utf8_char_length");

   function tb_utf8_char_to_unicode (c_out : access utypes_uuint32_t_h.uint32_t; c : Interfaces.C.Strings.chars_ptr) return int;  -- lib-termbox/src/termbox.h:315
   pragma Import (C, tb_utf8_char_to_unicode, "tb_utf8_char_to_unicode");

   function tb_utf8_unicode_to_char (c_out : Interfaces.C.Strings.chars_ptr; c : utypes_uuint32_t_h.uint32_t) return int;  -- lib-termbox/src/termbox.h:316
   pragma Import (C, tb_utf8_unicode_to_char, "tb_utf8_unicode_to_char");

end termbox_h;
