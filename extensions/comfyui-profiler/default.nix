{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "comfyui-profiler";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "tzwm";
    repo = "comfyui-profiler";
    fetchSubmodules = false;
    rev = "sqxypizdxyy9rjls41vjcpm4s8jf9vw5j1992zsfy5jwlv2bmg3";
    hash = "sha256-49UlNuWyeKe/SCnIwndyEmlSL5M7EE1lTt739uP1Hes=";
  };

  meta = {
    license = lib.licenses.unfree;
  };
}
