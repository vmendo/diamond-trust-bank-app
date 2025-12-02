alter table sp_account_documents
    add constraint sp_account_documents_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"02baa64f6b05a2804490d1f049ef3dc352e88b38","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_DOCUMENTS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}