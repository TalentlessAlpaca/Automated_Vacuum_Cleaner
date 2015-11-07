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
static const char *ng0 = "/home/rafa/Descargas/Digital/Integrador/rsa.v";
static int ng1[] = {0, 0, 0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {31, 0};
static int ng4[] = {0, 0};
static int ng5[] = {32, 0};



static void Initial_29_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 33, 0LL);

LAB1:    return;
}

static void Always_31_1(char *t0)
{
    char t20[16];
    char t22[8];
    char t23[8];
    char t24[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t21;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    char *t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;

LAB0:    t1 = (t0 + 1752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1932);
    *((int *)t2) = 1;
    t3 = (t0 + 1776);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(32, ng0);

LAB9:    xsi_set_current_line(33, ng0);
    t11 = (t0 + 784U);
    t12 = *((char **)t11);
    t11 = (t12 + 4);
    t13 = *((unsigned int *)t11);
    t14 = (~(t13));
    t15 = *((unsigned int *)t12);
    t16 = (t15 & t14);
    t17 = (t16 != 0);
    if (t17 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 33, 0LL);

LAB12:    goto LAB8;

LAB10:    xsi_set_current_line(33, ng0);

LAB13:    xsi_set_current_line(34, ng0);
    t18 = (t0 + 876U);
    t19 = *((char **)t18);
    t18 = ((char*)((ng2)));
    xsi_vlog_unsigned_rshift(t20, 33, t19, 33, t18, 32);
    t21 = (t0 + 1104);
    t25 = (t0 + 1104);
    t26 = (t25 + 44U);
    t27 = *((char **)t26);
    t28 = ((char*)((ng3)));
    t29 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t22, t23, t24, ((int*)(t27)), 2, t28, 32, 1, t29, 32, 1);
    t30 = (t22 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t23 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    t37 = (t24 + 4);
    t38 = *((unsigned int *)t37);
    t39 = (!(t38));
    t40 = (t36 && t39);
    if (t40 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    memset(t22, 0, 8);
    t2 = (t22 + 4);
    t4 = (t3 + 8);
    t5 = (t3 + 12);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t22) = t8;
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 0);
    t13 = (t10 & 1);
    *((unsigned int *)t2) = t13;
    t11 = (t0 + 1104);
    t12 = (t0 + 1104);
    t18 = (t12 + 44U);
    t19 = *((char **)t18);
    t21 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t23, t19, 2, t21, 32, 1);
    t25 = (t23 + 4);
    t14 = *((unsigned int *)t25);
    t32 = (!(t14));
    if (t32 == 1)
        goto LAB16;

LAB17:    goto LAB12;

LAB14:    t41 = *((unsigned int *)t24);
    t42 = (t41 + 0);
    t43 = *((unsigned int *)t22);
    t44 = *((unsigned int *)t23);
    t45 = (t43 - t44);
    t46 = (t45 + 1);
    xsi_vlogvar_wait_assign_value(t21, t20, t42, *((unsigned int *)t23), t46, 0LL);
    goto LAB15;

LAB16:    xsi_vlogvar_wait_assign_value(t11, t22, 0, *((unsigned int *)t23), 1, 0LL);
    goto LAB17;

}


extern void work_m_00000000001759890162_1804892572_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Always_31_1};
	xsi_register_didat("work_m_00000000001759890162_1804892572", "isim/integ_tst_isim_beh.exe.sim/work/m_00000000001759890162_1804892572.didat");
	xsi_register_executes(pe);
}
