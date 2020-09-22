var btn = document.getElementById('loadComments');
var area = document.getElementById('area');
var spinner = document.getElementById('spinner');
var page = 1;

btn.addEventListener('click', function(){
    loadComm();
});

function loadComm() {
    $.ajax({
        url: 'getComments.php',
        method: 'POST',
        data: {'page':page},
        dataType: 'JSON',
        beforeSend: function() {
            spinner.style.visibility = 'visible';
        }
    }).done(function(res){
        var new_area = area.innerHTML;
        
        if (res.status == 'sucess') {
            for(var i = 0; i <= (res.data.length -1); i++) {
                new_area += '<div class="comment"><div class="avatar">'+ res.data[i].name +'</div><div class="message">'+ res.data[i].comment +'</div></div>';
            }
        } else {
            btn.remove();
        }

        page++;

        setTimeout(function(){
            spinner.style.visibility = 'hidden';
        }, 300);

        setTimeout(function(){
            area.innerHTML = new_area;
        }, 500);
    });
}

document.onload = loadComm();