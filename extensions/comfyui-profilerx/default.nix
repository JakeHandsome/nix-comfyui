{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI_ProfilerX";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ryanontheinside";
    repo = "ComfyUI_ProfilerX";
    fetchSubmodules = false;
    rev = "29bc10bf48f4d1366d1a63e99c5526a7f5aefe64";
    hash = "sha256-3CWK9Tia+pO9bCobCEJi6dm+NbDqZEQfoSbroJ+0KAM=";
  };

  propagatedBuildInputs = [ python3.pkgs.psutil ];

  passthru = {
    comfyui.stateDirs = [
      "custom_nodes/ComfyUI_ProfilerX/data"
    ];
  };
  meta = {
    license = lib.licenses.mit;
  };
}
