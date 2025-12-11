-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1765445573991 stripComments:false  logicalFilePath:release_base_1.0/wksp_wsdtbdev/indexes/sp_account_documents_a_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_account_documents_a_indx_1.sql:null:ce0d9b9ec2b35ada0800e46050be4b23f000a2cd:create

create index sp_account_documents_a_indx_1 on
    sp_account_documents (
        account_id
    );

