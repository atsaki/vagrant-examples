#!/bin/sh

# create box
pushd idcfcloud_centos_6.5
tar cfvz idcfcloud_centos_6.5.box Vagrantfile metadata.json
popd

# add box
vagrant box add --name idcfcloud_centos_6.5 ./idcfcloud_centos_6.5/idcfcloud_centos_6.5.box
