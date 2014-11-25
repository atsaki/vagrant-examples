IDCFクラウドでsaltstackのmaster, minionを起動する例です。

1. 動作に必要なプラグインのインストール

```bash
$ vagrant plugin install vagrant-cloudstack
$ vagrant plugin install dotenv
```

1. .envファイルを作成します

```ruby
CLOUDSTACK_API_KEY          = 'YOUR_API_KEY'
CLOUDSTACK_SECRET_KEY       = 'YOUR_SECRET_KEY'
CLOUDSTACK_PF_IP_ADDRESS_ID = 'IP_ADDRESS_ID'
CLOUDSTACK_SSH_KEYPAIR      = 'KEYPAIR_NAME'
VAGRANT_SSH_USERNAME        = 'root'
VAGRANT_SSH_PRIVATE_KEY     = 'YOUR_SSH_PRIVATE_KEY_PATH'
```

2. boxを作成します

```bash
$ ./prepare_box.sh
```

3. VMを起動します

salt, minion1, minion2の3つのVMが起動します。

```bash
$ EXCON_DEBUG=1 vagrant up --debug --provider=cloudstack 
```

4. 失敗のメッセージがでていたら以下を確認します

次のコマンドでステータスを確認し、runningになっていないものがいたら再度```vagrant up```
コマンドを実行します。

```bash
$ vagrant status
```

runningになっている場合でSSH関連のメッセージが出ている場合には、provisioningが
失敗している可能性があるので次のコマンドでプロビジョニングを再実行します。

```bash
$ vagrant provision
```

5. saltへログインします

```bash
$ vagrant ssh salt
```

5. キーの承認を行います

```bash
# salt, minion1, minion2の3つのキーが見えていることを確認
$ salt-key -L
# 全てのキーを承認
$ salt-key -A
# 全てのキーが承認されていることを確認
$ salt-key -L

6. test.pingの実行

以下のコマンドを実行し結果が返ってくることを確認します。

```bash
root@salt:~# salt '*' test.ping
salt.csecidcfcloud.internal:
True
minion1.csecidcfcloud.internal:
True
minion2.csecidcfcloud.internal:
True
```
