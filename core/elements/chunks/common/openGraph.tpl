{var $mainImage = $_modx->runSnippet('ms2Gallery',[
    'limit' => 1,
    'resources' => $_modx->resource.id,
    'tpl' => '@FILE:chunks/articles/articlesGallery.tpl'
])}
 {if $_modx->resource.template==2}
 <meta property="og:image" content="{$mainImage}" />
 {/if}
 {if $_modx->resource.pagetitle?}
 <meta property="og:title" content="{$_modx->resource.pagetitle}" />
 {/if}
 {if $_modx->resource.introtext?}
 <meta property="og:description" content="{$introtext}" />
 {/if}