[ -f configs/config_rk3328 ] && sed -i '/=m/d;/CONFIG_IB/d;/CONFIG_SDK/d;/CONFIG_BUILDBOT/d;/CONFIG_ALL_KMODS/d;/CONFIG_ALL_NONSHARED/d;/docker/d;/DOCKER/d;/CONFIG_DISPLAY_SUPPORT/d;/CONFIG_AUDIO_SUPPORT/d;/CONFIG_OPENSSL_PREFER_CHACHA_OVER_GCM/d;/CONFIG_VERSION/d;/SAMBA/d;/samba/d;/modemmanager/d;' configs/config_rk3328
[ -f configs/config_rk3328 ] && sed -i '/CONFIG_KERNEL_CGROUP_PERF/i\CONFIG_KERNEL_CGROUPS=y' configs/config_rk3328

#find device/ -name distfeeds.conf -delete

[ -f configs/config_rk3328 ] && echo -e '\nCONFIG_KERNEL_BUILD_USER="Quintus Chu"\nCONFIG_GRUB_TITLE="OpenWrt on Nanopi devices compiled by Quintus"' >> configs/config_rk3328
