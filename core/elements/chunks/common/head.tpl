<meta charset="utf-8">
<base href="{$_modx->config.site_url}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="yandex-verification" content="2c1c37d90e62c77d" />
{if $_modx->resource.longtitle==''}
    {var $title = $_modx->resource.pagetitle}
{else}
    {if $_modx->resource.template!=2}
        {var $title = $_modx->resource.longtitle}
        {else}
        {var $title = $_modx->resource.pagetitle}
    {/if}
{/if}
<title>{$title} | Блог Creon</title>
{if $_modx->resource.description?}
<meta name="description" content="{$_modx->resource.description}">
{/if}
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
{$_modx->runSnippet('MinifyX',[
    'minifyCss' => 1,
    'minifyJs' => 1,
    'registerCss' => 'default',
    'registerJs' => 'default',
    'jsSources' => '
        assets/templates/default/js/remodal.min.js
    ',
    'cssSources' => 'assets/templates/default/css/normalize.css,
    assets/templates/default/css/slick.css,
    assets/templates/default/css/bootstrap-grid.css,
    assets/templates/default/css/style.css,
    assets/templates/default/css/media.css,
    assets/templates/default/css/remodal.css,
    assets/templates/default/css/remodal-default-theme.css'
])}
{include 'file:chunks/common/openGraph.tpl'}