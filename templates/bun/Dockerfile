FROM docker/sandbox-templates:shell

USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl git unzip xz-utils ripgrep fd-find jq \
  && rm -rf /var/lib/apt/lists/*

USER agent
RUN curl -fsSL https://bun.sh/install | bash
ENV PATH="/home/agent/.bun/bin:${PATH}"

RUN bun --version
