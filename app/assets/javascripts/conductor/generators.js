$(document).ready(function(){

    var tableBody = $('#fieldsTable tbody');
    var trContent = $('.field').html();
    
    $('#addField').click(function() {
        tableBody.append("<tr class='field'>"+trContent+"</tr>");
        return false;
    });

})  
