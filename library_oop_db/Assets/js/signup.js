function validDOM(){
    let valUname = document.forms['myform']['username'].value;
    let valEmail = document.forms['myform']['email'].value;
    let valPass = document.forms['myform']['password'].value;

    let clsUname = document.querySelector('.username');
    let clsEmail = document.querySelector('.email');
    let clsPass = document.querySelector('.password');

    if(valUname == ''){
        clsUname.style.borderColor = '#dc3545';
        return false;
    }else{
        clsUname.style.borderColor = '#28a745';
    }
    
    if(valEmail == ''){
        clsEmail.style.borderColor = '#dc3545';
        return false;
    }else{
        clsEmail.style.borderColor = '#28a745';
    }

    if(valPass == ''){
        clsPass.style.borderColor = '#dc3545';
        return false;
    }else{
        clsPass.style.borderColor = '#28a745';
    }
}