// to test regex
// pattern:  regexObj.test(str)
/^[\w]+\s[\w]+$/.test("Peter Parker");

// email regex

// 1
/[\w.]+[@][\w^_]+[.][\w^_]{2,6}/.test("declan.v@metro.museum");

// 2
/^([\w+.-])+@([\w+])+\.([a-zA-Z])/.test("declan.v@metro.museum");

// 3
/[\w-.\!\#\$\%\&\'\*\+\/\=\?\^\_v`\{\|\}~]+[@][\w.-]+[.][\w^_]{2,6}/.test("declan.v@metro.museum");

// 4
/\b[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,6}\b/.test("declan.v@metro.museum")

// 5
/^[A-Za-z\d]+\@.+\..+/.test("declan.v@metro.museum");

// 6
/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test("declan.v@metro.museum");












