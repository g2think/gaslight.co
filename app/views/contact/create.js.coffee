$('#contact form').remove()
$('#contact').prepend('<%= j render(partial: 'contact/form') %>')
