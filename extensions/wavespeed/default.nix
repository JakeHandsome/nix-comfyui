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
    rev = "3db162bb7ad56b84a452a4778527da63793c0e87";
    hash = "sha256-myWJbhDtv9XhYa39y3csFqmPZaTaHmOXKanY5XIwJ6U=";
  };

  meta = {
    license = lib.licenses.gpl3;
  };
}
