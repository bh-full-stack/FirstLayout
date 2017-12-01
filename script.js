console.log(this, "outside");
window.onload = function() {
    console.log(this, "inside onload");
    document.querySelector("h1").onclick = function() {
        console.log(this, "inside onclick");
        this.style.color = "red";
        f = function () {
            console.log(this);
        }
        f();
    }
};

