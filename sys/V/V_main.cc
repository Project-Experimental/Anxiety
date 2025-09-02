/*
 *                  The V, Hypervisor
 * 
 *   Description : It's just V. The Hypervisor
 *              
 *              Written By Nakada Tokumei
 * 
 */

#include "V.h"

static void VInit(void*)
{
    
}

SYSINIT(v_init, SI_SUB_SMP, SI_ORDER_ANY, VInit, nullptr);