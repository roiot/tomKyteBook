# Скрипт инициализации параметров sqlplus
# Для выполнения автоматически при запуске sqlplus нужно прописать путь к этому файлу в переменной окружения SQLPATH
# Команды, выполняемые при логине в систему прописываются в ~/.bash_profile
# Добавить в ~/.bash_profile: export SQLPATH=/home/oracle/Desktop/Tom_Kyte_Book/scripts/ch00/
# Для выполнения ~/.bash_profile без перезагрузки системы выполнить: reload .bash_profile from command line: source ~/.bash_profile

define _editor=vi					# для переходв в vi - выполнить ed в коммандной строке sqlplus.
									# ввести код, выйти с сохранением :wq, выполнение кода в sqlplus коммандой /
									# вместо vi можно использовать vim
									# для получения последней выполненной комманды в sqlplus используется комманда l

set serveroutput on size 1000000	# Включение вывода DBMS
set trimspool on					# Отбрасыввание пробелов при буферизации вывода
set long 5000						# Байт, отображаемых при выводе CLOB | BLOB
set linesize 100					# Ширина строк в sqlplus
set pagesize 9999					# Частота вывода заголовков
column plan_plus_exp format a80		# Ширина строки при выводе плана запроса
set sqlprompt '&_user.@&_connect_identifier.> '
