# OpenAssets-BlockExplorer
Este é um explorador para obter o volume de distribuição de simples openassets.

##Como usar

1 Configure bitcoind.
2 Defina blocknotify no bitcoin.conf para executar onBlocknotify.sh
3 Defina walletnotify no bitcoin.conf para executar onWalletnotify.sh
4 Altere o valor de ROOTDIR em onBlocknotify.sh e onWalletnotify.sh
5 Crie config.ini e insira as informações necessárias

Sempre que um novo bloco for aprovado, um log será gravado no block_log

###Ao rastrear manualmente

python crawl.py <primeiro bloco a pesquisar>

Se o <primeiro bloco a pesquisar> estiver vazio, é um bloco de gênese.

Digite as informações necessárias em ["crawl"] ["nextblockhash"] do config.ini
