begin
   execute immediate 'DROP PROCEDURE P1_2';
exception when others then
   if sqlcode != -4043 then
      raise;
   end if;
end;
/
