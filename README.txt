-------------------------------------------------
-- TERMBOX-ADA - a termbox binding for Ada
-------------------------------------------------

-- INTRODUCTION

termbox-ada is a variable thickness binding for the Ada programming language.
This means that the C API remains largely in tact, but the C types are converted
into Ada standard types.

This repository contains a demo program and makefile to show how to use termbox-ada
in your projects.  This file also includes a detailed tutorial on how this
binding was made, so programmers new to Ada can make their own bindings.

This repository contains termbox binaries compiled on amd64 linux from the
termbox source, located at https://github.com/nsf/termbox .

-- STATUS

This library is in development, incomplete, but functional.  Below is a table of the
functions and how they are implemented.  Termbox.ads is the variable thickness
binding, whereas termbox_h.ads is the auto generated header file, which uses
the generated C types (basically, it's functional, but not convenient).

Function                            Termbox.ads                termbox_h.ads
tb_init				    yes, Init()                yes
tb_init_file                        no                         yes
tb_init_fd                          no                         yes
tb_shutdown                         yes, Shutdown              yes
tb_width                            yes, Width                 yes
tb_height                           yes, Height                yes
tb_clear                            yes, Clear                 yes
tb_set_clear_attributes             yes, Set_Clear_Attributes  yes
tb_present                          yes, Present               yes
tb_set_cursor                       yes, Set_Cursor            yes
tb_put_cell                         yes, Put_Cell              yes
tb_change_cell                      yes, Change_Cell           yes
tb_blit                             no                         yes
tb_cell_buffer                      no                         yes
tb_select_input_mode                yes, Select_Input_Mode     yes
tb_select_output_mode               yes, Select_Output_Mode    yes
tb_peek_event                       yes, Peek_Event            yes
tb_poll_event                       yes, Poll_Event            yes
tb_utf8_char_length                 no                         yes
tb_utf8_char_to_unicode             no                         yes
tb_utf8_unicode_to_char             no                         yes

-- DEMO
To build, you'll need the GNAT compiler, which is part of the GCC.  On my
system, I have v7.5.0.  You'll also need GNU Make.  To build the demo, run:

make all

You should then have a binary in the working directory.  Run:

./demo

To run the demo program. Press the ESC key to quit.

-- TUTORIAL
Generating this binding was a fairly simple process.

First, I downloaded and compiled the termbox C library using the
instructions at https://github.com/nsf/termbox .  I then added the
header file, termbox.h, and the resulting .so file to this repository.

Next, I ran

gcc -c -fdump-ada-spec -C termbox/include/termbox.h

This command is a gcc built-in that generates Ada specs from a .h
file.  It results in termbox_h.ads and several other .ads files that
deal with converting C types to Ada types.  These were all placed
in the include folder.  For more information on the Ada spec generation,
see https://www.adacore.com/gems/gem-59 .

The termbox_h.ads file makes the C functions callable from Ada, but it
isn't very convenient because of the type conversions.  For example,
every Integer in Ada needs to be converted to a Interfaces.C.int type
to work with the generated Ada spec.  Because this makes the source
code messy and repetitive, I created another package based on
termbox_h.ads for convenience.

The resulting files, termbox.ads and termbox.adb, use more conventional
Ada types.  Essentially, for each procedure or function listed in
termbox_h.ads, I create another procedure or function in termbox.ads.
The body of these functions simply convert the data types of the parameters
to be able to be used with the termbox_h.ads functions, and then converts
their return values back to more convenient Ada types.

The advantage to doing bindings this way is that it preserves the
general structure of the API, but makes it convenient to use that
API in Ada programs.

The makefile is a good introduction for how to use this library in your
own projects.  Make sure to add the include folder during build using the

-aI./include

switch, and then during linking, add

-Wl,-rpath=./termbox/lib/

To preserve the library path for the executable.

For more information about Ada bindings, see these articles:

Writing Ada Bindings for C Libraries: https://flyx.org/ada-bindings/
Interfacing with C: https://learn.adacore.com/courses/intro-to-ada/chapters/interfacing_with_c.html
