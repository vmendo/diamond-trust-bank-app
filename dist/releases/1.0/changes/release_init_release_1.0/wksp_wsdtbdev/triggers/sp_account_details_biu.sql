-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764164602121 stripComments:false  logicalFilePath:release_init_release_1.0/wksp_wsdtbdev/triggers/sp_account_details_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_account_details_biu.sql:null:253ad1e3ae875296372019533f9606f57106b664:create

create or replace editionable trigger wksp_wsdtbdev.sp_account_details_biu before
    insert or update on wksp_wsdtbdev.sp_account_details
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

alter trigger wksp_wsdtbdev.sp_account_details_biu enable;

