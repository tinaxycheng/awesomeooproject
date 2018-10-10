$(function(){
        $(".ratelink").click(function(){
            var val = $(this).attr('updown');
            var theid = $(this).attr('theid');
            $("#votewrapper").block({ //blocks rate-rates while processing
                message: null,
                overlayCSS: {
                    backgroundColor: '#FFF',
                    opacity: 0.6,
                    cursor: 'default'
                },
            });
        if (val == "up") {
        $.ajax({
                type: 'PUT',
                url: "/blog/posts/voteup?id="+theid,
                success: function(){
                            $("#votewrapper").unblock();
                            }   
                   });
        } 
    })
;
