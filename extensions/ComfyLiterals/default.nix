{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "ComfyLiterals";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "M1kep";
    repo = "ComfyLiterals";
    fetchSubmodules = false;
    rev = "bdddb08ca82d90d75d97b1d437a652e0284a32ac";
    hash = "sha256-4sP87Ntm5mrNcvKhbUjLVIsVtch/oMLAoGR1OCSfAaM=";
  };
  propagatedBuildInputs = [
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
