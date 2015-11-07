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
    work_m_00000000001137679364_1697392497_init();
    work_m_00000000001759890162_1804892572_init();
    work_m_00000000002531535171_0833183191_init();
    work_m_00000000004192309673_0196381976_init();
    work_m_00000000002092509349_0173515106_init();
    work_m_00000000003210841194_1642246857_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003210841194_1642246857");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
