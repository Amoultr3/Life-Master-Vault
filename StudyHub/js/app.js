// ===============================
// StudyHub v1
// app.js
// ===============================

document.addEventListener("DOMContentLoaded", () => {
    console.log("StudyHub Loaded");

    const buttons = document.querySelectorAll(".nav-btn");
    const title = document.querySelector(".top-bar h2");

    buttons.forEach(button => {
        button.addEventListener("click", () => {
            buttons.forEach(b => b.classList.remove("active"));
            button.classList.add("active");

            const page = button.textContent.trim();
            title.textContent = page.replace(/^[^\w]+/, "").trim();

            console.log(`Navigate to: ${page}`);
        });
    });
});
