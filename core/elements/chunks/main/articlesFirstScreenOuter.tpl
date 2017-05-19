<section class="posts_wrap">
    <div class="container">
        {if $_modx->resource.id!=1}
            {include 'file:chunks/common/breadcrumbs.tpl'}
        {/if}
        <div class="row clearfix">
          {$output}  
        </div>
    </div>
</section>