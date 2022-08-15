# VVV ( Varying Vagrant Vagrants )

## with Docker as default provider

VVV is a local developer environment, mainly aimed at [WordPress](https://wordpress.org) developers. It
uses [Vagrant](https://www.vagrantup.com) and Docker, and can be used to build sites, and contribute to WordPress.

## Which branch of VVV it's using as upstream ?

[develop](https://github.com/Varying-Vagrant-Vagrants/VVV). Although `develop` sometimes get new features that has issues, but this branch actively developed, and critical issue more than often get fixed in this branch fairly quick 
This is nature of VVV :
> normally `develop` is more stable, but, `develop` can sometimes be unstable if something has just been merged and we didn't spot it in time

## How To Use

To use it, download and install [Vagrant](https://www.vagrantup.com)
and [Docker](https://docs.docker.com/engine/install/). Then, clone this repository and run:

```shell
git clone -b docker-provider https://github.com/pentatonicfunk/VVV-Docker.git ~/vvv-local
cd ~/vvv-local
vagrant plugin install --local
vagrant up --provision
```

When it's done, visit [http://vvv.test](http://vvv.test).

The online documentation contains more
detailed [installation instructions](https://varyingvagrantvagrants.org/docs/en-US/installation/).

* **Web**: [https://varyingvagrantvagrants.org/](https://varyingvagrantvagrants.org/)
* **Contributing**: Contributions are more than welcome. Please see our
  current [contributing guidelines](https://varyingvagrantvagrants.org/docs/en-US/contributing/). Thanks!

## Minimum System requirements

[For system requirements, please read the system requirements documentation here](https://varyingvagrantvagrants.org/docs/en-US/installation/software-requirements/)

## Software included

For a comprehensive list, please see
the [list of installed packages](https://varyingvagrantvagrants.org/docs/en-US/installed-packages/).
