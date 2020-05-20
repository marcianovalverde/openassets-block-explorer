# -*- coding: utf-8 -*-
import subprocess
import sys
from bitcoinrpc.authproxy import AuthServiceProxy
import configparser

from signal import signal, SIGPIPE, SIG_DFL
signal(SIGPIPE, SIG_DFL)

GENESIS_BLOCK = "617fc383b07fbab3505213b41fe34f9705b92d854a9f72593cb616e4726e155c"
GENESIS_BLOCK_TESTNET = "be10a5eb2ff7c7f2c958826bc773b05748cf3c8c851744425e1af311ed36e502"

if __name__ == "__main__":
    config = configparser.ConfigParser()
    config.read("config.ini")

    blockHash = GENESIS_BLOCK
    if "rpcsetting" in config and "testnet" in config["rpcsetting"] and config["rpcsetting"]["testnet"] is "1":
        blockHash = GENESIS_BLOCK_TESTNET
    if len(sys.argv) > 1:
        blockHash = sys.argv[1]
    elif "crawl" in config and "nextblock" in config["crawl"]:
        blockHash = config["crawl"]["nextblock"]
    num = 100
    if len(sys.argv) > 2:
        num = int(sys.argv[2])
    if len(blockHash) != 0:
        hostURL = "http://{0}:{1}@{2}:{3}".format(
            config["rpcuser"]["rpcid"],
            config["rpcuser"]["rpcpass"],
            config["rpcsetting"]["host"],
            config["rpcsetting"]["port"]
        )
        print(hostURL)
        rpcConnection = AuthServiceProxy(hostURL)
        # for i in range(num):
        while(True):
            print(blockHash)
            block = rpcConnection.getblock(blockHash)
            blockHash = block["nextblockhash"]
            res = subprocess.run(
                ["python", "getdistribution.py", blockHash], stdout=subprocess.PIPE)
            sys.stdout.buffer.write(res.stdout)
            try:
                config.set("crawl", 'nextblock', blockHash)
                config.write(open("config.ini", 'w'))
            except Exception as e:
                print >> sys.stderr, 'Error: Could not write to config file: %s' % e
                sys.exit(1)
