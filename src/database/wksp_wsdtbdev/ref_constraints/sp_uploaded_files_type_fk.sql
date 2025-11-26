alter table wksp_wsdtbdev.sp_uploaded_files_type
    add constraint sp_uploaded_files_type_fk
        foreign key ( account_id )
            references wksp_wsdtbdev.sp_accounts ( id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"9da195715979996e6ff073df229aa2fc55dd0ab4","type":"REF_CONSTRAINT","name":"SP_UPLOADED_FILES_TYPE_FK","schemaName":"WKSP_WSDTBDEV","sxml":""}