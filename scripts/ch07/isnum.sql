create or replace function isnum(v_in varchar2)
  return varchar is
  val_err exception;
  pragma exception_init(val_err, -6502); -- char to num conv. error
  scrub_num number;
begin
  scrub_num := to_number(v_in);
  return 'Y';
  exception when val_err then
  return 'N';
end;
/





