alter table sp_account_details
    add constraint sp_account_details_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"d376e96f4f2cc4713cd9263c4a8705e58b5d0439","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_DETAILS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}