-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1765445574573 stripComments:false  logicalFilePath:release_base_1.0/wksp_wsdtbdev/triggers/sp_account_details_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_account_details_biu.sql:null:edc9ea2b1492fbcaf57f022218ddb9368b75a31d:create

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

