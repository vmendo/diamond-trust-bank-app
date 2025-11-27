-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764233644213 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/triggers/sp_uploaded_files_type_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_uploaded_files_type_biu.sql:null:19b2cd8ca72a6487a20e75b644d5ad75a85c5b7f:create

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

