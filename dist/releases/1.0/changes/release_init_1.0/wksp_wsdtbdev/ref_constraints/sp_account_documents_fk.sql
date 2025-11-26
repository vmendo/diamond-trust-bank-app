-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764170488237 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_account_documents_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_documents_fk.sql:null:bbac56a8beadca6a01611ff9875cfe66cb4ef7fe:create

alter table wksp_wsdtbdev.sp_account_documents
    add constraint sp_account_documents_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;

