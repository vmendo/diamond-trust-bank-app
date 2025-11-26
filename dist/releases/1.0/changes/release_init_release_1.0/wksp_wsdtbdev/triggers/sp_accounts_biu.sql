-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764164602258 stripComments:false  logicalFilePath:release_init_release_1.0/wksp_wsdtbdev/triggers/sp_accounts_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_accounts_biu.sql:null:2e48817ae03d4608e5ae9cd679b0d1a5fcb598a9:create

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

