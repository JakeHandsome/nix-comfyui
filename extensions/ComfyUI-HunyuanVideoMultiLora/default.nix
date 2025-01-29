{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-HunyuanVideoMultiLora";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "facok";
    repo = "ComfyUI-HunyuanVideoMultiLora";
    fetchSubmodules = false;
    rev = "7e3e3444d4e34557a24b3e0c502c94fe556237e4";
    hash = "sha256-8y8a83Sx7eLaXyDhNPP/sJZEq5XUxOGgOL7Cz/jX7bQ=";
  };

  meta = {
    license = lib.licenses.unfree;
  };
}
