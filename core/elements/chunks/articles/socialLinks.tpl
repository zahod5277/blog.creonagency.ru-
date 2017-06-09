{if $_modx->resource.vkLink!=''||$_modx->resource.facebookLink!=''}
    {var $link = ''}
    {if $_modx->resource.vkLink?}
        {var $link = '<a href="'~$_modx->resource.vkLink~'" title="Обсудить статью '~$_modx->resource.pagetitle~'" target="_blank" class="social_title">ВКонтакте</a>'}
        {var $and = ' и '}
    {/if}
    {if $_modx->resource.facebookLink?}
        {var $link = $link ~ $and ~'<a href="'~$_modx->resource.facebookLink~'" title="Обсудить статью '~$_modx->resource.pagetitle~'" target="_blank" class="social_title">Facebook</a>'}
    {/if}
    <div class="col-xs-12">
        <p>Обсудить статью можно в {$link}</p>
    </div>
{/if}
