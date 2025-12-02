alter table sp_account_comments
    add constraint sp_account_comments_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"2d9253ac0cc59fadd78c68f8f49a5c4354ea9339","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_COMMENTS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}