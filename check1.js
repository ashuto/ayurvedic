function validation(frm)
{
var IndNum = /^\d{10}$/;

	if(frm.t1.value.length==0)
	{
		alert("Enter fname");
		frm.t1.focus();
		return false;
	}
	
	else if(frm.t2.value.length==0)
	{
		alert("Enter lname");
		frm.t2.focus();
		return false;
	}

	else if(frm.t3.value.length==0)
	{
		alert("Enter address");
		frm.t3.focus();
		return false;
	}
	
	else if(frm.t4.value.length==0)
	{
		alert("Enter mobile no");
		frm.t4.focus();
		return false;
	}
	
	else if(frm.t5.value.length==0)
	{
		alert("Enter username");
		frm.t5.focus();
		return false;
	}
	
	else if(frm.t6.value.length==0)
	{
		alert("Enter password");
		frm.t6.focus();
		return false;
	}
	
	else if(frm.t7.value.length==0)
	{
		alert("Re-Enter password");
		frm.t7.focus();
		return false;
	}
	
	else if(frm.s1.value=="0")
	{
		alert("select some value");
		frm.s1.focus();
		return false;
	}


	else if(!IndNum.test(frm.t4.value))
	{
	    alert("invaild mobile no");
        return false;

	}
	
	else if(frm.t6.value!=frm.t7.value)
	{
	    alert("Password and Re-Password not correct");
		frm.t7.value=""
		frm.t7.focus();
        return false;

	}

else
return true;
}

