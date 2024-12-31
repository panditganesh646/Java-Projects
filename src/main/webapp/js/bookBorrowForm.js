document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");
    const bcodeInput = document.getElementById("bcode");

    form.addEventListener("submit", (event) => {
        // Trim whitespace and retrieve value
        const bcodeValue = bcodeInput.value.trim();

        // Validation for non-empty input
        if (!bcodeValue) {
            showError("Book Code is required.");
            bcodeInput.focus();
            event.preventDefault();
            return;
        }

        // Pattern for alphanumeric with at least one number
        const alphanumericWithNumber = /^(?=.*[0-9])[a-zA-Z0-9]+$/;

        if (!alphanumericWithNumber.test(bcodeValue)) {
            showError("Book Code must contain only alphanumeric characters and include at least one number.");
            bcodeInput.focus();
            event.preventDefault();
            return;
        }

        // Clear error if everything is valid
        clearError();
    });

    /**
     * Displays an error message to the user
     * @param {string} message
     */
    function showError(message) {
        let errorContainer = document.getElementById("error-message");
        if (!errorContainer) {
            errorContainer = document.createElement("p");
            errorContainer.id = "error-message";
            errorContainer.style.color = "red";
            errorContainer.style.fontWeight = "bold";
            bcodeInput.parentElement.appendChild(errorContainer);
        }
        errorContainer.textContent = message;
    }

    /**
     * Clears any existing error message
     */
    function clearError() {
        const errorContainer = document.getElementById("error-message");
        if (errorContainer) {
            errorContainer.remove();
        }
    }
});

const themes = [
            { background: "#1A1A2E", color: "#FFFFFF", primaryColor: "#0F3460" },
            { background: "#461220", color: "#FFFFFF", primaryColor: "#E94560" },
            { background: "#192A51", color: "#FFFFFF", primaryColor: "#967AA1" },
            { background: "#F7B267", color: "#000000", primaryColor: "#F4845F" },
            { background: "#F25F5C", color: "#000000", primaryColor: "#642B36" },
        ];

        const setTheme = (theme) => {
            document.documentElement.style.setProperty("--background", theme.background);
            document.documentElement.style.setProperty("--color", theme.color);
            document.documentElement.style.setProperty("--primary-color", theme.primaryColor);
        };

        const displayThemeButtons = () => {
            const btnContainer = document.querySelector(".theme-btn-container");
            if (!btnContainer) {
                console.error("Theme button container not found.");
                return;
            }
            themes.forEach((theme) => {
                const div = document.createElement("div");
                div.className = "theme-btn";
                div.style.background = theme.background;
                btnContainer.appendChild(div);
                div.addEventListener("click", () => setTheme(theme));
            });
        };

        document.addEventListener("DOMContentLoaded", displayThemeButtons);