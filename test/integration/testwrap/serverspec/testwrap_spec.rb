### Syseng cookbook Server Spec tests
### A series of tests to be applied and tested against the syseng cookbook
### For most of this, We will assume that chef fills in file contents correctly, and will instead check if items are working as intended after configuration
### ex: Check that DNS resolves a basic test host, not the exact contents of /etc/resolv.conf 


require 'serverspec'


set :backend, :exec
set :path, '/sbin:/usr/local/sbin:/bin:/usr/sbin:$PATH'


describe file("/tmp/test.txt") do 
it { should be_file }
its(:content) { should include 'This value has been changed' }  
its(:content) { should_not include 'This will be set to nil' }
end
