[when]The applicant has less than {age} years old=applicant:Applicant( age < {age} )
[when]The applicant has more than {age} years old=applicant:Applicant( age > {age} )
[when]There is a loan=loan:Loan()
[then]The applicant is not eligible=modify( applicant ) \{ setEligible( false )\}
[then]The loan is rejected because "{message}"=modify( loan ) \{setApproved(false), setComment( "{message}" )\}
[then]Log rule name=System.out.println("Rule fired : [" + drools.getRule().getName()+"]");