create or replace editionable trigger sp_uploaded_files_type_biu before
    insert or update on sp_uploaded_files_type
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

alter trigger sp_uploaded_files_type_biu enable;


-- sqlcl_snapshot {"hash":"3a01568ebafbeecd057b2bda2e6653d0f818ed3f","type":"TRIGGER","name":"SP_UPLOADED_FILES_TYPE_BIU","schemaName":"WKSP_WSDTBDEV","sxml":""}