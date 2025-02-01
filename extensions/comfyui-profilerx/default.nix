{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI_ProfilerX";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ryanontheinside";
    repo = "ComfyUI_ProfilerX";
    fetchSubmodules = false;
    rev = "e1ba34f0dcce7fb36f9ade22bdc5c8045272faa6";
    hash = "sha256-eKlUOcGTYrcULM8omSRaY51kxtyhbqAkcVhByxyv39Y=";
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
