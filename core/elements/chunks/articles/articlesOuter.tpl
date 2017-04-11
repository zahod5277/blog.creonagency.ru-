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
                    {if $_modx->resource.introtext?}
                    <p>
                        {$_modx->resource.introtext}
                    </p>
                    {/if}
                    {$_modx->resource.content}
                    
                    <div class="page_bottom">
                        <div class="row clearfix">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="social_title">Поделиться с друзьями</div>
                                <div class="social_icons">
                                    <a href="#" class="soc_icon"></a>
                                    <a href="#" class="soc_icon"></a>
                                    <a href="#" class="soc_icon"></a>
                                    <a href="#" class="soc_icon"></a>
                                </div>
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
            <div class="col-md-4">
                <div class="page_sidebar">
                    <div class="sidebar_title">Популярные статьи</div>
                    <div class="posts_items">
                        <div class="row clearfix">
                            <div class="col-md-12">
                                <div class="post" style="background-image: url({$_modx->config.assets_url}templates/default/img/image-small-two.png);">
                                    <div class="post_info">
                                        <div class="post_title">Секреты эффективной работы</div>
                                        <div class="post_category">Делегирование задач</div>
                                        <div class="post_desc">Кто работает весь день, тому, по меткому замечанию Джона Рокфеллера, некогда зарабатывать деньги. То же и с успехом: ночуя в офисе, можно стать… обычным трудоголиком. Но ведь чтобы добиться успеха, надо многим пожертвовать. Или не надо?</div>
                                        <a href="#" class="post_more">Читать далее</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="post" style="background-image: url({$_modx->config.assets_url}templates/default/img/image-small-three.png);">
                                    <div class="post_info">
                                        <div class="post_title">Секреты эффективной работы</div>
                                        <div class="post_category">Делегирование задач</div>
                                        <div class="post_desc">Кто работает весь день, тому, по меткому замечанию Джона Рокфеллера, некогда зарабатывать деньги. То же и с успехом: ночуя в офисе, можно стать… обычным трудоголиком. Но ведь чтобы добиться успеха, надо многим пожертвовать. Или не надо?</div>
                                        <a href="#" class="post_more">Читать далее</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="post" style="background-image: url({$_modx->config.assets_url}templates/default/img/image-small.png);">
                                    <div class="post_info">
                                        <div class="post_title">Секреты эффективной работы</div>
                                        <div class="post_category">Делегирование задач</div>
                                        <div class="post_desc">Кто работает весь день, тому, по меткому замечанию Джона Рокфеллера, некогда зарабатывать деньги. То же и с успехом: ночуя в офисе, можно стать… обычным трудоголиком. Но ведь чтобы добиться успеха, надо многим пожертвовать. Или не надо?</div>
                                        <a href="#" class="post_more">Читать далее</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</section>