{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-Easy-Use";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "yolain";
    repo = "ComfyUI-Easy-Use";
    fetchSubmodules = false;
    rev = "2b160cc789c5f721797b5e32308063309b0f3ecb";
    hash = "sha256-rYvf7F1X18qCHoVuHhxzelqVJ1tR3fx8eIM0ZZepRCY=";
  };

  patches = [
    ./config-path.patch
  ];

  postPatch = ''
    mkdir --parents wildcards
    touch wildcards/.keep
    mkdir --parents styles
    touch styles/.keep
    mkdir --parents config
    touch config/.keep
  '';

  propagatedBuildInputs = [
    python3.pkgs.diffusers
    python3.pkgs.accelerate
    # python3.pkgs.clip_interrogator # TODO: Missing from nixpkgs?
    python3.pkgs.lark
    python3.pkgs.onnxruntime
    python3.pkgs.opencv-python
    python3.pkgs.sentencepiece
    python3.pkgs.spandrel
  ];

  passthru = {
    comfyui.stateDirs = [
      "custom_nodes/ComfyUI-Easy-Use/wildcards"
      "custom_nodes/ComfyUI-Easy-Use/styles"
      "custom_nodes/ComfyUI-Easy-Use/config"
    ];
  };
  meta = {
    license = lib.licenses.mit;
  };
}
