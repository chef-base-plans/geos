title 'Tests to confirm geos works as expected'

plan_name = input('plan_name', value: 'geos')
plan_ident = "#{ENV['HAB_ORIGIN']}/#{plan_name}"

control 'core-plans-geos-works' do
  impact 1.0
  title 'Ensure geos works as expected'
  desc '
  '
  geos_path = command("hab pkg path #{plan_ident}")
  describe geos_path do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
  end
  
  geos_pkg_ident = ((geos_path.stdout.strip).match /(?<=pkgs\/)(.*)/)[1]
  describe command("DEBUG=true; hab pkg exec #{ geos_pkg_ident} geos-config --version") do
    its('exit_status') { should eq 0 }
    its('stdout') { should_not be_empty }
    its('stdout') { should match /3.7.1/ }
    its('stderr') { should be_empty }
  end
end
