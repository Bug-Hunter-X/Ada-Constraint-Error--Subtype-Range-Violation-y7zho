```ada
procedure Example_Solution is
   subtype My_Sub is Integer range 1..10;
   X : My_Sub;
   Y : Integer := 11;
begin
   -- Solution 1: Check before assignment
   if Y in My_Sub'Range then
      X := Y;
   else
      X := My_Sub'First; -- Or handle the error appropriately
      Put_Line("Value out of range. Using default value.");
   end if;

   -- Solution 2: Exception handling
   begin
      X := Y;
   exception
      when Constraint_Error =>
         X := My_Sub'First; -- Or handle the error appropriately
         Put_Line("Constraint error occurred. Using default value.");
   end;
   null;
end Example_Solution;
```