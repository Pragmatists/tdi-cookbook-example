This is an example of test-driven cookbook from [Test-Driven Infrastructure with Chef, 2nd edition](http://shop.oreilly.com/product/0636920030973.do). I fixed/adjusted some details to have this working.

To run you need the following tools installed:
  * [Vagrant](http://www.vagrantup.com/)
  * [VirtualBox](https://www.virtualbox.org/)
  * [Chef Development Kit](http://downloads.getchef.com/chef-dk/)

After cloning, please run
```
bundle install
```
to get the dependencies.

There are three tests, each representing a different type.
  1. [webserver_spec.rb](spec\webserver_spec.rb), which is a unit test for our cookbook. It will catch errors like not creating a resource or a wrong path. Run with `rspec`
  2. [webserver_integration_spec.rb](test\integration\default\serverspec\localhost\webserver_integration_spec.rb) - it's an integration test. It runs on a provisioned infrastructure and verifies the server state with serverspec. Run with `kitchen verify`
  3. [readable_services.feature](features\readable_services.feature) is a Cucumber spec automated so that it will provision the infrastructure with our cookbook and test "from the outside" weather it works as expected. Run with `cucumber`
