{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-VideoResolutions";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "HellerCommaA";
    repo = "ComfyUI-VideoResolutions";
    fetchSubmodules = false;
    rev = "dd66d1fbec1213e2918b3269060fe92d4ae9386f";
    hash = "sha256-XC8D8Ak0lojhdeifec+Nu763WLj2wwxwrrF8qV+6g1k=";
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
