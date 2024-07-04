# Ansible Setup for Dotfiles and SSH Configuration (Debian & Arch only)

This repository contains Ansible playbooks to set up various dotfiles and SSH configurations for a newly installed Debian or Arch based Linux system. For your own setup, you should edit the dotfiles repository in `tasks/dotfiles.yml`, the SSH configuration in `tasks/ssh.yml`, and add your **encrypted** SSH keys in `.ssh/vault.yml`

## Prerequisites

- Ansible installed on your local machine.
- Access to the target Linux machine.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/h4z3m/ansible.git
    cd ansible
    ```

2. Set up all the configurations:

    ```bash
    ansible-playbook local.yml --ask-vault-pass
    ```

## Playbooks

- `local.yml`: Main playbook to configure dotfiles and SSH settings.

## Structure

- `.ssh/`: Contains SSH encrypted keys.
- `tasks/`: Contains individual Ansible tasks.

## Usage

Run the main playbook to set up your environment:

```bash
ansible-playbook local.yml --ask-vault-pass
```

For running specific tags:

```bash
ansible-playbook local.yml --ask-vault-pass --tags "node"
```

For excluding specific tags from running:

```bash
ansible-playbook local.yml --ask-vault-pass --skip-tags "dotfiles,core"
```
