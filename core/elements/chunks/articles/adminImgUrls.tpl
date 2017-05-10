<div class="ms2Gallery">
    {if $files?}
        {foreach $files as $file}
            <a href="{$file['largeThumb']}" target="_blank">
                <img src="{$file['thumb']}" alt="{$file['name']}" title="{$file['name']}">
            </a>
        {/foreach}
    {/if}
</div>