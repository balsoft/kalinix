# Taken from https://github.com/NixOS/nixpkgs/issues/81418

pkgs: with pkgs; [
  ### General utils ###
  bat
  ranger

  ### Exploitation ###
  metasploit
  sqlmap

  ### Forensics ###
  capstone
  ddrescue
  ext4magic
  extundelete
  ghidra-bin
  git
  p0f
  pdf-parser
  python39Packages.binwalk
  python39Packages.distorm3
  sleuthkit
  volatility

  ### Hardware ###
  apktool

  ### Recon ###
  cloudbrute
  dnsenum
  dnsrecon
  enum4linux
  hping
  masscan
  netcat
  nmap
  ntopng
  sn0int
  sslsplit
  theharvester
  wireshark
  # wireshark-cli

  ### Backdoors ###
  httptunnel
  pwnat

  ### Passwords ###
  brutespray
  chntpw
  crowbar
  crunch
  hashcat
  hcxtools
  john
  # python36Packages.patator
  phrasendrescher
  thc-hydra

  ### Reverse ###
  binutils
  elfutils
  jd
  jd-gui
  patchelf
  radare2
  radare2-cutter
  retdec
  snowman
  valgrind
  yara

  ### Sniffing ###
  bettercap
  dsniff
  mitmproxy
  rshijack
  sipp
  sniffglue

  ### Vuln analisys ###
  grype
  lynis
  sqlmap
  vulnix

  ### Web ###
  # burpsuite
  dirb
  gobuster
  urlhunter
  wfuzz
  # wpscan
  zap
]
