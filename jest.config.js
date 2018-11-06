module.exports = {
  coverageReporters: ["text-summary", "lcov"],
  moduleNameMapper: {
    "^app(.*)$": "<rootDir>/app$1"
  },
  testEnvironment: "node",
  transform: {
    "^.+\\.ts$": "ts-jest"
  },
  moduleFileExtensions: ["ts", "tsx", "js", "jsx", "json", "node"],
  testRegex: "(/__tests__/.*|(\\.|/)(test|spec))\\.(ts|js)x?$",
  testPathIgnorePatterns: ["mock", "stub", "utils"],
  coverageDirectory: "coverage",
  collectCoverageFrom: ["app/**/*.{ts,tsx,js,jsx}", "!app/**/*.d.ts"]
};

