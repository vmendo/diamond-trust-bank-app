create or replace editionable trigger sp_account_documents_biu before
    insert or update on sp_account_documents
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

end sp_account_documents_biu;
/

alter trigger sp_account_documents_biu enable;


-- sqlcl_snapshot {"hash":"396ace036b3329731b8a764761fa98895dd24dbd","type":"TRIGGER","name":"SP_ACCOUNT_DOCUMENTS_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}