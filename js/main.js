$(document).ready(function () {
    var flag = false;
    var scroll;

    $(window).scroll(function () {
        scroll = $(window).scrollTop();
        if (scroll > 140) {
            if (!flag) {
                $('.navbar').css({ "background": "linear-gradient(to top, #ffffff, #ffffff)" });
                $('.navbar').css({ "box-shadow": "0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12)" });
                $('.navbar').css({ "-webkit-box-shadow": "0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12)" });
                $('.navbar').css({ "transition": "ease 2s" });
                $('.navbar-toggler').css({ "color": "#323232" })
                flag = true;
            }
        } else {
            if (flag) {
                $(".navbar").css({ "background": "transparent" });
                $('.navbar').css({ "box-shadow": "none" });
                $('.navbar').css({ "-webkit-box-shadow": "none" });
                $('.navbar').css({ "transition": "ease 2s" });
                $('.navbar-toggler').css({ "color": "#fff"})
                flag = false;
            }
        }
    });


    $('#closealert').click(function(event){
        $('#myalert').hide();
    });
    setTimeout(function () {
        $("#myalert").fadeOut(1500);
    }, 3000);

    $("#registrar").click(function (event) {
        var route = "php/guardar.php";

        $.ajax({
            url: route,
            type: 'POST',
            data: $('#formRegister').serialize(),

            success: function (d) {
               
                $('#formRegister')[0].reset();
                $(location).attr('href', 'http://localhost/pruebaBoombit/gracias.php');
                
                $('#myalert').show(); 
                $('#modalformaction').modal('toggle');
            },
            error: function (data) {

            },
        });
    });

});


function listar() {
    $.ajax({
        type: 'get',
        url: 'php/listar.php',
        success: function (data) {
            $('#tabla').empty().html(data);
        }
    });
}	
