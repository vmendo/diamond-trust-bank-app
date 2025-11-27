create index wksp_wsdtbdev.sp_account_documents_a_indx_1 on
    wksp_wsdtbdev.sp_account_documents (
        account_id
    );


-- sqlcl_snapshot {"hash":"eaa2e3c5d18032d35b1a2c6d1caebb9e2b5a1c1e","type":"INDEX","name":"SP_ACCOUNT_DOCUMENTS_A_INDX_1","schemaName":"WKSP_WSDTBDEV","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n   <NAME>SP_ACCOUNT_DOCUMENTS_A_INDX_1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n         <NAME>SP_ACCOUNT_DOCUMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCOUNT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}