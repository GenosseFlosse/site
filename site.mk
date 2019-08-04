##	gluon site.mk makefile example

##	GLUON_FEATURES
#		Specify Gluon features/packages to enable;
#		Gluon will automatically enable a set of packages
#		depending on the combination of features listed

GLUON_FEATURES := \
	mesh-batman-adv-14 \
	respondd \
	autoupdater \
	config-mode-core \
	config-mode-hostname \
	config-mode-autoupdater \
	config-mode-mesh-vpn \
	config-mode-geo-location \
	config-mode-contact-info \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	web-admin \
	web-autoupdater \
	web-mesh-vpn-fastd \
	web-network \
	web-wifi-config \
	web-private-wifi \
	mesh-vpn-fastd \
	radvd \
	radv-filterd \
	setup-mode \
	status-page

##	GLUON_SITE_PACKAGES
#		Specify additional Gluon/LEDE packages to include here;
#		A minus sign may be prepended to remove a packages from the
#		selection that would be enabled by default or due to the
#		chosen feature flags

GLUON_SITE_PACKAGES := \
	iwinfo \
	haveged



# add offline ssid only if the target has wifi device
ifeq ($(GLUON_TARGET),ar71xx-generic)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer 
endif

ifeq ($(GLUON_TARGET),ar71xx-mikrotik)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ar71xx-nand)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ar71xx-tiny)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ipq40xx)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ipq806x)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),mpc85xx-generic)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),mvebu)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ramips-mt7620)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ramips-mt7621)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ramips-mt76x8)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ramips-mt7628)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),ramips-rt305x)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

ifeq ($(GLUON_TARGET),sunxi-cortexa7)
GLUON_SITE_PACKAGES += \
	gluon-ssid-changer
endif

# add addition network drivers and usb stuff only to targes where disk space does not matter.
ifeq ($(GLUON_TARGET),x86-generic)
GLUON_SITE_PACKAGES += \
        kmod-usb-core \
        kmod-usb-ohci-pci \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether \
        kmod-sky2 \
        kmod-r8169 \
        kmod-forcedeth \
        kmod-8139too \
	kmod-atl2 \
	kmod-igb
endif

ifeq ($(GLUON_TARGET),x86-64)
GLUON_SITE_PACKAGES += \
        kmod-usb-core \
        kmod-usb-ohci-pci \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether \
        kmod-sky2 \
        kmod-r8169 \
        kmod-forcedeth \
        kmod-8139too \
	kmod-atl2 \
	kmod-igb
endif

ifeq ($(GLUON_TARGET),x86-geode)
GLUON_SITE_PACKAGES += \
        kmod-usb-core \
        kmod-usb-ohci-pci \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether \
        kmod-sky2 \
        kmod-r8169 \
        kmod-forcedeth \
        kmod-8139too \
        kmod-atl2 \
        kmod-igb
endif

# Add offline ssid, network drivers and usb stuff to raspberry and banana pi images

ifeq ($(GLUON_TARGET),brcm2708-bcm2708)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer \
        kmod-usb-core \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether
endif

ifeq ($(GLUON_TARGET),brcm2708-bcm2709)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer \
        kmod-usb-core \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether
endif

ifeq ($(GLUON_TARGET),brcm2708-bcm2710)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer \
        kmod-usb-core \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether
endif

ifeq ($(GLUON_TARGET),sunxi)
GLUON_SITE_PACKAGES += \
        gluon-ssid-changer \
        kmod-usb-core \
        kmod-usb2 \
        kmod-usb-hid \
        kmod-usb-net \
        kmod-usb-net-asix \
        kmod-usb-net-dm9601-ether
endif


##	DEFAULT_GLUON_RELEASE
#		version string to use for images
#		gluon relies on
#			opkg compare-versions "$1" '>>' "$2"
#		to decide if a version is newer or not.

DEFAULT_GLUON_RELEASE := 2018.2.2-1~exp$(shell date '+%Y%m%d')

DEFAULT_GLUON_CHECKOUT := v2018.2.2

##	GLUON_RELEASE
#		call make with custom GLUON_RELEASE flag, to use your own release version scheme.
#		e.g.:
#			$ make images GLUON_RELEASE=23.42+5
#		would generate images named like this:
#			gluon-ff%site_code%-23.42+5-%router_model%.bin

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)
GLUON_CHECKOUT ?= $(DEFAULT_GLUON_CHECKOUT)

# Default priority for updates.
GLUON_PRIORITY ?= 0

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

# Select ath10k Firmware for adhoc

GLUON_WLAN_MESH = ibss
