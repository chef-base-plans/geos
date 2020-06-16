[![Build Status](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_apis/build/status/chef-base-plans.geos?branchName=master)](https://dev.azure.com/chefcorp-partnerengineering/Chef%20Base%20Plans/_build/latest?definitionId=69&branchName=master)

# geos

GEOS (Geometry Engine - Open Source) is a C++ port of the ​Java Topology Suite (JTS).  See [documentation](https://trac.osgeo.org/geos)

## Maintainers

* The Core Planners: <chef-core-planners@chef.io>

## Type of Package

Binary package

### Use as Dependency

Binary packages can be set as runtime or build time dependencies. See [Defining your dependencies](https://www.habitat.sh/docs/developing-packages/developing-packages/#sts=Define%20Your%20Dependencies) for more information.

To add core/geos as a dependency, you can add one of the following to your plan file.

##### Buildtime Dependency

> pkg_build_deps=(core/geos)

##### Runtime dependency

> pkg_deps=(core/geos)

### Use as Tool

#### Installation

To install this plan, you should run the following commands to first install, and then link the binaries this plan creates.

``hab pkg install core/geos --binlink``

will add the following binary to the PATH:

* /bin/geos-config

#### Using an example binary

You can now use the binary as normal.  For example:

``/bin/geos-config --help`` or ``geos-config --help``

```bash
$ geos-config --help
Usage: geos-config [OPTIONS]
Options:
     [--prefix]
     [--version]
     [--libs]
     [--clibs]
     [--cclibs]
     [--static-clibs]
     [--static-cclibs]
     [--cflags]
     [--ldflags]
     [--includes]
     [--jtsport]
```
