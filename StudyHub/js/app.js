const demo = {
  app: "StudyHub",
  sections: ["Library", "Chapter Notes", "Study Maps", "Remediation", "Uploads", "Search"],
  example: {
    chapter: "Anatomy Chapter 19 - Blood",
    note: "Potassium is monitored closely when giving loop diuretics.",
    tags: ["potassium", "loop diuretics", "electrolytes", "heart failure"],
    linkedResources: [
      "Pharmacology lecture slides - Diuretics",
      "Med-Surg Chapter 10 - Fluid and Electrolytes",
      "Study Map - Heart Failure"
    ]
  }
};

document.addEventListener("DOMContentLoaded", () => {
  document.querySelector("#seedDemoBtn")?.addEventListener("click", () => {
    document.querySelector("#demoOutput").textContent = JSON.stringify(demo, null, 2);
  });
  if ("serviceWorker" in navigator) navigator.serviceWorker.register("./sw.js").catch(() => {});
});
