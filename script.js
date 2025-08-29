document.querySelectorAll('#tabs li').forEach(tab => {
    tab.addEventListener('click', () => {
        document.querySelectorAll('#tabs li').forEach(t => t.classList.remove('active'));
        tab.classList.add('active');
        document.querySelectorAll('.tab-content').forEach(section => {
            section.classList.remove('active');
        });
        document.getElementById(tab.getAttribute('data-tab')).classList.add('active');
    });
});