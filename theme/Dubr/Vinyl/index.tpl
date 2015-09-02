{template id="_layout_body"}
    
    {apply 
        _layout_body#imported1 
        with 
            $layout_less_vars = $template_dir . 'vars.less' . "\n" . $layout_less_vars,
            $layout_less = $template_dir . 'vinyl.less' . "\n" . $layout_less /}
    
{/template}

{template id="record_extra" test="$item.isInstanceOf('my.shop.product')"}
    {apply record_extra#imported /}
    <div fx:e="description">{$short_description /}</div>
{/template}

{template id="record_extra" test="$item.isInstanceOf('news')"}
    {apply record_extra#imported /}
    <div fx:e="text">{$text /}</div>
{/template}

{preset floxim.media.photo:listing_slider /}