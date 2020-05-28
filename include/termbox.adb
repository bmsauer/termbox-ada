
package body Termbox is
   
   function Init return Return_Value is
      termbox_rv: Interfaces.C.int;
   begin
      termbox_rv := tb_init;
      return Return_Value(termbox_rv);
   end Init;
   
   procedure Shutdown is
   begin
      tb_shutdown;
   end Shutdown;
   
   function Width return Integer is
   begin
      return Integer(tb_width);
   end Width;
   
   function Height return Integer is
   begin
      return Integer(tb_height);
   end Height;
     
   procedure Clear is
   begin
      tb_clear;
   end Clear;
   
   procedure Set_Clear_Attributes(fg: Integer; bg:Integer) is
   begin
      tb_set_clear_attributes(Interfaces.C.unsigned_short(fg), Interfaces.C.unsigned_short(bg));
   end Set_Clear_Attributes;
   
   procedure Present is
   begin
      tb_present;
   end Present;
   
   procedure Set_Cursor(cx: Integer; cy: Integer) is
   begin
      tb_set_cursor(Interfaces.C.int(cx), Interfaces.C.int(cy));
   end Set_Cursor;
   
   procedure Put_Cell(x: Integer; y: Integer; pcell: access Cell) is
      cell2: access tb_cell := new tb_cell;
   begin
      cell2.ch := Interfaces.C.unsigned(Character'Pos(pcell.ch));
      cell2.fg := Interfaces.C.unsigned_short(pcell.fg);
      cell2.bg := Interfaces.C.unsigned_short(pcell.bg);
      tb_put_cell(Interfaces.C.int(x), Interfaces.C.int(y), cell2);
   end Put_Cell;
   
   procedure Change_Cell(x: Integer; y: Integer; ch: Character; fg: Integer; bg: Integer) is
      x2: Interfaces.C.int := Interfaces.C.int(x);
      y2: Interfaces.C.int := Interfaces.C.int(y);
      ch2: Interfaces.C.unsigned := Interfaces.C.unsigned(Character'Pos(ch));
      fg2: Interfaces.C.unsigned_short := Interfaces.C.unsigned_short(fg);
      bg2: Interfaces.C.unsigned_short := Interfaces.C.unsigned_short(bg);
   begin
      tb_change_cell(x2, y2, ch2, fg2, bg2);
   end Change_Cell;
   
   function Select_Input_Mode(mode: Integer) return Return_Value is
      rv: Interfaces.C.int;
   begin
      rv := tb_select_input_mode(Interfaces.C.int(mode));
      return Return_Value(rv);
   end Select_Input_Mode;
   
   function Select_Output_Mode(mode: Integer) return Return_Value is
      rv: Interfaces.C.int;
   begin
      rv := tb_select_output_mode(Interfaces.C.int(mode));
      return Return_Value(rv);
   end Select_Output_Mode;
     
   function Peek_Event(Evt: access Event; timeout: Interfaces.C.int) return Return_Value is
      termbox_event : access tb_event := new tb_event;
      termbox_rv : Interfaces.C.int;
   begin
      termbox_rv := tb_peek_event(termbox_event, timeout);
      Evt.c_type := Integer(termbox_event.c_type);
      Evt.c_mod := Integer(termbox_event.c_mod);
      Evt.key := Integer(termbox_event.key);
      Evt.ch := Integer(termbox_event.ch);
      Evt.w := Integer(termbox_event.w);
      Evt.h := Integer(termbox_event.h);
      Evt.x := Integer(termbox_event.x);
      Evt.y := Integer(termbox_event.y);
      return Return_Value(termbox_rv);
   end Peek_Event;
   
   function Poll_Event(Evt: access Event) return Return_Value is
      termbox_event : access tb_event := new tb_event;
      termbox_rv : Interfaces.C.int;
   begin
      termbox_rv := tb_poll_event(termbox_event);
      Evt.c_type := Integer(termbox_event.c_type);
      Evt.c_mod := Integer(termbox_event.c_mod);
      Evt.key := Integer(termbox_event.key);
      Evt.ch := Integer(termbox_event.ch);
      Evt.w := Integer(termbox_event.w);
      Evt.h := Integer(termbox_event.h);
      Evt.x := Integer(termbox_event.x);
      Evt.y := Integer(termbox_event.y);
      return Return_Value(termbox_rv);
   end Poll_Event;
     
end Termbox;
