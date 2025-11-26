create or replace editionable trigger wksp_wsdtbdev.sp_account_documents_biu before
    insert or update on wksp_wsdtbdev.sp_account_documents
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

alter trigger wksp_wsdtbdev.sp_account_documents_biu enable;


-- sqlcl_snapshot {"hash":"e20bd2ddc6c0d3c0b44f487acdec44568a79258e","type":"TRIGGER","name":"SP_ACCOUNT_DOCUMENTS_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}