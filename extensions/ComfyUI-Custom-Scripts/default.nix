{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyUI-Custom-Scripts";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "pythongosssss";
    repo = "ComfyUI-Custom-Scripts";
    fetchSubmodules = false;
    rev = "a53ef9b617ed1331640d7a2cd97644995908dc00";
    hash = "sha256-rb+1NpyRkLY05HQ8tEljB4X6rf3dp26ANonfL0Xin00=";
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
