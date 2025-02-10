{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-Impact-Pack";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "ltdrdata";
    repo = "ComfyUI-Impact-Pack";
    fetchSubmodules = false;
    rev = "1ae7cae2df8cca06027edfa3a24512671239d6c4";
    hash = "sha256-E63an6oiyEcTB+r78ZJwVfctuaPmT/9XL5h/nmmXPXM=";
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
