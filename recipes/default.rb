include_recipe 'monit'
include_recipe 'monit::ubuntu12fix'

resources(template: '/etc/monit/monitrc').cookbook('monit-bits')

monitrc 'system' do
  template_cookbook 'monit-bits'
end

monitrc 'ssh' do
  template_cookbook 'monit-bits'
end
