# OpenAssets-BlockExplorer
Este é um explorador para obter o volume de distribuição de simples openassets.

Instale a dependencia:

pip install mysqlclient
pip install python-bitcoinrpc

## Como usar

- Configure bitcoind.
- Defina blocknotify no bitcoin.conf para executar onBlocknotify.sh
- Defina walletnotify no bitcoin.conf para executar onWalletnotify.sh
- Altere o valor de ROOTDIR em onBlocknotify.sh e onWalletnotify.sh
- Crie config.ini e insira as informações necessárias

Sempre que um novo bloco for aprovado, um log será gravado no block_log

### Ao rastrear manualmente

python crawl.py <primeiro bloco a pesquisar>

Se o <primeiro bloco a pesquisar> estiver vazio, é um bloco de gênese.

Digite as informações necessárias em ["crawl"] ["nextblockhash"] do config.ini
