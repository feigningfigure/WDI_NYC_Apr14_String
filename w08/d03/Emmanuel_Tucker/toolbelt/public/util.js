var Style = {
    create: function(styles) {
        var newObject = Object.create(this);
        if (styles) copyAttrsToObject(styles, newObject);
        return newObject;
    },

    get css() {
        /* Style objects are supposed to contain properties with a 1:1 mapping
         * to CSS rules. Walk up the inheritance chain until we hit Style itself. */
        var obj = this;
        var props = [];
        do {
            var objProps = Object.getOwnPropertyNames(obj).map(function(name) {
                return name.replace('_', '-') + ': ' + obj[name];
            });
            props = props.concat(objProps);
            obj = Object.getPrototypeOf(obj);
        } while (obj && obj !== Style);
        return props.join('; ');
    }
};

function copyAttrsToObject(origin, destination) {
    Object.getOwnPropertyNames(origin).forEach(function(attrName) {
        destination[attrName] = origin[attrName];
    });
}

var pretty = {
    style: Style.create({
        font_family: 'Verdana',
        font_size: '18px'
    }),

    head: function(text) {
        this._messages.push(text);
        this._styles.push(this.style.create({font_weight: 'bold', color: '#559'}));
        return this;
    },

    log: function(text) {
        this._messages.push(text);
        this._styles.push(this.style.create());
        return this;
    },

    _messages: [],
    _styles: [],

    get ok() {
        var message = this._messages.map(function(msg) {
            return '%c' + msg;
        }).join('');

        var boundLog = console.log.bind(console, message);

        this._styles.forEach(function(style) {
            boundLog = boundLog.bind(console, style.css);
        });

        this._messages = [];
        this._styles = [];

        return boundLog;
    }
};
