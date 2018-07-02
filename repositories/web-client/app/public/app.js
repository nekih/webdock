/** @param {string} version */
var version = typeof window._env_version === "undefined" ? "undefined" : window._env_version;
/** @param {string} env */
var env = typeof window._env_environment === "undefined" ? "prod" : window._env_environment;
/** @param {boolean} debug */
var debug = (typeof window._env_debug === "undefined" ? "off" : window._env_debug) === "on" && env !== "prod";

document.write("Hello world!<br>spa / " + version);
