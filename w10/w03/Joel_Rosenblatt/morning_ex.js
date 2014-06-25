var str = "jojoel10@gmail.com";

function checkEmail(str){
    var regex = /^([\w+.-])+@([\w+])+\.([a-zA-Z])/;
    return regex.test(str);
}

checkEmail(str);

