-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764165424502 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/functions/generate_random_pwd.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/functions/generate_random_pwd.sql:null:cbeb85deecc1efdd97489a874b556d1a5c4c9729:create

create or replace function wksp_wsdtbdev.generate_random_pwd return varchar2 is
    pwdstring varchar2(255);
begin
    pwdstring := dbms_random.string('x', 10);
    return ( pwdstring );
end;
/

