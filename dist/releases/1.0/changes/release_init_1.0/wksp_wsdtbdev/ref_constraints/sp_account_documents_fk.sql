-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764237355116 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_account_documents_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_documents_fk.sql:null:02baa64f6b05a2804490d1f049ef3dc352e88b38:create

alter table sp_account_documents
    add constraint sp_account_documents_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;

