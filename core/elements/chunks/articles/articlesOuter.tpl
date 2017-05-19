{var $mainImage = $_modx->runSnippet('ms2Gallery',[
    'limit' => 1,
    'resources' => $_modx->resource.id,
    'tpl' => '@FILE:chunks/articles/articlesGallery.tpl'
])}
<section class="top_wrap" style="background-image: url('{$mainImage}')">
    <div class="container">
        <div class="top_info">
            <h1>{$_modx->resource.pagetitle}</h1>
            {if $_modx->resource.longtitle?}
            <div class="top_desc">{$_modx->resource.longtitle}</div>
            {/if}
        </div>
    </div> 
</section>
<section class="page_wrap">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-8">
                <div class="page_content">
                    {include 'file:chunks/common/breadcrumbs.tpl'}
                    {if $_modx->resource.introtext?}
                    <p>
                        {$_modx->resource.introtext}
                    </p>
                    {/if}
                    {$_modx->resource.content}
                    {if $_modx->user.id==1}
                        <h6>Кликни по картинке, чтобы получить ссылку на картинку для e-mail письма</h6>
                        {$_modx->runSnippet('ms2Gallery',[
                            'tpl' => '@FILE:chunks/articles/adminImgUrls.tpl'
                        ])}
                    {/if}
                    <div class="page_bottom">
                        <div class="row clearfix">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="social_title">Поделиться с друзьями</div>
                                <div data-background-alpha="0.0" data-buttons-color="#FFFFFF" data-counter-background-color="#ffffff" data-share-counter-size="12" data-top-button="false" data-share-counter-type="disable" data-share-style="1" data-mode="share" data-like-text-enable="false" data-hover-effect="rotate-cw" data-mobile-view="true" data-icon-color="#ffffff" data-orientation="horizontal" data-text-color="#000000" data-share-shape="round-rectangle" data-sn-ids="fb.vk.tw.ok.gp." data-share-size="40" data-background-color="#ffffff" data-preview-mobile="false" data-mobile-sn-ids="fb.vk.tw.wh.ok.vb." data-pid="1657268" data-counter-background-alpha="1.0" data-following-enable="false" data-exclude-show-more="true" data-selection-enable="true" class="uptolike-buttons" ></div>
                            </div>
                            {if $_modx->resource.tags?}
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="tags">
                                    {var $tags=$_modx->resource.tags|split}
                                    {foreach $tags as $tag}
                                        <a href="search?query={$tag}" class="tags_item">{$tag}</a>
                                    {/foreach}
                                </div>
                            </div>
                           {/if}
                        </div>
                    </div>
                </div>
            </div>
         {include 'file:chunks/articles/popularSidebar.tpl'}
        </div>
    </div> 
</section>