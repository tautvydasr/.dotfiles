const COLORS = {
    reset: '\x1b[0m',
    bright: '\x1b[1m',
    dim: '\x1b[2m',
    underscore: '\x1b[4m',
    blink: '\x1b[5m',
    reverse: '\x1b[7m',
    hidden: '\x1b[8m',
    foreground: {
        black: '\x1b[30m',
        red: '\x1b[31m',
        green: '\x1b[32m',
        yellow: '\x1b[33m',
        blue: '\x1b[34m',
        magenta: '\x1b[35m',
        cyan: '\x1b[36m',
        white: '\x1b[37m',
    },
    background: {
        black: '\x1b[40m',
        red: '\x1b[41m',
        green: '\x1b[42m',
        yellow: '\x1b[43m',
        blue: '\x1b[44m',
        magenta: '\x1b[45m',
        cyan: '\x1b[46m',
        white: '\x1b[47m',
    }
};

const LEVELS = {
    debug: {
        name: 'Debug',
        color: 'cyan',
    },
    error: {
        name: 'Error',
        color: 'red',
    },
    important: {
        name: 'Important',
        color: 'yellow',
    },
};

function placeholder(name) {
    return `[${name.toUpperCase()}] >>>`;
}

function log(level, arguments) {
    const { name, color } = LEVELS[level];

    for (const i in arguments) {
        console.log(
            COLORS.foreground.white,
            COLORS.background[color],
            placeholder(name),
            COLORS.reset,
            COLORS.foreground[color],
            arguments[i],
            COLORS.reset,
            '\n'
        );
    }
}

function debug(...arguments) {
    log('debug', arguments);
};

function error(...arguments) {
    log('error', arguments);
};

function important(...arguments) {
    log('important', arguments);
};

module.exports = { 
    debug,
    error,
    important,
};
