# beic-koha

An [Ansible](http://www.ansible.com/) recipe for [Koha installation](https://koha-community.org/download-koha/) on Fedora.

© Fondazione BEIC e Federico Leva, 2016

GNU General Public License v3.0

# Requisites used

* Fedora server.
* dnf install ansible [libselinux-python](https://docs.ansible.com/ansible/intro_installation.html#managed-node-requirements) [python2-dnf](https://docs.ansible.com/ansible/dnf_module.html#requirements).
* Run `dnf install langpacks-it`, and if your locale is not set in `locale` also `localedef -i it_IT -f UTF-8 it_IT`. (Adapt for your language.)
* Note that CPAN may fail if system is not updated.

The recipe has tested on Fedora 25 but not fully on CentOS 7, which requires [EPEL for ansible](https://www.liquidweb.com/kb/how-to-install-ansible-on-centos-7-via-yum/) and `dnf` and [Zebra](http://www.indexdata.com/zebra/) RPMs: CentOS Plus, RPM Fusion and RepoForge lack packages too (notably Yaz).

# Steps

* Check that the configuration suits you.
* Edit `inventory.ini` to add your server IP or hostname.
* From the machine which can ssh into the server, run:
  `ansible-playbook koha.yml -u root -i inventory.ini`
  * for local installation: `ansible-playbook koha.yml -u root -i inventory.ini --connection local`
* Complete the online install.

# More information

http://wiki.koha-community.org/wiki/Koha_3.22_on_Fedora_23
