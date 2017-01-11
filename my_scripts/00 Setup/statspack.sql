Установка пакета statspack

cd $ORACLE_HOME/rdbms/admin
sqlplus sys/oracle as sysdba

В sqlplus выполнить создание роли plustrace:
@spcreate

При выполнении скрипт запросит:
- пароль для пользователя perfstat (например, perfstat)
- стандартное табличное пространство (например, users)
- временное табличное пространство (например, temp)

Если что-то пошло не так, перед повторным запуском выполнить:
@spdrop


Лог выводится в spcpkg.lis