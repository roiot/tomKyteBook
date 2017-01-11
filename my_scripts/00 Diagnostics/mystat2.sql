# Используется для анализа статистических показателей после выполнения кода.
# Выполняется после mystat.sql
# &V передается из mystat.sql с использованием средства NEW_VAL из SQLPLUS


set echo off
set verify off
select a.name, b.value V, to_char(b.value-&V,'999,999,999,999') diff
from v$statname a, v$mystat b
where a.statistic# = b.statistic#
and lower(a.name) = lower('&S')
/
set echo on
