'use strict';
/**********************************************************************
 * Copyright (C) 2025 BitCtrl Systems GmbH
 * 
 * dep_example.js
 * 
 * @author  Daniel Hammerschmidt <daniel.hammerschmidt@bitctrl.de>
 * @author  Daniel Hammerschmidt <daniel@redneck-engineering.com>
 * @version 0.0.1
 *********************************************************************/

const PLUGIN_SHORT_NAME = dirname.split(PATH_SEP).pop();

module.exports = {
  [PLUGIN_SHORT_NAME]: function (pluginHandler) {
    return {
      server_startup() {
        console.log(`Plugin ${PLUGIN_SHORT_NAME} is running.`)
      }
    };
  },
};
