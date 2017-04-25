#!/usr/bin/env bash
docker_machine_name="default"
cur_dir=$(/bin/pwd)
echo ${cur_dir}
docker-machine scp zookeeper/zookeeper.properties ${docker_machine_name}:/tmp/zookeeper.properties
docker-machine ssh ${docker_machine_name} sudo mkdir -p ${cur_dir}/zookeeper
docker-machine ssh ${docker_machine_name} sudo mv /tmp/zookeeper.properties ${cur_dir}/zookeeper/.