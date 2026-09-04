FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ENV DEBIAN_FRONTEND=noninteractive

# 1. Install base build toolchain, C++, Go, LaTeX, and gnulib/coreutils
#    bootstrap prerequisites
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
    # --- gnulib / GNU coreutils bootstrap prerequisites ---
    autoconf \
    automake \
    autopoint \
    gettext \
    gperf \
    texinfo \
    bison \
    m4 \
    pkg-config \
    libtool \
    rsync \
    perl \
    && rm -rf /var/lib/apt/lists/*

# 2. Install LLVM 22 & Clang 22 via official APT script
RUN wget https://apt.llvm.org/llvm.sh \
    && chmod +x llvm.sh \
    && ./llvm.sh 22 \
    && rm llvm.sh \
    && apt-get install -y --no-install-recommends \
       llvm-22-dev \
       libclang-22-dev \
       clang-tools-22 \
       clangd-22 \
    && rm -rf /var/lib/apt/lists/*

# Set default Clang/LLVM binaries to version 22
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-22 100 \
    && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-22 100 \
    && update-alternatives --install /usr/bin/llvm-config llvm-config /usr/bin/llvm-config-22 100

# 3. Install Rust toolchain via rustup — latest stable (currently bundles LLVM 22.x,
#    matching clang-22 above). Re-check this parity if either toolchain is updated later.
ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable \
    && chown -R vscode:vscode /usr/local/rustup /usr/local/cargo

# 4. Install TinyGo (compiles Go directly to clean LLVM IR)
RUN wget https://github.com/tinygo-org/tinygo/releases/download/v0.31.0/tinygo_0.31.0_amd64.deb \
    && dpkg -i tinygo_0.31.0_amd64.deb \
    && rm tinygo_0.31.0_amd64.deb