{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-KJNodes";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "kijai";
    repo = "ComfyUI-KJNodes";
    fetchSubmodules = false;
    rev = "2abf557e3d6ae6618456a190044a85a52f2a585a";
    hash = "sha256-W1pMSubEtKWnFsVMndSUZeOA9wnQNuMqdIpuxQPFIVY=";
  };

  propagatedBuildInputs = [
    python3.pkgs.pillow
    python3.pkgs.scipy
    python3.pkgs.matplotlib
    python3.pkgs.huggingface-hub
    python3.pkgs.mss
    python3.pkgs.opencv-python
  ];

  meta = {
    license = lib.licenses.mit;
  };
}
