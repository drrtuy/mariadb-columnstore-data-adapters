mariadb -h 127.0.0.1 -P 9003 -u repl -p pass 

STOP SLAVE;

CHANGE MASTER TO     
MASTER_HOST='test_mariadb1_1',     
MASTER_USER='repl',     
MASTER_PASSWORD='pass',     
MASTER_PORT=3306, 
MASTER_LOG_FILE='mysqld-bin.000002';

START SLAVE;
