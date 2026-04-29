window.addEventListener("scroll", function () {
    let header = document.querySelector("header");
    if (window.scrollY > 50) {
        header.classList.add("header-small");
    } else {
        header.classList.remove("header-small");
    }
});

// Smooth Scroll to Download Section
function scrollToInfo() {
    document.getElementById("download-section").scrollIntoView({ behavior: "smooth" });
}

function downloadFile() {

    let link = document.createElement("a");
    link.href = "download_pkg/racoon_guard.zip"; // file to download
    link.download = "racoon_guard.zip"; // the name of the file
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}

// Popups for products, etc...
function popUpBubbles() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
