{ lib, stdenv, fetchFromGitHub, cmake, openssl }:

stdenv.mkDerivation rec {
  pname = "mysocketw";
  version = "3.10.26";

  src = fetchFromGitHub {
    owner = "RigsOfRods";
    repo = "socketw";
    rev = "refs/tags/${version}";
    hash = "sha256-fqPo7X9gYkIcMFhJLR+OrTpJM27lCMynbXsPcFc/Huw=";
  };

  nativeBuildInputs = [ cmake ];
  buildInputs = [ openssl ];

  meta = with lib; {
    description = "Cross platform (Linux/FreeBSD/Unix/Win32) streaming socket C++";
    license = licenses.lgpl21Plus;
    maintainers = with maintainers; [ luc65r ];
    platforms = platforms.all;
  };
}
