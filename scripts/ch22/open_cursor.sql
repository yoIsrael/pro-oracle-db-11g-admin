select
  a.value
 ,c.username
 ,c.machine
 ,c.sid
 ,c.serial#
from v$sesstat  a
    ,v$statname b
    ,v$session  c
where a.statistic# = b.statistic#
and   c.sid        = a.sid
and   b.name       = 'opened cursors current'
and   a.value     != 0
and   c.username IS NOT NULL
order by 1,2;
