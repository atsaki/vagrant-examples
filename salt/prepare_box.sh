#!/bin/sh

# create box
pushd idcfcloud_ubuntu_14.04_box
tar cfvz idcfcloud_ubuntu_14.04.box Vagrantfile metadata.json
popd

# add box
vagrant box add --name idcfcloud_ubuntu_14.04 ./idcfcloud_ubuntu_14.04_box/idcfcloud_ubuntu_14.04.box
