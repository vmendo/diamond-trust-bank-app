create or replace editionable trigger sp_account_details_biu before
    insert or update on sp_account_details
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

end sp_account_details_biu;
/

alter trigger sp_account_details_biu enable;


-- sqlcl_snapshot {"hash":"f8bc720a95b84c20a2ef5dea2d9c7cef032fc6ab","type":"TRIGGER","name":"SP_ACCOUNT_DETAILS_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}