{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-mxToolkit";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "Smirnov75";
    repo = "ComfyUI-mxToolkit";
    fetchSubmodules = false;
    rev = "3659749ab6b19ab4bc7b2ed144e3bcf92813fbf7";
    hash = "sha256-OXhfFZHyEk6TEhqdtRhPECqebl7bsecRrRtxThDYBFs=";
  };

  propagatedBuildInputs = [
    python3.pkgs.matplotlib
  ];
  meta = {
    license = lib.licenses.mit;
  };
}
