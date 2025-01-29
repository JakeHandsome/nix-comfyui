{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "rgthree-comfy";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "rgthree";
    repo = "rgthree-comfy";
    fetchSubmodules = false;
    rev = "5d771b8b56a343c24a26e8cea1f0c87c3d58102f";
    hash = "sha256-6FziENHJPjyR+xhSstwu1ZmnmvAKoVxPnJjPTydfxMc=";
  };

  meta = {
    license = lib.licenses.mit;
  };
}
