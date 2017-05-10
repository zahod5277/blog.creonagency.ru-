{if $idx==1||$idx%6==0||$idx==7}
    <div class="col-md-6 col-sm-12">
        <div class="post big_post" style="background-image: url({$largeThumb});">
            <div class="post_info">
                <div class="post_title">
                    <a href="{$uri}" titl="{$pagetitle}">{$pagetitle|truncate:'47':'...'}</a>
                </div>
                <div class="post_category">{$longtitle}</div>
                <div class="post_desc">
                    <span>{$introtext}</span>
                </div>
                <a href="{$uri}" class="post_more">Читать далее</a>
            </div>
        </div>
    </div>
{else}
    <div class="col-md-3 col-sm-6 make-xs-12">
        <div class="post" style="background-image: url({$mediumThumb});">
            <div class="post_info">
                <div class="post_title">
                    <a href="{$uri}" title="{$pagetitle}">{$pagetitle}</a>
                </div>
                <div class="post_category">
                    {$longtitle}
                </div>
                <div class="post_desc">
                    <span>{$introtext}</span>
                </div>
                <a href="{$uri}" class="post_more">Читать далее</a>
            </div>
        </div>
    </div>  
{/if}