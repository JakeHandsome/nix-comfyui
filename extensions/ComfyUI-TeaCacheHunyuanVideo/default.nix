{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-TeaCacheHunyuanVideo";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "facok";
    repo = "ComfyUI-TeaCacheHunyuanVideo";
    fetchSubmodules = false;
    rev = "481ac1c2e987a8160b2ceb97bcfb00e2600957db";
    hash = "sha256-aHGVE50j0B7YGOMF5xwK4oLVnYrlVMduuHSgF2oc+Vg=";
  };

  meta = {
    license = lib.licenses.gpl3;
  };
}
