Heading 1: What Is the Cascade in CSS?

Heading 2: Style Sheets

If you set your browser font to Verdana, the browser (Chrome, IE, Firefox, Safari, etc.) default will be overridden with that choice. (A fun way to have many choices is [please link to: https://www.google.com/fonts] Google fonts.)

If you, as a web developer, define a style sheet to use, then the  browser will use both its own style sheet and your style sheet.  Your style sheet takes precedence.

Then the cascade kicks in...

The cascade follows several rules:

The declarations are sorted by weight and origin.
The declarations are sorted by specificity of selector.
The declarations are sorted by order specified.

For normal declarations, author style sheets override user style sheets which override the default style sheet. For “!important” declarations, user style sheets override author style sheets which override the default style sheet. More specific selectors will override more general ones. And if two rules have the same weight, the latter specified wins.

Heading 3:  Specificity Calculations

Imagine your html contains a paragraph with a class of “bio” applied to it. You also have the following two css rules:

1.  p {font-size: 12px}
2.  p.bio {font-size: 14px}

Would you expect the text in your paragraph to be 12px or 14px? You can probably guess in this case it will be 14px. The second line of css (p.bio) is more specific than the first when it comes to your class=”bio” paragraph. However, sometimes the specificity isn’t so easy to see.

Heading 3:  The Cascade

At the highest level the cascade is what controls all css precedence and works as follows.

Find all css declarations that apply to the element and property in question.

Sort by origin and weight. Origin refers to the source of the declaration (author styles, user styles, browser defaults) and weight refers to the importance of the declaration. (author has more weight than user which has more weight than default. !importance has more weight than normal declarations)

Calculate specificity. If two rules are equal in all of the above, the one declared last wins. CSS embedded in the html always come after external stylesheets regardless of the order in the html


Heading 3:  Inheritance

The idea behind inheritance is relatively easy to understand. Elements inherit styles from their parent container. If you set the body tag to use color: red then the text for all elements inside the body will also be red unless otherwise specified.

Not all css properties are inherited, though. For example margins and paddings are non-inherited properties.



LINKS FOR YOU:

html tags:  http://www.w3schools.com/tags/tag_doctype.asp

hex colors:  http://cloford.com/resources/colours/500col.htm