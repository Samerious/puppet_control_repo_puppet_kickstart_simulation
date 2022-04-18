short_host_length = 7

if 'SA50791v'.length > short_host_length

    DATACENTERS = {
        "54.176" => "CTDC",
        "203.3"  => "NJDC",
        "220.3" => "NJDC"
    }

    short_network_ip = '54.176.140.0'.split('.')[0,2].join('.')

    puts DATACENTERS[short_network_ip] 
end