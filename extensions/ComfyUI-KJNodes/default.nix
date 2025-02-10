{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-KJNodes";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "kijai";
    repo = "ComfyUI-KJNodes";
    fetchSubmodules = false;
    rev = "86b5453a5ca9ecb883eedc9d0a96bf942b9ca73e";
    hash = "sha256-Y8vUwyehGX0nKO88DmdZMpWFkrQNwJO3EU4g9stBjdE=";
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
