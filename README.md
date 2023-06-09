# Puppet Project
## Partie 2 : écriture des manifests et modules Puppet (4 heures)

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



## Partie 3 : Les environnements Puppet (2 heures)

# Setting up Git Repository for Puppet Environments

This repository is designed to manage Puppet environments using Git branches. The following branches represent different environments:

- `production`: Production environment for validated modules.
- `development`: Environment for code under development.
- `test`: Environment for testing code before merging it into production.

The `development` branch contains code that is currently being written, while the `test` branch holds code that is being tested. Once the code is validated in the `test` branch, it will be merged into the `production` branch.

The Git development graph will reflect this structure. The `production` branch will be tagged with the name "1.0" when it contains validated modules from all three services.

## Puppet Web Environment

A new branch, `web`, has been created to represent the Puppet Web environment. This branch will be used for machines hosting websites and will include the Apache module.

To modify the Apache module and make the deployed website display the following information:

- Uptime of the machine
- Current time
- Operating system and its version

Access the website at the following address: [http://localhost](http://localhost)

## Instructions

To get started with this Git repository, follow these steps:

1. Clone the repository: `git clone [repository-url]`
2. Create a new branch for the desired environment:
   - Production: `git checkout -b production`
   - Development: `git checkout -b development`
   - Test: `git checkout -b test`
   - Web: `git checkout -b web`
3. Make necessary modifications or additions to the code.
4. Commit your changes: `git commit -m "Add descriptive commit message"`
5. Push the changes to the remote repository: `git push origin [branch-name]`

Remember to merge validated changes from the `test` branch into the `production` branch once they have been tested and approved.

# Puppet Environment Setup

This repository contains the setup instructions for creating Puppet environments and deploying the Apache module. Follow the steps below to set up the environments and configure the Apache module.

## Prerequisites

- Git should be installed on your system.

## Setup

```bash
# Make sure you are in the repository directory.

# Create new branches for the Puppet environments
git branch production
git branch development
git branch test

# Switch to the production branch
git checkout production

# Make necessary modifications and validate the modules
git add .
git commit -m "Validated production modules"

# Tag the version as 1.0
git tag 1.0

# Switch back to the development branch
git checkout development

# Create a new branch for the Puppet Web environment
git branch web

# Switch to the web branch
git checkout web

# Modify the Apache module to display requested information
# Add and validate the changes
git add .
git commit -m "Updated Apache module"

# Deploy the Apache module on the web servers

# Accessing the Website
# Replace <server_ip_address> with the actual IP address or domain name
# of the web server hosting the site
# Example: http://192.168.1.100
