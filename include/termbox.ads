with Interfaces.C;
with termbox_h; use termbox_h;

package Termbox is
   subtype Termbox_Constant is Integer;
   subtype Return_Value is Integer; 
   
   type Cell is record
      ch: aliased Character;
      fg: aliased Integer;
      bg: aliased Integer;
   end record;
   
   type Event is record
      c_type : aliased Integer;
      c_mod : aliased Integer;
      key : aliased Integer;
      ch : aliased Integer;
      w : aliased Integer;
      h : aliased Integer;
      x : aliased Integer;
      y : aliased Integer;
   end record;
   
   BLACK : Termbox_Constant := Integer(TB_BLACK);
   RED : Termbox_Constant := Integer(TB_RED);
   GREEN : Termbox_Constant := Integer(TB_GREEN);
   YELLOW : Termbox_Constant := Integer(TB_YELLOW);
   BLUE : Termbox_Constant := Integer(TB_BLUE);
   MAGENTA : Termbox_Constant := Integer(TB_MAGENTA);
   CYAN : Termbox_Constant := Integer(TB_CYAN);
   WHITE : Termbox_Constant := Integer(TB_WHITE);
   
   KEY_ESC:  Termbox_Constant := Integer(TB_KEY_ESC);
   
   INPUT_CURRENT: Termbox_Constant := Integer(TB_INPUT_CURRENT);
   INPUT_ESC: Termbox_Constant := Integer(TB_INPUT_ESC);
   INPUT_ALT: Termbox_Constant := Integer(TB_INPUT_ALT);
   INPUT_MOUSE: Termbox_Constant := Integer(TB_INPUT_MOUSE);
   
   OUTPUT_CURRENT: Termbox_Constant := Integer(TB_OUTPUT_CURRENT);
   OUTPUT_NORMAL: Termbox_Constant := Integer(TB_OUTPUT_NORMAL);
   OUTPUT_256: Termbox_Constant := Integer(TB_OUTPUT_256);
   OUTPUT_216: Termbox_Constant := Integer(TB_OUTPUT_216);
   OUTPUT_GRAYSCALE: Termbox_Constant := Integer(TB_OUTPUT_GRAYSCALE);
   
   
   function Init return Return_Value;
   procedure Shutdown;
   function Width return Integer;
   function Height return Integer;
   procedure Clear;
   procedure Set_Clear_Attributes(fg: Integer; bg:Integer);
   procedure Present;
   procedure Set_Cursor(cx: Integer; cy: Integer);
   procedure Put_Cell(x: Integer; y: Integer; pcell: access Cell);
   procedure Change_Cell(x: Integer; y: Integer; ch: Character; fg: Integer; bg: Integer);
   function Select_Input_Mode(mode: Integer) return Return_Value;
   function Select_Output_Mode(mode: Integer) return Return_Value;
   function Peek_Event(Evt: access Event; timeout: Interfaces.C.int) return Return_Value;
   function Poll_Event(Evt: access Event) return Return_Value;
   
   
end Termbox;
