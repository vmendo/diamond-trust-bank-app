-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764232085673 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/triggers/sp_uploaded_files_type_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_uploaded_files_type_biu.sql:null:a0c043fdb779d88da9e2d2fc41119a7e09cbe5fb:create

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

