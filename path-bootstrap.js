const tsConfig = require("./tsconfig.json");
const tsConfigPaths = require("tsconfig-paths");
require("source-map-support").install();

const baseUrl = "./dist";
tsConfigPaths.register({
  baseUrl,
  paths: tsConfig.compilerOptions.paths
});

