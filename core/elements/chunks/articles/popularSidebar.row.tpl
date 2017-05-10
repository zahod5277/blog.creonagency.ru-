{*Не смог правильно приджойнить таблицу, поэтому быдлокод немношк*}
{var $image = $_modx->runSnippet('!ms2Gallery',[
    'resources' => $id,
    'limit' => 1,
    'tpl' => '@INLINE {$files[0]["mediumThumb"]}'
])}
<div class="col-md-12">
    <div class="post" style="background-image: url('{$image}');">
        <div class="post_info">
            <div class="post_title">
                <a href="{$uri}" title="{$pagetitle}">{$pagetitle|truncate:'40':'...'}</a>
            </div>
            <div class="post_category">
                <span>{$longtitle}</span>
            </div>
            <div class="post_desc">
                <span>{$introtext}</span>
            </div>
            <a href="{$uri}" class="post_more" tiitle="{$pagetitle}">Читать далее</a>
        </div>
    </div>
</div>