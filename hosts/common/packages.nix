{
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    home-manager

    git
    vim
    wget

    nodejs
    nodePackages.npm
    nodePackages.pnpm

    cargo
    cargo-expand
    cargo-fuzz
    clang
    clippy
    gcc
    rust-analyzer
    rustc
    rustfmt
    rustup
  ];
}
