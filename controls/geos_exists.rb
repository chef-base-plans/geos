title 'Tests to confirm geos exists'

plan_name = input('plan_name', value: 'geos')
plan_ident = "#{ENV['HAB_ORIGIN']}/#{plan_name}"
geos_relative_path = input('command_path', value: '/bin/geos-config')
geos_installation_directory = command("hab pkg path #{plan_ident}")
geos_full_path = geos_installation_directory.stdout.strip + "#{ geos_relative_path}"
 
control 'core-plans-geos-exists' do
  impact 1.0
  title 'Ensure geos exists'
  desc '
  '
   describe file(geos_full_path) do
    it { should exist }
  end
end
