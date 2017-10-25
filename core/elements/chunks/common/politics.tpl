{if $_modx->resource.context_key=='web'}
    {var $politics = 27}
    {var $userAgreement = 58}
{/if}
<label class="politics firstPolitics">
    <small>
        <input type="checkbox" name="politics"  class="noStyle">
            Нажимая кнопку "Подписаться", я принимаю
            <a target="_blank" rel="nofollow" href="{$userAgreement|url}">пользовательское соглашение</a> и подтверждаю, что ознакомлен и согласен с <a href="{$politics|url}" target="_blank" rel="nofollow">политикой конфиденциальности</a> данного сайта
    </small>
</label>