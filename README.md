# Puppet Project

This project contains Puppet modules for configuring the **SSH**, **Apache**, and **NTP** services.

## Modules

### ssh_configuration

The `ssh_configuration` module manages the configuration of the **SSH** service.

#### Manifests

- **init.pp**: Main file that handles dependencies of other classes.
- **params.pp**: Defines relevant parameters for installing the required packages.
- **install.pp**: Installs the required packages, including `openssh-server`.
- **config.pp**: Manages the **SSH** configuration file using a template.
- **service.pp**: Manages the **SSH** service.

#### Templates

- **sshd_config.erb**: **SSH** service configuration file. Sets the connection protocol to version 2 and uses the specified port from the parameters.

### apache_configuration

The `apache_configuration` module manages the configuration of the **Apache** service.

#### Manifests

- **init.pp**: Main file that handles dependencies of other classes.
- **params.pp**: Defines relevant parameters for installing the required packages.
- **install.pp**: Installs the required package, including `apache2`.
- **config.pp**: Manages the **Apache** configuration file using a template.
- **service.pp**: Manages the **Apache** service.

#### Templates

- **000-default.conf.erb**: Default **Apache** virtual site configuration file. Sets the listening port to the specified port and defines the document root to display a project summary.

### ntp_configuration

The `ntp_configuration` module manages the configuration of the **NTP** service.

#### Manifests

- **init.pp**: Main file that handles dependencies of other classes.
- **params.pp**: Defines relevant parameters for installing the required packages.
- **install.pp**: Installs the required packages, including `ntp`.
- **config.pp**: Manages the **NTP** configuration file using a template.
- **service.pp**: Manages the **NTP** service.


## Usage

1. Make sure you have **Puppet** installed on your system.
2. Place the `ssh_configuration`, `apache_configuration`, and `ntp_configuration` modules in the Puppet modules directory.
3. Configure the relevant parameters in the module files, if necessary.
4. Run the command `sudo puppet apply --modulepath=/path/to/your/module/ -e "include ssh_configuration, apache_configuration, ntp_configuration"` to apply the configuration for the **SSH**, **Apache**, and **NTP** services.

Replace "/path/to/your/module/" with the actual path to the directory containing the Puppet modules.

**Note**: Make sure you have administrative privileges (**sudo**) to execute Puppet commands.

Feel free to modify this README file according to your project's needs by adding additional information.

If you have any further questions, please let me know!
