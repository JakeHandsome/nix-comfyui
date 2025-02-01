{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "comfyui-dream-project";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "alt-key-project";
    repo = "comfyui-dream-project";
    fetchSubmodules = false;
    rev = "1d38975ce3cae06442683f85da090402dab26a70";
    hash = "sha256-/Db0uoNycrRnXD3k2nSC8+qsaxqqtOQMCRyM/Dihy3I=";
  };

  patches = [
    ./config-path.patch
    ./remove-evalidate.patch
  ];

  postPatch = ''
    mkdir --parents config
    touch config/.keep
    rm calculate.py
  '';

  propagatedBuildInputs = [
    python3.pkgs.imageio
    #python3.pkgs.pilgram # TODO: Missing from nix pkgs?
    python3.pkgs.scipy
    python3.pkgs.numpy
    python3.pkgs.torchvision
    #python3.pkgs.evalidate # TODO: Missing form nixpkgs
  ];
  passthru = {
    comfyui.stateDirs = [
      "custom_nodes/comfyui-dream-project/config"
    ];
    comfyui.prepopulatedStateFiles = [
      "custom_nodes/comfyui-dream-project/node_list.json"
    ];
  };
  meta = {
    license = lib.licenses.mit;
  };
}
