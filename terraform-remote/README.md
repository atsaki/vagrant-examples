Terraformの出力を別のTerraformで利用する

参照: [Terraformの出力を別のTerraformで利用する](http://qiita.com/atsaki/items/d4678c1d62093fef47ec)

1. 動作に必要なプラグインのインストール

```bash
$ vagrant plugin install vagrant-cloudstack
```

2. 環境変数をexportします


```ruby
export CLOUDSTACK_API_KEY=YOUR_API_KEY
export CLOUDSTACK_SECRET_KEY=YOUR_SECRET_KEY
export CLOUDSTACK_PF_IP_ADDRESS_ID=IP_ADDRESS_ID
export CLOUDSTACK_SSH_KEYPAIR=KEYPAIR_NAME
export VAGRANT_SSH_PRIVATE_KEY=YOUR_SSH_PRIVATE_KEY_PATH
```

3. boxを取得します

```bash
$ vagrant box add atsaki/idcfcloud_ubuntu_14.04
```

4. VMを起動します


```bash
$ vagrant up
```
