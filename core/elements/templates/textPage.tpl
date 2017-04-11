{extends 'file:templates/base.tpl'}
{block 'HEAD'}
<head>
{include 'file:chunks/common/head.tpl'}
</head>
{/block}
{block 'CONTENT'}
    {include 'file:chunks/textPage/textPage.tpl'}
{/block}