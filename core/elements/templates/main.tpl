{extends 'file:templates/base.tpl'}
{block 'CONTENT'}
    {include 'file:chunks/main/firstScreenPosts.tpl'}
    {include 'file:chunks/main/popular.tpl'}
    {include 'file:chunks/main/secondScreenPosts.tpl'}
{/block}