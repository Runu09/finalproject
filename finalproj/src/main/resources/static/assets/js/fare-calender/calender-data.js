document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [ 'interaction', 'dayGrid' ],
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        events: [
            {
                title: '$251',
                start: '2022-06-22'
            }
        ],
        
        locale: 'ko'
    });

    calendar.render();
});
