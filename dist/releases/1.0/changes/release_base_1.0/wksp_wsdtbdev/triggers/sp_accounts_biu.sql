-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1765445574695 stripComments:false  logicalFilePath:release_base_1.0/wksp_wsdtbdev/triggers/sp_accounts_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_accounts_biu.sql:null:565997e6ba791bfe7e8eda33cbac8fddef0e4f37:create

create or replace editionable trigger sp_accounts_biu before
    insert or update on sp_accounts
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

alter trigger sp_accounts_biu enable;

