{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-Impact-Pack";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ltdrdata";
    repo = "ComfyUI-Impact-Pack";
    fetchSubmodules = false;
    rev = "092310bc8f1116a8e237e8fe142c853281903a96";
    hash = "sha256-unl0PLsiY6aTXsAuMw6DCIOusfwEIGvN5i7vQ/+pI7g=";
  };

  propagatedBuildInputs = [
    python3.pkgs.segment-anything
    python3.pkgs.scikit-image
    python3.pkgs.piexif
    python3.pkgs.transformers
    python3.pkgs.opencv-python
    python3.pkgs.scipy
    python3.pkgs.numpy
    python3.pkgs.dill
    python3.pkgs.matplotlib
  ];
  meta = {
    license = lib.licenses.mit;
  };
}
