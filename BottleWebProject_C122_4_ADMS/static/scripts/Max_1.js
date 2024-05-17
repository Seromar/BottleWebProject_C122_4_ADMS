document.addEventListener('DOMContentLoaded', function () {
    const sections = [
        { title: 'basic-concepts-title', content: 'basic-concepts-content', arrow: 'basic-concepts-arrow' },
        { title: 'methods-title', content: 'methods-content', arrow: 'methods-arrow' },
        { title: 'max-flow-min-cut-title', content: 'max-flow-min-cut-content', arrow: 'max-flow-min-cut-arrow' },
        { title: 'example-title', content: 'example-content', arrow: 'example-arrow' },
        { title: 'conclusion-title', content: 'conclusion-content', arrow: 'conclusion-arrow' },
    ];

    sections.forEach(section => {
        document.getElementById(section.title).addEventListener('click', function () {
            const content = document.getElementById(section.content);
            const arrow = document.getElementById(section.arrow);
            if (content.style.display === 'none') {
                content.style.display = 'block';
                arrow.textContent = '↑';
            } else {
                content.style.display = 'none';
                arrow.textContent = '↓';
            }
        });
    });

    const theoryTitle = document.getElementById('theory-title');
    const theoryContent = document.getElementById('theory-content');
    const arrow = document.getElementById('arrow');

    theoryTitle.addEventListener('click', function () {
        if (theoryContent.style.display === 'none') {
            theoryContent.style.display = 'block';
            arrow.textContent = '↑';
        } else {
            theoryContent.style.display = 'none';
            arrow.textContent = '↓';
        }
    });
});