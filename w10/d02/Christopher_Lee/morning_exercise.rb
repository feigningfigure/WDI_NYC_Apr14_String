# var objRegExp = /(\w+)\s(\w+)/;
# var fullName = "Jane Doe";
# var reverseName = fullName.replace(objRegExp, "$2, $1");

"Peter Parker".replace(/(\w+)\s(\w+)/, "$2, $1");


"Eva-Lotte O'Malley".replace(/([a-zA-Z'-]+)\s([a-zA-Z'-]+)/, "$2, $1");

"Eva-Lotte O'Malley".(/([\w-']+)\s()([\w-']+)/, "$2, $1");
