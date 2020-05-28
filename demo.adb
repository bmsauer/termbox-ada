with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;

--with termbox_h; use termbox_h;
--with  x86_64_linux_gnu_bits_stdint_uintn_h; use  x86_64_linux_gnu_bits_stdint_uintn_h;

with Termbox;


procedure Demo is
    Init : Termbox.Return_Value;
    Evt : Termbox.Return_Value;
    Ev: access Termbox.Event := new Termbox.Event;
    W,H : Integer;
    TestCell : access Termbox.Cell := new Termbox.Cell'('B', Termbox.BLACK, Termbox.RED);

    subtype Color_Array_Idx_Type is Integer range 1..8;
    type Color_Array_Type is array(Color_Array_Idx_Type) of Termbox.Termbox_Constant;
    Colors : Color_Array_Type := (
				   Termbox.BLACK,
				   Termbox.RED,
				   Termbox.GREEN,
				   Termbox.YELLOW,
				   Termbox.BLUE,
				   Termbox.MAGENTA,
				   Termbox.CYAN,
				   Termbox.WHITE
				  );
    FgIdx : Color_Array_Idx_Type := 1;
    
begin
     
    Init := Termbox.Init;
    if Init /= 0 then
       Put_Line("Termbox Init failed with error code: " & Integer'Image(Init));
       return;
    end if;
    
    W:= Termbox.Width;
    H:= Termbox.Height;
    
    --Termbox.Set_Clear_Attributes(Termbox.WHITE, Termbox.WHITE);
    Termbox.Clear;
    
    Termbox.Set_Cursor(0,10);
    Termbox.Put_Cell(0, 9, TestCell);
    
    loop
        Evt := Termbox.Peek_Event(Ev, 100);
        exit when Ev.key = Termbox.KEY_ESC;
	
	Termbox.Change_Cell(0, 0, 'H', Colors(FgIdx), 0);
	Termbox.Change_Cell(1, 0, 'E', Colors(FgIdx), 0);
	Termbox.Change_Cell(2, 0, 'L', Colors(FgIdx), 0);
	Termbox.Change_Cell(3, 0, 'L', Colors(FgIdx), 0);
	Termbox.Change_Cell(4, 0, 'O', Colors(FgIdx), 0);
	
	Termbox.Change_Cell(6, 0, 'W', Colors(FgIdx), 0);
	Termbox.Change_Cell(7, 0, 'O', Colors(FgIdx), 0);
	Termbox.Change_Cell(8, 0, 'R', Colors(FgIdx), 0);
	Termbox.Change_Cell(9, 0, 'L', Colors(FgIdx), 0);
	Termbox.Change_Cell(10, 0, 'D', Colors(FgIdx), 0);
	
	if FgIdx >= 8 then
	   FgIdx :=1;
	else
	   FgIdx := FgIdx + 1;
	end if;
	
	Termbox.Present;
    end loop;
   
    Termbox.Shutdown;
    Put_Line("Width/Height:" & Integer'Image(W) & Integer'Image(H));
end Demo;
