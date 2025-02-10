{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-Easy-Use";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "yolain";
    repo = "ComfyUI-Easy-Use";
    fetchSubmodules = false;
    rev = "123917da9adec0d2b0b5f817deefb9ac3ed464f1";
    hash = "sha256-ofYrbsNqS5bkwHNXXRNuDQaGWkG2RMLsWj+VoPtaAv4=";
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
