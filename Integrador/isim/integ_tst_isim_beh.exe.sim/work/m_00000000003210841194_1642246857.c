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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/rafa/Descargas/Digital/Integrador/integ_tst.v";
static unsigned int ng1[] = {170U, 0U};
static unsigned int ng2[] = {122U, 0U};
static unsigned int ng3[] = {58U, 0U};
static unsigned int ng4[] = {10U, 0U};
static int ng5[] = {1, 0};
static int ng6[] = {0, 0};



static void Initial_63_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2444U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);

LAB4:    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1380);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1656);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1748);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1932);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2344);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1932);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1748);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

static void Always_80_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 2580U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2480);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(80, ng0);
    t4 = (t0 + 1840);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t0 + 1840);
    xsi_vlogvar_wait_assign_value(t14, t3, 0, 0, 1, 0LL);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

}


extern void work_m_00000000003210841194_1642246857_init()
{
	static char *pe[] = {(void *)Initial_63_0,(void *)Always_80_1};
	xsi_register_didat("work_m_00000000003210841194_1642246857", "isim/integ_tst_isim_beh.exe.sim/work/m_00000000003210841194_1642246857.didat");
	xsi_register_executes(pe);
}
