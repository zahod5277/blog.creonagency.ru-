{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/main/firstScreenPosts.tpl'}
    {if ('standard'|detector)}
    {include 'file:chunks/main/popular.tpl'}
    {/if}
    {include 'file:chunks/main/secondScreenPosts.tpl'}
{/block}