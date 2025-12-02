-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764672361287 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/triggers/sp_account_documents_biu.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/triggers/sp_account_documents_biu.sql:null:4df6e20a2972271cfd66ffc7783bcb0081fa9116:create

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

