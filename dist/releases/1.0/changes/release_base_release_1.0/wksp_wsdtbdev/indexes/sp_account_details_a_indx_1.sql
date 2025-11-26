-- liquibase formatted sql
-- changeset WKSP_WSDTBDEV:1764163767325 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_wsdtbdev/indexes/sp_account_details_a_indx_1.sql
-- sqlcl_snapshot src/database/wksp_wsdtbdev/indexes/sp_account_details_a_indx_1.sql:null:fc3e389262741da4680a55143fa8d0be18292717:create

create index wksp_wsdtbdev.sp_account_details_a_indx_1 on
    wksp_wsdtbdev.sp_account_details (
        account_id
    );

