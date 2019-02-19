/* include/xorg-config.h.  Generated from xorg-config.h.in by configure.  */
/* xorg-config.h.in: not at all generated.                      -*- c -*-
 * 
 * This file differs from xorg-server.h.in in that -server is installed
 * with the rest of the SDK for external drivers/modules to use, whereas
 * -config is for internal use only (i.e. building the DDX).
 *
 */

#ifndef _XORG_CONFIG_H_
#define _XORG_CONFIG_H_

#include <dix-config.h>
#include <xkb-config.h>

/* Building Xorg server. */
#define XORGSERVER 1

/* Current X.Org version. */
#define XORG_VERSION_CURRENT (((1) * 10000000) + ((20) * 100000) + ((1) * 1000) + 0)

/* Name of X server. */
#define __XSERVERNAME__ "Xorg"

/* URL to go to for support. */
#define __VENDORDWEBSUPPORT__ "http://wiki.x.org"

/* Built-in output drivers. */
/* #undef DRIVERS */

/* Built-in input drivers. */
/* #undef IDRIVERS */

/* Path to configuration file. */
#define XF86CONFIGFILE "xorg.conf"

/* Path to configuration file. */
#define XCONFIGFILE "xorg.conf"

/* Name of configuration directory. */
#define XCONFIGDIR "xorg.conf.d"

/* Path to loadable modules. */
#define DEFAULT_MODULE_PATH X4DROID_DATADIR "/lib/xorg/modules"

/* Path to installed libraries. */
#define DEFAULT_LIBRARY_PATH X4DROID_DATADIR "/lib"

/* Default log location */
#define DEFAULT_LOGDIR X4DROID_DATADIR "/var/log"

/* Default logfile prefix */
#define DEFAULT_LOGPREFIX "Xorg."

/* Default XDG_DATA dir under HOME */
#define DEFAULT_XDG_DATA_HOME ".local/share"

/* Default log dir under XDG_DATA_HOME */
#define DEFAULT_XDG_DATA_HOME_LOGDIR "xorg"

/* Building DRI-capable DDX. */
/* #undef XF86DRI */

/* Build DRI2 extension */
/* #undef DRI2 */

/* Define to 1 if you have the <stropts.h> header file. */
/* #undef HAVE_STROPTS_H */

/* Define to 1 if you have the <sys/kd.h> header file. */
/* #undef HAVE_SYS_KD_H */

/* Define to 1 if you have the <sys/vt.h> header file. */
/* #undef HAVE_SYS_VT_H */

/* Define to 1 if you have the `walkcontext' function (used on Solaris for
   xorg_backtrace in hw/xfree86/common/xf86Events.c */
/* #undef HAVE_WALKCONTEXT */

/* Define to 1 if unsigned long is 64 bits. */
/* #undef _XSERVER64 */

/* Building vgahw module */
/* #undef WITH_VGAHW */

/* NetBSD PIO alpha IO */
/* #undef USE_ALPHA_PIO */

/* BSD AMD64 iopl */
/* #undef USE_AMD64_IOPL */

/* BSD /dev/io */
/* #undef USE_DEV_IO */

/* BSD i386 iopl */
/* #undef USE_I386_IOPL */

/* System is BSD-like */
/* #undef CSRG_BASED */

/* System has PC console */
/* #undef PCCONS_SUPPORT */

/* System has PCVT console */
/* #undef PCVT_SUPPORT */

/* System has syscons console */
/* #undef SYSCONS_SUPPORT */

/* System has wscons console */
/* #undef WSCONS_SUPPORT */

/* System has /dev/xf86 aperture driver */
/* #undef HAS_APERTURE_DRV */

/* Has backtrace support */
/* #undef HAVE_BACKTRACE */

/* Name of the period field in struct kbd_repeat */
/* #undef LNX_KBD_PERIOD_NAME */

/* Have execinfo.h */
/* #undef HAVE_EXECINFO_H */

/* Define to 1 if you have the <sys/mkdev.h> header file. */
/* #undef HAVE_SYS_MKDEV_H */

/* Define to 1 if you have the <sys/sysmacros.h> header file. */
#define HAVE_SYS_SYSMACROS_H 1

/* Path to text files containing PCI IDs */
#define PCI_TXT_IDS_PATH ""

/* Build with libdrm support */
/* #undef WITH_LIBDRM */

/* Use libpciaccess */
#define XSERVER_LIBPCIACCESS 1

/* Have setugid */
/* #undef HAVE_ISSETUGID */

/* Have getresuid */
#define HAVE_GETRESUID 1

/* Have X server platform bus support */
/* #undef XSERVER_PLATFORM_BUS */

/* Define to 1 if you have the `seteuid' function. */
#define HAVE_SETEUID 1

/* Support APM/ACPI power management in the server */
/* #undef XF86PM */

/* Fallback input driver if the assigned driver fails */
#define FALLBACK_INPUT_DRIVER "libinput"

#endif /* _XORG_CONFIG_H_ */
