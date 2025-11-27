create or replace editionable trigger wksp_wsdtbdev.sp_uploaded_files_type_biu before
    insert or update on wksp_wsdtbdev.sp_uploaded_files_type
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

end sp_uploaded_files_type_biu;
/

alter trigger wksp_wsdtbdev.sp_uploaded_files_type_biu enable;


-- sqlcl_snapshot {"hash":"5da3ce4d97353168c86df44a6bf4ce8b5b587892","type":"TRIGGER","name":"SP_UPLOADED_FILES_TYPE_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}