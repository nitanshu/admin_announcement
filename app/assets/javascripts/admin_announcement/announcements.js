function hide_announcement_panel(){
    if ($('.notices .notice_panel').length == 0) {
        $('.notices').hide();
    }
}