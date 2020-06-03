$(document).ready(function() {

    $('#search').keyup(function() {


        var txt = $(this).val();


        $('#result').html('');
        $.ajax({

            url: "ajax/search.php",
            method: "post",
            data: {
                search: txt
            },
            dataType: "text",
            success: function(data) {
                console.log(data)
                $('#result').html(data);

            }

        });


    });
});