function validation(form_obj)
{
if(form_obj.t1.value.length==0)
{
alert("Enter To ");
form_obj.t1.focus();
return false;
}
else if(form_obj.t2.value.length==0)
{
alert("Enter Subject");
form_obj.t2.focus();
return false;
}
else if(form_obj.t3.value.length==0)
{
alert("Enter Message");
form_obj.t3.focus();
return false;
}

else
return true;
}