{if $_modx->resource.id==1}
    {var $parent=5}
{elseif $_modx->resource.id==9}
    {var $parent='10,23,24'}
{else}
{/if}
<section class="posts_wrap">
    <div class="container" id="pdopage">
        <div class="rows row clearfix">
        {$_modx->runSnippet('!pdoPage',[
            'element' => 'ms2GalleryResources'
            'typeOfJoin' => 'inner',
            'includeThumbs' => 'largeThumb,mediumThumb',
            'parents' => $parent,
            'offset' => 6,
            'depth' => 3,
            'limit' => 6,
            'ajaxMode' => 'button',
            'sortby' => 'publishedon',
            'sortdir' => 'DESC',
            'where' => '{"template:=":"2"}',
            'tpl' => '@FILE:chunks/main/articlesFirstScreen.row.tpl',
            'frontend_css' => 'assets/components/pdotools/css/pdopageCustom.min.css',
            'ajaxTplMore' => '@FILE:chunks/common/buttonMore.tpl'
        ])}
        </div>
        {$_modx->getPlaceholder('page.nav')}
    </div>
</section>