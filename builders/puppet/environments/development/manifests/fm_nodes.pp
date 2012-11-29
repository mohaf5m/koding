node fm_nodes inherits base {
    include ssh
    include gluster_client
    include nfs_client
    #include cachefilesd
    include nginx_fm
    include authconfig
    include sudo_fm
    include php-fpm_fm

    yumrepos { 'ius':
        repo => 'ius',
    }
    bind_dir { "/Users": mpoint => "/Users", device => "/mnt/storage0/Users"}
    bind_dir { "/opt/kfmjs": mpoint => "/opt/kfmjs", device => "/mnt/storage0/kfmjs"}


    hosts_file {"$fqdn": ipaddr=> $ipaddress_eth0, aliases=>$hostname}
    hosts_file {"localhost.localdomain": ipaddr=>"127.0.0.1",aliases=>"localhost"}

    resolve { "resolver":
        nameserver1 => '172.16.0.23',
        nameserver2 => '8.8.8.8',
        domain => 'beta.system.aws.koding.com',
        search => 'beta.system.aws.koding.com',
    }

}
 
node 'fm0.beta.system.aws.koding.com' inherits fm_nodes {

}
 
