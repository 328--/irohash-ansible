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
