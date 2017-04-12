<header class="header">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-3 col-sm-6 col-xs-6 make-xs-6">
                <div class="header_left">
                    <a href="/" title="" class="header_logo">
                        <img src="{$_modx->config.assets_url}templates/default/img/logo.png" alt="">
                    </a>
                    <div class="logo_info">Блог о BTL</div>
                </div>
            </div>
            <div class="top_menu col-md-6">
                {$_modx->runSnippet('pdoMenu',[
                    'parents' => 5,
                    'level' => 1,
                    'tplOuter' => '@INLINE <ul class="menu">{$wrapper}</ul>',
                    'tpl' => '@FILE:chunks/common/mainMenu.row.tpl'
                ])}
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 make-xs-6">
                <div class="header_right">
                    {$_modx->runSnippet('!mSearchForm',[
                        'pageId' => 20,
                        'tplForm' => '@FILE:chunks/search/searchForm.tpl'
                    ])}
                    {*<a href="#" class="btn btn_top"><span>Подписаться</span></a>*}
                    <input type="checkbox" id="btn_open" class="menu_ticker">
                    <label class="btn_menu" for="btn_open">
                        <span class="first"></span>
                        <span class="second"></span>
                        <span class="third"></span>
                    </label>
                </div>
            </div>
        </div>
    </div>
</header>