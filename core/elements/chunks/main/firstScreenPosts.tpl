{if $_modx->resource.id==1}
    {var $parent=5}
{elseif $_modx->resource.id==9}
    {var $parent='10,23,24'}
{else}
    {var $parent=$_modx->resource.id}
{/if}
{$_modx->runSnippet('ms2GalleryResources',[
    'typeOfJoin' => 'inner',
    'includeThumbs' => 'largeThumb,mediumThumb',
    'parents' => $parent,
    'depth' => 3,
    'limit' => 6,
    'sortby' => 'publishedon',
    'sortdir' => 'DESC',
    'where' => '{"template:=":"2"}',
    'tplWrapper' => '@FILE:chunks/main/articlesFirstScreenOuter.tpl'
    'tpl' => '@FILE:chunks/main/articlesFirstScreen.row.tpl'
])}