-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764238463984 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/functions/generate_random_pwd.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/functions/generate_random_pwd.sql:null:2b85035cf65479d1094061355bc353971ebdbe59:create

create or replace function generate_random_pwd return varchar2 is
    pwdstring varchar2(255);
begin
    pwdstring := dbms_random.string('x', 10);
    return ( pwdstring );
end;
/

