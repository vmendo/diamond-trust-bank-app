-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1765272180331 stripComments:false  logicalFilePath:release_base_1.0/wksp_wsdtbdev/indexes/sp_uploaded_files_type_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_uploaded_files_type_indx_1.sql:null:dec0ee638b8ef245a19fa91810958ddfc7dec958:create

create index sp_uploaded_files_type_indx_1 on
    sp_uploaded_files_type (
        account_id
    );

