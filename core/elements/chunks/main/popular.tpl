{$_modx->runSnippet('pdoResources',[
    'parents' => 5,
    'where' => '{"template:=":"2"}',
    'limit' => 4,
    'tpl' => '@FILE:chunks/main/popular.row.tpl',
    'tplWrapper' => '@FILE:chunks/main/popularOuter.tpl',
    'loadModels' => 'tickets',
    'class' => 'Ticket',
    'leftJoin' => '{
        "TicketView": {
            "class": "TicketView",
            "on": "Ticket.id = TicketView.parent"
        }
    }',
    'parents' => 0,
    'select' => '{
        "Ticket": "Ticket.*",
        "TicketView": "COUNT(TicketView.uid) as countviews"
    }'
    'groupby' => 'Ticket.id'
    'sortby' => '{"countviews":"desc"}',
])}