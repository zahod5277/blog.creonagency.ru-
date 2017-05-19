<div class="breadcrumb">
    {$_modx->runSnippet('pdoCrumbs',[
        'showHome' => 1,
        'outputSeparator' => '<li> / </li>',
        'tplWrapper' => '@INLINE <ul itemscope="" itemtype="http://schema.org/BreadcrumbList" id="breadcrumbs">{$output}</ul>',
        'tpl' => '@INLINE <li><span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem">
            <a title="{$menutitle}" itemprop="item" href="{$link}"><span itemprop="name">{$menutitle}</span><meta itemprop="position" content="{$menuindex}"></a>
        </span></li>',
        'tplCurrent' => '@INLINE <li><span itemscope="" itemprop="itemListElement" itemtype="http://schema.org/ListItem">
            <span itemprop="name">{$menutitle}</span><meta itemprop="position" content="{$menuindex}">
        </span></li>'
    ])}
</div>