--we not test this anywhere yet
ALTER TABLESPACE users
    ADD DATAFILE '/app/db/oracle/oradata/hybris/users02.dbf' SIZE 2G
      AUTOEXTEND ON
      NEXT 512M
      MAXSIZE 64G;
