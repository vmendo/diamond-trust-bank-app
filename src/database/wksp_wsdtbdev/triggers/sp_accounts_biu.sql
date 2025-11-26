create or replace editionable trigger wksp_wsdtbdev.sp_accounts_biu before
    insert or update on wksp_wsdtbdev.sp_accounts
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

alter trigger wksp_wsdtbdev.sp_accounts_biu enable;


-- sqlcl_snapshot {"hash":"3b8c552d2648299be6aa59478d33d64fa640b4ab","type":"TRIGGER","name":"SP_ACCOUNTS_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}