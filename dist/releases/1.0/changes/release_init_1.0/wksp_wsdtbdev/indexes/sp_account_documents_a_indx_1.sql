-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764170488109 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/indexes/sp_account_documents_a_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_account_documents_a_indx_1.sql:null:eaa2e3c5d18032d35b1a2c6d1caebb9e2b5a1c1e:create

create index wksp_wsdtbdev.sp_account_documents_a_indx_1 on
    wksp_wsdtbdev.sp_account_documents (
        account_id
    );

