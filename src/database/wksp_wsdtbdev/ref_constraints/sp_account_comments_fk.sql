alter table wksp_wsdtbdev.sp_account_comments
    add constraint sp_account_comments_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"97f3e12e5a45afa698181a62d59e04da242a1784","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_COMMENTS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}