{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "comfy-image-saver";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "giriss";
    repo = "comfy-image-saver";
    fetchSubmodules = false;
    rev = "65e6903eff274a50f8b5cd768f0f96baf37baea1";
    hash = "sha256-RgXBMt4dXS4gP0PuA1V85nHKrNkKECSHHcKNgN7+2e4=";
  };

  propagatedBuildInputs = [
    python3.pkgs.piexif
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
