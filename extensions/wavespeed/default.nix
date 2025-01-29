{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "Comfy-WaveSpeed";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "chengzeyi";
    repo = "Comfy-WaveSpeed";
    fetchSubmodules = false;
    rev = "a9caacb0706c5fbe5fbc8718081f7c3e3e348ebd";
    hash = "sha256-tZ6Oa1eYeAkFraSVecfARdBGbrz5TOLrUN+DBr1pb0g=";
  };

  meta = {
    license = lib.licenses.gpl3;
  };
}
