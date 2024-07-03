# Ansible Setup for Dotfiles and SSH Configuration

This repository contains Ansible playbooks to set up various dotfiles and SSH configurations for a newly installed Linux system.

## Prerequisites

- Ansible installed on your local machine.
- Access to the target Linux machine with SSH.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/h4z3m/ansible.git
    cd ansible
    ```

2. Set up SSH keys and configurations:

    ```bash
    ansible-playbook local.yml
    ```

## Playbooks

- `local.yml`: Main playbook to configure dotfiles and SSH settings.

## Structure

- `.ssh/`: Contains SSH configuration files.
- `tasks/`: Contains individual Ansible tasks.
- `Dockerfile`: Docker setup (if applicable).

## Usage

Run the main playbook to set up your environment:

```bash
ansible-playbook local.yml
