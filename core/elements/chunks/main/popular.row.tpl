{*Не смог правильно приджойнить таблицу, поэтому быдлокод немношк*}
{var $image = $_modx->runSnippet('!ms2Gallery',[
    'resources' => $id,
    'limit' => 1,
    'tpl' => '@INLINE {$files[0]["mediumThumb"]}'
])}
<div class="col-md-3 col-xs-6 make-xs-12">
    <div class="post" style="background-image: url('{$image}');">
        <div class="post_info">
            <div class="post_title">
                <a href="{$uri}" title="{$pagetitle}">{$pagetitle}</a>
            </div>
            <div class="post_category">
                <span>{$longtitle}</span>
            </div>
            <div class="post_desc">
                <span>{$introtext}</span>
            </div>
            <a href="{$uri}" title="{$pagetitle}" class="post_more">Читать далее</a>
        </div>
    </div>
</div>