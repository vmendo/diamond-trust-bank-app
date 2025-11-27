-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764231100475 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_uploaded_files_type_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_uploaded_files_type_fk.sql:null:9da195715979996e6ff073df229aa2fc55dd0ab4:create

alter table wksp_wsdtbdev.sp_uploaded_files_type
    add constraint sp_uploaded_files_type_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;

