{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "was-node-suite";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "WASasquatch";
    repo = "was-node-suite-comfyui";
    fetchSubmodules = false;
    rev = "393aecf91fe193f292f02421ac8262cc88ed2875";
    hash = "sha256-4oo05YE4xpbLdbTH/tuKR1ivMft3T1tsVnzOenL7bnw=";
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
