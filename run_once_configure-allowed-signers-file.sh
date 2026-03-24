#!/bin/sh
# run_once_install-tpm.sh
echo "$(git config --get user.email) namespaces=\"git\" \
  $(cat ~/.ssh/id_ed25519_awv-gitlab.pub)" >> ~/.ssh/awv_allowed_signers

