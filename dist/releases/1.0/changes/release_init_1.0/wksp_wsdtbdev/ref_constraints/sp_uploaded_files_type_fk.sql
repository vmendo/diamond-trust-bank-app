-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764233256087 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/ref_constraints/sp_uploaded_files_type_fk.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/ref_constraints/sp_uploaded_files_type_fk.sql:null:47d7fb952c2848b673f09eb58ab67d97d10cf1d3:create

alter table sp_uploaded_files_type
    add constraint sp_uploaded_files_type_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;

