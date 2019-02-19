
#ifdef HAVE_XORG_CONFIG_H
#include <xorg-config.h>
#endif

/* noop platform device support */
#include "xf86_OSproc.h"
#include "xf86OSpriv.h"

#include "xf86.h"

/***************************************************************************/
/* Video Memory Mapping section                                            */
/***************************************************************************/

void
xf86OSInitVidMem(VidMemInfoPtr pVidMem)
{
    pVidMem->initialised = TRUE;
}
	
#ifdef XSERVER_PLATFORM_BUS
#include "xf86platformBus.h"
Bool
xf86PlatformDeviceCheckBusID(struct xf86_platform_device *device, const char *busid)
{
    return FALSE;
}

void xf86PlatformDeviceProbe(struct OdevAttributes *attribs)
{

}
#endif
