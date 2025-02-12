{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-HunyuanVideoStyler";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ShmuelRonen";
    repo = "ComfyUI-HunyuanVideoStyler";
    fetchSubmodules = false;
    rev = "37a6b602f648a14a4fecf796f7af21a755de51f1";
    hash = "sha256-/r2ByU/P1blXfH+RR64wgNFN6vV/LvFAzW1J+yojt+U=";
  };
  propagatedBuildInputs = [
  ];

  passthru = {
    comfyui.stateDirs = [
    ];

    comfyui.prepopulatedStateFiles = [
    ];
  };

  meta = {
    license = lib.licenses.gpl3;
  };
}
