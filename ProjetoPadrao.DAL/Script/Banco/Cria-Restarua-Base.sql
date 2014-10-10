/* Cria um backup no sqlserver2008 */
BACKUP DATABASE ESTAGIARIO TO DISK = 'C:\Backups\BackupsEstagiario.bak'

/* Restarua um backup no sqlserver2008 */
RESTORE DATABASE BANCO_BACKUP FROM DISK='C:\BACKUP\BANCO_BACKUP-FULL.BAK'
