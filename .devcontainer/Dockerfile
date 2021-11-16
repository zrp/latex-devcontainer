# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.177.0/containers/typescript-node/.devcontainer/base.Dockerfile

# [Choice] Node.js version: 16, 14, 12
ARG VARIANT="16-bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:${VARIANT}

# Change default shell for RUN commands to bash
SHELL ["/bin/bash", "-c"]

# Install additional OS packages
ARG PKGS=

RUN if [[ ! -z "$PKGS" ]]; then echo "Installing packages ${PKGS}.." \
    && apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends ${PKGS} \
    ;fi

# Add global modules
ARG GLOBAL_MODULES=

RUN if [[ ! -z "$GLOBAL_MODULES" ]]; then echo "Installing global modules ${GLOBAL_MODULES}..." \
    && su node -c "npm install -g ${GLOBAL_MODULES}" \
    ;fi

# Configure history
ARG HISTFOLDER=/history

RUN SNIPPET="export PROMPT_COMMAND='history -a' && export HISTFILE=${HISTFOLDER}/.history" \
    && mkdir ${HISTFOLDER} \
    && touch ${HISTFOLDER}/.history \
    && chown -R node ${HISTFOLDER} \
    && echo $SNIPPET >> "/home/node/.bashrc"

# Fix Latex Workshop format
RUN cpan Log::Log4perl && \
    cpan Log::Dispatch && \
    cpan YAML::Tiny && \
    cpan File::HomeDir && \
    cpan Unicode::GCString
