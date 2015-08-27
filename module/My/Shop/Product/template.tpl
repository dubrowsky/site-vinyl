<div fx:template="nav_tabs" class="tabs" fx:of="floxim.nav.section:list">
    {js}
        /module/Floxim/Ui/Js/Floxim.js
        tabs.js
    {/js}
    {css}tabs.less{/css}
    <a fx:item class="tab {if $position == 1}tab_active{/if}" data-id="{$id}" data-url="{$url}">{$name}</a>
</div>