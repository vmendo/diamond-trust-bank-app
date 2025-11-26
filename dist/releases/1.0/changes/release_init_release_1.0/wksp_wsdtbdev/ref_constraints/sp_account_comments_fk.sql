-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764164601605 stripComments:false  logicalFilePath:release_init_release_1.0/wksp_wsdtbdev/ref_constraints/sp_account_comments_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_comments_fk.sql:null:97f3e12e5a45afa698181a62d59e04da242a1784:create

alter table wksp_wsdtbdev.sp_account_comments
    add constraint sp_account_comments_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;

