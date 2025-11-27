-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764233255912 stripComments:false  logicalFilePath:release_init_1.0/wksp_wsdtbdev/indexes/sp_account_details_a_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_account_details_a_indx_1.sql:null:834ad13b2750347e02d0d6ab0930a6e7147dcd24:create

create index sp_account_details_a_indx_1 on
    sp_account_details (
        account_id
    );

