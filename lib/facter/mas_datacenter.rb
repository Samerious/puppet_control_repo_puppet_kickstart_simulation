Facter.add('mas_datacenter') do

    setcode do

        short_host_length = 7

        if Facter.value('hostname').length > short_host_length

            DATACENTERS = {
                "54.177" => "CTDC",
                "203.3"  => "NJDC",
                "220.3" => "NJDC"
            }

            short_network_ip = Facter.value('network').split('.')[0,2].join('.')
    
            DATACENTERS[short_network_ip] 
        end

    end

  end