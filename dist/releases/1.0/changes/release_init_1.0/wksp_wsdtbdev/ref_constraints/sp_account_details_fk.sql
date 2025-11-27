-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764233643495 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_account_details_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_details_fk.sql:null:d376e96f4f2cc4713cd9263c4a8705e58b5d0439:create

alter table sp_account_details
    add constraint sp_account_details_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;

