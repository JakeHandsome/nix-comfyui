{
  buildExtension,
  fetchFromGitHub,
  lib,
  python3,
}:

buildExtension {
  name = "ComfyUI-Custom-Scripts";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "pythongosssss";
    repo = "ComfyUI-Custom-Scripts";
    fetchSubmodules = false;
    rev = "bc8922deff73f59311c05cef27b9d4caaf43e87b";
    hash = "sha256-mGpH2U4HLhORo6SdG6D6s0/NG3qhq4RZnLDNxDc5Aq0=";
  };

  patches = [
    ./web_directory.patch
  ];

  postPatch = ''
    cp pysssss.default.json pysssss.json
  '';
  meta = {
    license = lib.licenses.mit;
  };
}
