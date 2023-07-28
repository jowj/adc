# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "hoyden"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Set your time zone.
  time.timeZone = "US/Central";

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.eno1.useDHCP = true;
  networking.interfaces.wlp0s20f3.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  # };
  fonts.fonts = with pkgs; [
    # Serif fonts
    roboto
    ttf_bitstream_vera
    liberation_ttf
    dejavu_fonts

    # Emoji
    openmoji-color
  ];

  fonts.fontconfig = { defaultFonts = { emoji = [ "OpenMoji Color" ]; }; };

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    autoRepeatDelay = 150;
    # autoRepeatInterval = something; # this is configurable so i'm leaving it here, but not sure that i need it.
    displayManager.sddm.enable = true;
    desktopManager.plasma5.enable = true;
    windowManager.awesome = {
      enable = true;
      luaModules = with pkgs.luaPackages; [
        luarocks # is the package manager for Lua modules
        luadbi-mysql # Database abstraction layer
      ];
    };
  };
  services.flatpak.enable = true;

  # try and handle some of the dumb long term storage optimiztaion issues with nixos:
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # enable docker, virtualbox, virtualization shit
  virtualisation.docker.enable = true;
  virtualisation.virtualbox.host.enable = false;
  virtualisation.virtualbox.host.enableExtensionPack = false;
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.josiah = {
    isNormalUser = true;
    extraGroups =
      [ "wheel" "audio" "sound" "video" "docker" "vboxusers" "adbusers" ];
    # My SSH keys.
    openssh.authorizedKeys.keys = [
      # Replace this with your SSH key!
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPAZhFDzl1lbhWJ7MiTV3+Z1EY8M5b4cH/+ju4uo1d91 admin"
    ];
  };

  # Use my SSH keys for logging in as root.
  users.users.root.openssh.authorizedKeys.keys =
    config.users.users.josiah.openssh.authorizedKeys.keys;  

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  nixpkgs.config = {
    packageOverrides = pkgs: {
      unstable = import attrs.unstableTarball { config = config.nixpkgs.config; };
    };
    permittedInsecurePackages = [ 
      "python2.7-certifi-2021.10.8"
      "python2.7-pyjwt-1.7.1"]; # required for poetry
  };

  environment.systemPackages = with pkgs; [
    # build shit
    morph # ultimately this seems not useful to me; weird errors.
    nixops
    unstable.deploy-rs
    autoconf
    yarn
    automake
    direnv
    gnumake
    wget
    gcc-arm-embedded
    xorg.libX11
    vim
    konsole
    patchelf
    docker
    # jlj dev
    # python-language-server
    # python38Packages.python-language-server
    # jlj utils
    darktable
    digikam
    offlineimap
    unzip
    ansible
    python38
    python38Packages.pip
    python38Packages.setuptools
    pipenv
    bitwarden
    chromium
    magic-wormhole
    firefox
    unstable.nyxt
    emacs
    emacsPackages.flyspell-correct
    nixfmt
    mu
    ispell
    obsidian
    zeal
    git
    keychain
    os-prober
    lsof
    wireguard-tools
    tailscale
    fortune
    youtube-dl
    gcc8
    dfu-util
    scrot
    qbittorrent
    obs-studio
    texlive.combined.scheme-full
    # jlj sound
    pavucontrol
    # jlj comms
    unstable.element-desktop
    slack
    discord
    konversation
    unstable.signal-desktop
    newsflash # same maker as feedreader, newer, less features, actively maintained.
    zoom-us
    spectral
    jitsi-meet-electron
    # jlj de
    syncthingtray
    unstable.synology-drive-client
    barrier
    pinentry
    acpi
    awesome
    networkmanagerapplet
    arc-icon-theme
    rofi
    i3lock
    vlc
    unstable.thunderbird
    birdtray # tray icon for thunderbird
    peruse
    libsForQt5.ark
    # tauon # this is a good music player but it doesn't come bundled proper in nixos; install via flatpak you bitch
    # rsi stuff
    rsibreak
    workrave
    espanso # text expander
    xclip # c&p from cli / required for espanso
    libnotify # required for espanso
    arc-icon-theme
    # kde specific stuff
    kde-gtk-config
    libsForQt5.kde-cli-tools
    arc-kde-theme
    # jlj games
    lutris
    steam
    vulkan-tools
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  programs.gnupg.agent = {
    enable = true;
    enableSSHSupport = true;
    pinentryFlavor = "qt";
  };

  programs.adb.enable = true;

  # List services that you want to enable:

  services = {
    syncthing = {
      enable = true;
      user = "josiah";
      dataDir = "/home/josiah/dhd"; # Default folder for new synced folders
      configDir =
        "/home/josiah/.config/syncthing"; # Folder for Syncthing's settings and keys
    };
    tailscale.enable = true;
    openssh.enable = true;
  };

  # Configure ssh auth for sudo/pam
  security.sudo.enable = true;
  security.pam.enableSSHAgentAuth = true;
  security.pam.services.sudo.sshAgentAuth = true;
  security.sudo.wheelNeedsPassword = false;  

  # this works properly
  fileSystems."/home/josiah/network-share/syn-nas/usenet" = {
    device = "192.168.1.221:/volume1/usenet";
    fsType = "nfs";
  };

  fileSystems."/home/josiah/network-share/sainthood/homes" = {
    device = "sainthood.home.jowj.net:/volume3/homes/";
    options = [ "nfsvers=3" ];
    fsType = "nfs";
  };

  networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.11"; # Did you read the comment?

}
