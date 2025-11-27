alter table wksp_wsdtbdev.sp_account_details
    add constraint sp_account_details_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"9a2cd8666a6be467a7dc10982e1546db6261639b","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_DETAILS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}