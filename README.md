# irohash-vagrant-box

- このAnsibleはIRohashのあれです
- このplaybookは未完成です.
- ゲストOSはUbuntu14.04の最小構成

# 使い方

以下でできます．
```
$ ansible-playbook -i hosts playbook.yml -u vagrant --ask-pass
$ vagrant ssh
$ ./install.sh
```


# できてないところ

ansibleでできてないところをinstall.shに記述して無理矢理動かしてます
今後修正する予定です．
- `rbenv install`,`rbenv global`時に時間がかかりすぎてTimeoutしてしまう
- heroku toolbelt kit をインストール後，結果が返ってこない
- `gem install`時に結果が返ってこない
- postgresqlにユーザが作れない


-------------

# Vagrant Cloud

- 現在Vagrant Cloudに登録はせず，ローカルのサーバにて配布中．
- boxのアップデートが増えてくるようであればboxを楽に取得できるVagrant Cloudの登録も考えています

## boxの取得からvagrant sshまで

- 有線推奨

```
$ mkdir ~/irohash && cd ~/irohash && scp __SERVER__:/net/open/VagrantBox/irohash.box ./ && vagrant box add irohash irohash.box && vagrant init irohash

```

- `rails server`用にポートフォワーディングの設定をVagrantfileに記述

```
config.vm.network "forwarded_port", guest: 3000, host: 3000
```

```
$ vagrant up
$ vagrant ssh
```

------------

## 間違えて .zshrc を上書きしてしまった

以下を.zshrcに再度記述してください
```
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/heroku/bin:$PATH"
```
