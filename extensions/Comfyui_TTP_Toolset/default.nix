{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "Comfyui_TTP_Toolset";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "TTPlanetPig";
    repo = "Comfyui_TTP_Toolset";
    fetchSubmodules = false;
    rev = "6dd3f3566ce0925b71e9cdb54243119685ccbc10";
    hash = "sha256-LjaSKUU7qtogmTmLli0P9GHEX0+OIn3jeJtSKcX2K44=";
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
    license = lib.licenses.mit;
  };
}
