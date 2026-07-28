FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ENV DEBIAN_FRONTEND=noninteractive

# 1. Install base build toolchain, C++, Go, and LaTeX
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    git \
    curl \
    wget \
    gnupg \
    software-properties-common \
    gdb \
    golang-go \
    texlive-latex-extra \
    texlive-fonts-recommended \
    latexmk \
    biber \
    && rm -rf /var/lib/apt/lists/*

# 2. Install LLVM 18 & Clang 18 via official APT script
RUN wget https://apt.llvm.org/llvm.sh \
    && chmod +x llvm.sh \
    && ./llvm.sh 18 \
    && rm llvm.sh \
    && apt-get install -y --no-install-recommends \
       llvm-18-dev \
       libclang-18-dev \
       clang-tools-18 \
       clangd-18 \
    && rm -rf /var/lib/apt/lists/*

# Set default Clang/LLVM binaries to version 18
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-18 100 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-18 100 \
    && update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-18 100

# 3. Install Rust toolchain via rustup
ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable

# 4. Install TinyGo (compiles Go directly to clean LLVM IR)
RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.31.0/tinygo_0.31.0_amd64.deb \
    && dpkg -i tinygo_0.31.0_amd64.deb \
    && rm tinygo_0.31.0_amd64.deb
