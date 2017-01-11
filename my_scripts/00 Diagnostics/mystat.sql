# Используется для анализа статистических показателей до выполнения кода.
# В качестве параметра передается значение статистического показателя, например 
# @mystat "redo size"
# После выполнения кода запустить mystat2.sql

set echo off
set verify off
column value new_val V
define S="&1"

set autotrace off
select a.name, b.value
from v$statname a, v$mystat b
where a.statistic# = b.statistic#
and lower(a.name) = lower('&S')
/
set echo on
