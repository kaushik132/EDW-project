// ---------------------Navbar
(() => {
    const openNav = document.querySelector(".open-menu"),
        closeNav = document.querySelector(".close-menu"),
        navMenu = document.querySelector(".nav-link-container"),
        background = document.querySelector(".background"),
        mediaSize = 992;

    // Open and close the main navigation menu
    openNav.addEventListener("click", toggleMenu);
    closeNav.addEventListener("click", toggleMenu);
    background.addEventListener("click", toggleMenu);
    function toggleMenu() {
        navMenu.classList.toggle("open");
        background.classList.toggle("active");
    }

    // Handle dropdown menu toggling
    navMenu.addEventListener("click", (event) => {
        if (event.target.hasAttribute("data-toggle") && window.innerWidth <= mediaSize) {
            event.preventDefault();
            const dropdownMenuBranch = event.target.parentElement;

            // If already active, collapse it
            if (dropdownMenuBranch.classList.contains("active")) {
                collapseDropdownMenu(dropdownMenuBranch);
            } else {
                // Collapse any other active dropdown
                if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                    collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
                }

                // Expand the clicked dropdown
                dropdownMenuBranch.classList.add("active");
                const dropdownMenu = dropdownMenuBranch.querySelector(".dropdown-main-menu");
                dropdownMenu.style.maxHeight = dropdownMenu.scrollHeight + "px";
            }
        }
    });

    // Collapse dropdown menu helper function
    function collapseDropdownMenu(menuBranch = null) {
        if (menuBranch) {
            const dropdownMenu = menuBranch.querySelector(".dropdown-main-menu");
            dropdownMenu.style.maxHeight = null; // Reset max height to collapse smoothly
            menuBranch.classList.remove("active");
        }
    }

    // Reset dropdown menu on window resize for proper responsiveness
    window.addEventListener("resize", () => {
        if (window.innerWidth > mediaSize) {
            if (navMenu.classList.contains("open")) {
                toggleMenu();
            }
            if (navMenu.querySelector(".dropdown-menu-branch.active")) {
                collapseDropdownMenu(navMenu.querySelector(".dropdown-menu-branch.active"));
            }
        }
    });
})();

// -------------Home Banner Slider-----------------------------

