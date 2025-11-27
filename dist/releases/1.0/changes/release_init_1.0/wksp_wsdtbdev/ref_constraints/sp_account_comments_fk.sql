-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764233643467 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_account_comments_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_comments_fk.sql:null:2d9253ac0cc59fadd78c68f8f49a5c4354ea9339:create

alter table sp_account_comments
    add constraint sp_account_comments_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;

