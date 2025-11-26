create or replace function wksp_wsdtbdev.generate_random_pwd return varchar2 is
    pwdstring varchar2(255);
begin
    pwdstring := dbms_random.string('x', 10);
    return ( pwdstring );
end;
/


-- sqlcl_snapshot {"hash":"cbeb85deecc1efdd97489a874b556d1a5c4c9729","type":"FUNCTION","name":"GENERATE_RANDOM_PWD","schemaName":"WKSP_WSDTBDEV","sxml":""}