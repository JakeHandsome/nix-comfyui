{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-Detail-Daemon";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "Jonseed";
    repo = "ComfyUI-Detail-Daemon";
    fetchSubmodules = false;
    rev = "90e703d3d3f979438471c646a5d030840a2caac3";
    hash = "sha256-RtFYIiLGMYIyvRqs8NCIWq2LVQs5hpJ6XY1NFL0nfkM=";
  };

  propagatedBuildInputs = [
    python3.pkgs.matplotlib
  ];
  meta = {
    license = lib.licenses.mit;
  };
}
