/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
<<<<<<< HEAD
    work_m_00000000002152128279_2448899123_init();
=======
    work_m_00000000002677697435_2448899123_init();
>>>>>>> 7cfc8db0d892962492674a191cb2e8967325a269
    work_m_00000000004287406139_0598316779_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000004287406139_0598316779");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}