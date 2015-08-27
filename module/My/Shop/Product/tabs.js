Floxim.handle('.tabs', function() {
    var $container = $(this),
        $tabs = $container.find('.tab');
        
    function get_data_block() {
        var $res = null;
        $('.fx_infoblock').each(function() {
            var $ib = $(this);
            if ($ib.data('fx_infoblock').controller === 'my.shop.product:list_by_parent') {
                $res = $ib;
                return false;
            }
        });
        return $res;
    }
        
    function set_tab($tab) {
        if ($container.hasClass('tabs_frozen')) {
            return false;
        }
        $container.addClass('tabs_frozen');
        $tabs.removeClass('tab_active');
        $tab.addClass('tab_active');
        var  $data_block = get_data_block();
        Floxim.reload(
            $data_block, 
            function(e) {
                $container.removeClass('tabs_frozen');
            },
            {parent_id:$tab.data('id')}
        );
    };
    
    $tabs.click(function() {
        set_tab($(this));
    });
    
    set_tab($tabs.first());
});