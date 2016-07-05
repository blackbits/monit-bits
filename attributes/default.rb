default[:monit][:notify_email]          = 'ops@blackbits.pro'

default[:monit][:mail_format][:from]    = 'monit@blackbits.pro'
default[:monit][:mail_format][:subject] = '[$HOST] $SERVICE $EVENT'
default[:monit][:mail_format][:message] = '$DESCRIPTION - $HOST $ACTION at $DATE.'

default[:monit][:mailserver][:host] = 'smtp.sendgrid.net'
default[:monit][:mailserver][:port] = 587
default[:monit][:mailserver][:password_suffix] = nil
default[:monit][:mailserver][:encryption] = 'tlsv1'
default[:monit][:mailserver][:timeout] = 30

default[:monit][:ssh_port] = node[:ssh][:port]

default[:monit][:loadavg] = [node[:cpu][:total] * 2.0 + 1,
                             node[:cpu][:total] + 1]
default[:monit][:memory] = 75
default[:monit][:cpu] = ["#{node[:cpu][:total] * 70}%",
                         "#{node[:cpu][:total] * 30}%",
                         "#{node[:cpu][:total] * 20}%"]
