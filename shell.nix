{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  packages = [
    kubectl
    kubernetes-helm
    k9s
    k3d
    fluxcd
  ];

  env.KUBECONFIG = "kubceonfig.yml";
}

