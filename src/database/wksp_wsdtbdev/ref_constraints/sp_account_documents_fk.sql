alter table wksp_wsdtbdev.sp_account_documents
    add constraint sp_account_documents_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"bbac56a8beadca6a01611ff9875cfe66cb4ef7fe","type":"REF_CONSTRAINT","name":"SP_ACCOUNT_DOCUMENTS_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}