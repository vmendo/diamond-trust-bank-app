-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764164494350 stripComments:false  logicalFilePath:release_init_release_1.0/wksp_wsdtbdev/ref_constraints/sp_account_details_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_account_details_fk.sql:null:9a2cd8666a6be467a7dc10982e1546db6261639b:create

alter table wksp_wsdtbdev.sp_account_details
    add constraint sp_account_details_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;

