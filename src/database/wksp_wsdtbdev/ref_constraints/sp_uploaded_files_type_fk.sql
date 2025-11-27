alter table sp_uploaded_files_type
    add constraint sp_uploaded_files_type_fk
        foreign key ( account_id )
            references sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"47d7fb952c2848b673f09eb58ab67d97d10cf1d3","type":"REF_CONSTRAINT","name":"SP_UPLOADED_FILES_TYPE_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}