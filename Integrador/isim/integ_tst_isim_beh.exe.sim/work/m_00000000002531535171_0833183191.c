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
static const char *ng0 = "/home/rafa/Descargas/Digital/Integrador/adder.v";
static int ng1[] = {32, 0};
static int ng2[] = {17, 0};
static int ng3[] = {16, 0};
static int ng4[] = {0, 0};



static void Always_27_0(char *t0)
{
    char t4[8];
    char t24[8];
    char t25[8];
    char t26[8];
    char t27[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    int t35;
    char *t36;
    unsigned int t37;
    int t38;
    int t39;
    char *t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    int t48;
    int t49;

LAB0:    t1 = (t0 + 1432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1612);
    *((int *)t2) = 1;
    t3 = (t0 + 1456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 600U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 17);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 17);
    *((unsigned int *)t5) = t11;
    t12 = (t6 + 8);
    t13 = (t6 + 12);
    t14 = *((unsigned int *)t12);
    t15 = (t14 << 15);
    t16 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t16 | t15);
    t17 = *((unsigned int *)t13);
    t18 = (t17 << 15);
    t19 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t19 | t18);
    t20 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t20 & 65535U);
    t21 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t21 & 65535U);
    t22 = (t0 + 692U);
    t23 = *((char **)t22);
    memset(t24, 0, 8);
    xsi_vlog_unsigned_add(t24, 16, t4, 16, t23, 16);
    t22 = (t0 + 920);
    t28 = (t0 + 920);
    t29 = (t28 + 44U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng1)));
    t32 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t25, t26, t27, ((int*)(t30)), 2, t31, 32, 1, t32, 32, 1);
    t33 = (t25 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t26 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (!(t37));
    t39 = (t35 && t38);
    t40 = (t27 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t5 = (t3 + 4);
    t8 = *((unsigned int *)t3);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t5);
    t11 = (t10 >> 0);
    *((unsigned int *)t2) = t11;
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 131071U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 131071U);
    t6 = (t0 + 920);
    t7 = (t0 + 920);
    t12 = (t7 + 44U);
    t13 = *((char **)t12);
    t22 = ((char*)((ng3)));
    t23 = ((char*)((ng4)));
    xsi_vlog_convert_partindices(t24, t25, t26, ((int*)(t13)), 2, t22, 32, 1, t23, 32, 1);
    t28 = (t24 + 4);
    t16 = *((unsigned int *)t28);
    t35 = (!(t16));
    t29 = (t25 + 4);
    t17 = *((unsigned int *)t29);
    t38 = (!(t17));
    t39 = (t35 && t38);
    t30 = (t26 + 4);
    t18 = *((unsigned int *)t30);
    t42 = (!(t18));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t44 = *((unsigned int *)t27);
    t45 = (t44 + 0);
    t46 = *((unsigned int *)t25);
    t47 = *((unsigned int *)t26);
    t48 = (t46 - t47);
    t49 = (t48 + 1);
    xsi_vlogvar_wait_assign_value(t22, t24, t45, *((unsigned int *)t26), t49, 0LL);
    goto LAB7;

LAB8:    t19 = *((unsigned int *)t26);
    t45 = (t19 + 0);
    t20 = *((unsigned int *)t24);
    t21 = *((unsigned int *)t25);
    t48 = (t20 - t21);
    t49 = (t48 + 1);
    xsi_vlogvar_wait_assign_value(t6, t4, t45, *((unsigned int *)t25), t49, 0LL);
    goto LAB9;

}


extern void work_m_00000000002531535171_0833183191_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000002531535171_0833183191", "isim/integ_tst_isim_beh.exe.sim/work/m_00000000002531535171_0833183191.didat");
	xsi_register_executes(pe);
}
