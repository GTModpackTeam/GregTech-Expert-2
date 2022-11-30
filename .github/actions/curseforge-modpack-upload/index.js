/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ 485:
/***/ ((module) => {

module.exports = eval("require")("@actions/core");


/***/ }),

/***/ 764:
/***/ ((module) => {

module.exports = eval("require")("form-data");


/***/ }),

/***/ 813:
/***/ ((module) => {

module.exports = eval("require")("node-fetch");


/***/ }),

/***/ 147:
/***/ ((module) => {

"use strict";
module.exports = require("fs");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __nccwpck_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		var threw = true;
/******/ 		try {
/******/ 			__webpack_modules__[moduleId](module, module.exports, __nccwpck_require__);
/******/ 			threw = false;
/******/ 		} finally {
/******/ 			if(threw) delete __webpack_module_cache__[moduleId];
/******/ 		}
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat */
/******/ 	
/******/ 	if (typeof __nccwpck_require__ !== 'undefined') __nccwpck_require__.ab = __dirname + "/";
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
const core = __nccwpck_require__(485);
const fs = __nccwpck_require__(147);
const fetch = __nccwpck_require__(813);
const FormData = __nccwpck_require__(764);

(async () => {
    try {
        const apiToken = core.getInput('api-token');
        const projectID = Number.parseInt(core.getInput('project-id'));
        const modpackPath = core.getInput('modpack-path');
        const modpackServerPath = core.getInput('modpack-server-path');
        const changelog = core.getInput('changelog');
        const changelogFormat = core.getInput('changelog-format');
        const gameVersion = core.getInput('game-version');
        const displayName = core.getInput('display-name');
        const serverDisplayName = core.getInput('server-display-name');
        let releaseType = core.getInput('release-type');

        if (releaseType) {
            releaseType = releaseType.toLowerCase();
        }

        core.setSecret(apiToken);

        console.log(`Project ID set to '${projectID}'`);
        console.log(`Modpack path set to '${modpackPath}'`);
        console.log(`Modpack server path set to '${modpackServerPath}'`);

        core.startGroup('Upload Modpack');

        const fileID = await upload(projectID, apiToken, modpackPath, {
            changelog: changelog,
            changelogType: changelogFormat,
            displayName: displayName,
            gameVersions: gameVersion ? [gameVersion] : [],
            releaseType: releaseType
        });

        core.endGroup();
        core.startGroup('Upload Modpack Server');

        if (modpackServerPath) {
            await upload(projectID, apiToken, modpackServerPath, {
                changelog: changelog,
                changelogType: changelogFormat,
                displayName: serverDisplayName,
                parentFileID: fileID,
                releaseType: releaseType
            });
        }

        core.endGroup();

        core.setOutput('id', fileID);
    } catch (error) {
        core.setFailed(error.message);
    }
})();

async function upload(projectID, apiToken, file, metadata) {
    const form = new FormData();
    form.append('metadata', JSON.stringify(metadata));
    form.append('file', fs.createReadStream(file));

    const res = await fetch(`https://minecraft.curseforge.com/api/projects/${projectID}/upload-file`, { method: 'POST', body: form, headers: { 'X-Api-Token': apiToken } });

    if (!res.ok) {
        core.setFailed(`Uploading file returned status code ${res.status}`);
        process.exit(1702);
    }

    const response = await res.json();

    if (!response.id) {
        core.setFailed('Uploading file did not return a file ID');
        process.exit(1703);
    }

    return response.id;
}
})();

module.exports = __webpack_exports__;
/******/ })()
;