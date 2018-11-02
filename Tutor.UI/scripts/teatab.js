var tabs = $(".leftnavbar li");
var rightbox = $(".rightdetail>div>div");
for (i = 0; i < tabs.length; i++) {
    var tab = tabs[i];
    setTabHander(tab, i);
}
function setTabHander(tab, tabpos) {
    tab.onclick = function () {
        for (i = 0; i < rightbox.length; i++) {
            rightbox[i].className = 'unactive';
        }
        rightbox[tabpos].className = 'activerg';
    }
}