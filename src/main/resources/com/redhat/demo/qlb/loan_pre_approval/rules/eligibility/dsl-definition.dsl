[when]There is an applicant = _applicant:Applicant()
[when] - that has an age less than {age:1?[0-9]?[0-9]} years old = age < {age}
[when] - that has an age more than {age:1?[0-9]?[0-9]} years old = age > {age}
[when]There is a loan = _loan:Loan()
[then]That applicant is not eligible = modify( _applicant ) \{ setEligible( false )\}
[then]That loan is rejected because {message} = modify( _loan ) \{setApproved(false), setComment( "{message}" )\}
[then]Log rule name = System.out.println("Rule fired : [" + drools.getRule().getName()+"]");