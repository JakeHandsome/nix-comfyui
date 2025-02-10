{ buildExtension
, fetchFromGitHub
, lib
, python3
,
}:

buildExtension {
  name = "cg-use-everywhere";
  version = "0.0.0";

  src = fetchFromGitHub {
    owner = "chrisgoringe";
    repo = "cg-use-everywhere";
    fetchSubmodules = false;
    rev = "ce510b97d10e69d5fd0042e115ecd946890d2079";
    hash = "sha256-Pvc+p0qeiQc9GJKSJHTSvZld7AdUhoQa9S1YE6CkDl4=";
  };

  meta = {
    license = lib.licenses.mit;
  };
}
