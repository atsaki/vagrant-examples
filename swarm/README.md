IDCFクラウドでDocker Swarmを起動する

参照: [Docker Swarmでクラスタを構築する](http://qiita.com/atsaki/items/16c50dfd579a9339c333)

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

2. boxを取得します

```bash
$ vagrant box add atsaki/idcfcloud_ubuntu_14.04
```

3. VMを起動します

node1, node2, node3 の3つのVMが起動します。

