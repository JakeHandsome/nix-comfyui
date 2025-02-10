{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "comfyui-dynamicprompts";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "giriss";
    repo = "comfyui-dynamicprompts";
    fetchSubmodules = false;
    rev = "3f2fff32358cf39e21b8b440ca87eac9a8e2bade";
    hash = "sha256-L9QaTputJRxps9oIo56WlAzKYJGJapTuX87xdTiqkZw=";
  };

  propagatedBuildInputs = [
    python3.pkgs.dynamicprompts
  ];

  passthru = {
    comfyui.stateDirs = [
    ];

    comfyui.prepopulatedStateFiles = [
    ];
  };

  meta = {
    license = lib.licenses.gpl3;
  };
}
