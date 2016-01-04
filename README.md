# beic-koha
Koha recipe for fedora

An [Ansible](http://www.ansible.com/) recipe for [Koha installation](https://koha-community.org/download-koha/).

Requisites used:

* Fedora server.
* Ansible, [libselinux-python](https://docs.ansible.com/ansible/intro_installation.html#managed-node-requirements), [python-dnf](https://docs.ansible.com/ansible/dnf_module.html#requirements)
* Run `localedef -i it_IT -f UTF-8 it_IT` or whatever if your locale is not set in `locale`.

© Fondazione BEIC e Federico Leva, 2016
GNU General Public License v3.0