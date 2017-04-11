<!DOCTYPE html>
<html>
{block 'HEAD'}
<head>
{include 'file:chunks/common/head.tpl'}
</head>
{/block}
    <body>
        <div class="wrapper">
            {block 'HEADER'}
            {include 'file:chunks/common/header.tpl'}
            {/block}
            {block 'CONTENT'}
            {/block}
            {block 'FOOTER'}
            {include 'file:chunks/common/footer.tpl'}
            {/block}
        </div>
        {block 'SCRIPTS'}
        {include 'file:chunks/common/scripts.tpl'}
        {/block}
    </body>
</html>