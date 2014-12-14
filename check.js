function validation1(form_obj)
{
if(form_obj.uname.value.length==0)
{
alert("Enter Username ");
form_obj.uname.focus();
return false;
}
else if(form_obj.passwd.value.length==0)
{
alert("Enter Password");
form_obj.passwd.focus();
return false;
}
else
return true;
}
