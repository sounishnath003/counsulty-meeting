document.addEventListener("turbolinks:load", () => {
    const tabElements  = document.querySelectorAll("#nav-tab .tab");
 
    function onTabClick(event) {
        const activeTab = document.querySelectorAll('.active');
 
        activeTab.forEach(function (tab) {
            tab.classList.toggle('active');
        });
 
        event.target.parentElement.classList.add('.active');
        event.preventDefault();
        //*****//
        let tabPanel = document.getElementById(event.target.href.split("#")[1]);
        tabPanel.classList.toggle('active');
    }
    if(tabElements !=null){
        tabElements.forEach(function (tab) {
           tab.addEventListener('click', (event) => {
               onTabClick(event);
           });
        });
    }
 });