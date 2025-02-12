{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "huchenlei-layerdiffuse";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "huchenlei";
    repo = "ComfyUI-layerdiffuse";
    fetchSubmodules = false;
    rev = "fffa28a7b1c10fc10c012b59b83f3e0a729e00ba";
    hash = "sha256-4STp8AKwJ4OKEi/CkYCftl/lauwV6rlJ8pkG8NcE4yk=";
  };

  propagatedBuildInputs = [
    python3.pkgs.diffusers
    python3.pkgs.einops
    python3.pkgs.numpy
    python3.pkgs.opencv-python
    python3.pkgs.packaging
    python3.pkgs.torch
    python3.pkgs.tqdm
  ];

  passthru = {
    check-pkgs.ignoredModuleNames = [
      "^diffusers.models.unet_2d_blocks$"
    ];
  };

  meta = {
    license = lib.licenses.asl20;
  };
}
