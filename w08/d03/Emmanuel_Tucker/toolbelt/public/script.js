pretty.log('Reading script.js...').ok();

/* Insert a new script tag into the source of the page. */
function loadScript(urls) {
    urls.forEach(function(url) {
        var scriptEl = document.createElement('script');
        scriptEl.setAttribute('src', url);
        document.body.insertAdjacentElement('beforeEnd', scriptEl);
    });
}

function updateDefined(elId, varName) {
    var el = document.getElementById(elId);
    if (typeof this[varName] === 'undefined') {
        el.innerText = 'no';
    } else {
        el.innerText = 'yes';
        el.setAttribute('class', 'def');
    }
}

function refreshSource() {
    updateDefined('val-beautify', 'html_beautify');
    updateDefined('val-prism', 'Prism');
    updateDefined('val-jquery', 'jQuery');
    updateDefined('val-dollar', '$');

    updateFlavor();

    var el = document.getElementById('src');
    el.innerText = '{{{SO CIRCULAR VERY RECURSION WOW}}}';
    el.innerText = document.documentElement.outerHTML;

    if (typeof html_beautify !== 'undefined') {
        el.innerText = html_beautify(el.innerText, {
            max_preserve_newlines: 0,
            indent_inner_html: true,
            wrap_line_length: 80
        });
    }

    if (typeof Prism !== 'undefined') {
        el.innerHTML = Prism.highlight(el.innerText, Prism.languages.markup);
    }
}

refreshSource();

function loadScriptAndRefreshSource(buttonId, urls, variableName) {
    var button = document.getElementById(buttonId);
    button.addEventListener('click', function() {
        pretty.head('Loading ' + variableName + '...').ok();

        loadScript(urls);

        var waitForScript = function() {
            if (typeof this[variableName] === 'undefined') {
                pretty.log(variableName + ' isn\'t ready yet. Trying again in 10ms...').ok();
                setTimeout(waitForScript, 10);
            } else {
                button.disabled = true;
                refreshSource();
                pretty.head('Done!\n\n').ok();
            }
        };

        waitForScript();
    });
}

loadScriptAndRefreshSource(
    'load-jquery',
    ['//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js'],
    'jQuery'
);

loadScriptAndRefreshSource(
    'load-beautify',
    ['beautify.js', 'beautify-html.js'],
    'html_beautify'
);

loadScriptAndRefreshSource(
    'load-prism',
    ['prism/prism.js'],
    'Prism'
);

function updateFlavor() {
    var flav = document.getElementById('flavors');
    document.getElementById('val-flavors').innerText = flav.value || 'null';
    if (typeof jQuery !== 'undefined') {
        document.getElementById('val-flavors-jq').innerText = $(flav).val();
    } else {
        document.getElementById('val-flavors-jq').innerText = 'undefined';
    }
}
updateFlavor();
document.getElementById('flavors').addEventListener('click', updateFlavor);

pretty.log('Finished reading script.js.\n\n').ok();
