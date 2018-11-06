import value from "../app/index";

describe("Testing Message delivery", () => {
  it("Basic test", () => {
    expect(value).toBe(42);
  });
});
