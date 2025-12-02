create index sp_account_details_a_indx_1 on
    sp_account_details (
        account_id
    );


-- sqlcl_snapshot {"hash":"834ad13b2750347e02d0d6ab0930a6e7147dcd24","type":"INDEX","name":"SP_ACCOUNT_DETAILS_A_INDX_1","schemaName":"WKSP_WSDTBDEV","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n   <NAME>SP_ACCOUNT_DETAILS_A_INDX_1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n         <NAME>SP_ACCOUNT_DETAILS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCOUNT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}