{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "cg-image-picker";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "chrisgoringe";
    repo = "cg-image-picker";
    fetchSubmodules = false;
    rev = "f349bc0a38ab78a1289e808ec824f3be553594c3";
    hash = "sha256-4X4+tH45DYLDvt94Xeqxgrk32Hekt7iVb1KzRerKH9Q=";
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
