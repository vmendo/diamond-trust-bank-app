create index sp_uploaded_files_type_indx_1 on
    sp_uploaded_files_type (
        account_id
    );


-- sqlcl_snapshot {"hash":"dec0ee638b8ef245a19fa91810958ddfc7dec958","type":"INDEX","name":"SP_UPLOADED_FILES_TYPE_INDX_1","schemaName":"WKSP_WSDTBDEV","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n   <NAME>SP_UPLOADED_FILES_TYPE_INDX_1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n         <NAME>SP_UPLOADED_FILES_TYPE</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCOUNT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}