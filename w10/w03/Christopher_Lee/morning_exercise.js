(/(\w+)\s(\w+)/).test("Peter Parker")

function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

validateEmail("joe@park.com");

function validateEmail(email)
{
 var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
 if (reg.test(email)){
 return true; }
 else{
 return false;
 }
}

^
Matches beginning of input. If the multiline flag is set to true, also matches immediately after a line break character.

\w
Matches any alphanumeric character from the basic Latin alphabet, including the underscore.

x+
Matches the preceding item x 1 or more times.

(...) Capture everything enclosed

[xyz]
A character set. Matches any one of the enclosed characters. You can specify a range of characters by using a hyphen.
