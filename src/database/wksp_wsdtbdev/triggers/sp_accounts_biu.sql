create or replace editionable trigger sp_accounts_biu before
    insert or update on sp_accounts
    for each row
begin
    :new.updated_on := sysdate;
    :new.updated_by := coalesce(
        sys_context('APEX$SESSION', 'APP_USER'),
        user
    );
    if inserting then
        :new.row_version := 1;
        :new.created_on := :new.updated_on;
        :new.created_by := :new.updated_by;
    elsif updating then
        :new.row_version := nvl(:old.row_version,
                                0) + 1;
    end if;

end sp_accounts_biu;
/

alter trigger sp_accounts_biu enable;


-- sqlcl_snapshot {"hash":"1ee8569ea901412dbd7c4318761d600dd2fdc081","type":"TRIGGER","name":"SP_ACCOUNTS_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}