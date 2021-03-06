#ifndef _KDRIVE_CONFIG_H_
#define _KDRIVE_CONFIG_H_

#include <dix-config.h>
#include <xkb-config.h>

/* Building kdrive server. */
#define KDRIVESERVER 1

/* Include framebuffer support in X servers */
#undef KDRIVEFBDEV

/* Support tslib touchscreen abstraction library */
#undef TSLIB

/* Support KDrive evdev driver */
#undef KDRIVE_EVDEV

/* Verbose debugging output hilarity */
#undef DEBUG

/* Have the backtrace() function. */
#undef HAVE_BACKTRACE

/* Have execinfo.h for backtrace(). */
#undef HAVE_EXECINFO_H

#endif /* _KDRIVE_CONFIG_H_ */
