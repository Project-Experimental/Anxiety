/*
 *                  The V, Hypervisor
 * 
 *   Description : It's just W. The Hypervisor
 *              
 *              Written By Nakada Tokumei
 * 
 */

#include "W.h"

static void WInit(void*)
{
    
}

SYSINIT(w_init, SI_SUB_SMP, SI_ORDER_ANY, WInit, nullptr);