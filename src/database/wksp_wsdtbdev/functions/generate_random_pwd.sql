create or replace function generate_random_pwd return varchar2 is
    pwdstring varchar2(255);
begin
    pwdstring := dbms_random.string('x', 10);
    return ( pwdstring );
end;
/


-- sqlcl_snapshot {"hash":"2b85035cf65479d1094061355bc353971ebdbe59","type":"FUNCTION","name":"GENERATE_RANDOM_PWD","schemaName":"WKSP_WSDTBDEV","sxml":""}