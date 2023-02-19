# common/default.nix

# inputs to this NixOS module. We don't use any here
# so we can ignore them all.
{ ... }:

{
  imports = [
    # User account definitions
    ./users
  ];

  # clean /tmp on boot.
  boot.cleanTmpDir = true;
  # Allow any admin to build packages, not just root.
  ## if you don't set this then your sshUser MUST BE ROOT, or you'll get untrusted sig errors.
  nix.settings.trusted-users = [ "@wheel" ]; 

  # Automatically optimize the Nix store to save space
  # by hard-linking identical files together. These savings
  # add up.
  #nix.settings.autoOptimiseStore = true;

  # Limit the systemd journal to 100 MB of disk or the
  # last 7 days of logs, whichever happens first.
  services.journald.extraConfig = ''
    SystemMaxUse=100M
    MaxFileSec=7day
  '';

  # Use systemd-resolved for DNS lookups, but disable
  # its dnssec support because it is kinda broken in
  # surprising ways.

  # Who is surprised that dnssec is broken? no one.
  # services.resolved = {
  #   enable = true;
  #   dnssec = "false";
  # };
}
