select concat('https://localhost/mifosng-provider/api/v1/loans/',ml.id,'?command=approve') URL,
concat('{ "locale": "en", "dateFormat": "dd MMMM yyyy", "approvedOnDate": "',date_format(ml.submittedon_date,'%d %M %Y","note": "Approved" }')) JSON,
'application/json' as 'Content-Type',
'test' as 'X-Mifos-Platform-TenantId'
 from 
m_loan ml
where ml.loan_status_id=100