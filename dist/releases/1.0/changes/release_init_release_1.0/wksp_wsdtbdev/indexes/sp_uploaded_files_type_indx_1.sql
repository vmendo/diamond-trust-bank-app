-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764164601579 stripComments:false  logicalFilePath:release_init_release_1.0/wksp_wsdtbdev/indexes/sp_uploaded_files_type_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_uploaded_files_type_indx_1.sql:null:e29c889e973fea23d04fdd7cf984b63dc81c0d8b:create

create index wksp_wsdtbdev.sp_uploaded_files_type_indx_1 on
    wksp_wsdtbdev.sp_uploaded_files_type (
        account_id
    );

