create index wksp_wsdtbdev.sp_account_details_a_indx_1 on
    wksp_wsdtbdev.sp_account_details (
        account_id
    );


-- sqlcl_snapshot {"hash":"fc3e389262741da4680a55143fa8d0be18292717","type":"INDEX","name":"SP_ACCOUNT_DETAILS_A_INDX_1","schemaName":"WKSP_WSDTBDEV","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n   <NAME>SP_ACCOUNT_DETAILS_A_INDX_1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_WSDTBDEV</SCHEMA>\n         <NAME>SP_ACCOUNT_DETAILS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCOUNT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}