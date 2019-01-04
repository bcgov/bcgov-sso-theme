document.addEventListener("DOMContentLoaded", function(event) {
    var inputs = document.getElementsByClassName('formInput');
    var labels = document.getElementsByClassName('formLabel');
    for(var i = 0; i < inputs.length; i++) {
        var id = inputs[i].getElementsByTagName('input')[0].id;
        var label = labels[i].getElementsByTagName('label')[0].innerHTML;
        document.getElementById(id).setAttribute("placeholder", label);
    }
    
    // document.getElementById("password").setAttribute("placeholder", "Password");
    var logo = document.getElementById('kc-logo');
    var container = document.getElementById('kc-container');
    container.insertBefore(logo, container.childNodes[0]);
});
