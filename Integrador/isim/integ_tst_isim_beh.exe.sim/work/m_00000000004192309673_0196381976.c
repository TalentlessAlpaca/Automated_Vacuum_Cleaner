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
static const char *ng0 = "/home/rafa/Descargas/Digital/Integrador/booth_mult.v";
static int ng1[] = {0, 0};
static int ng2[] = {0, 0, 0, 0};
static unsigned int ng3[] = {0U, 0U};
static unsigned int ng4[] = {1U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {15U, 0U};
static int ng8[] = {1, 0};
static int ng9[] = {32, 0};
static int ng10[] = {17, 0};
static int ng11[] = {16, 0};
static int ng12[] = {2, 0};
static int ng13[] = {3, 0};



static void Initial_46_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(46, ng0);

LAB2:    xsi_set_current_line(47, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(48, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);
    xsi_set_current_line(49, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);
    xsi_set_current_line(50, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 33, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 16, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2424);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 4, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 6, 0LL);

LAB1:    return;
}

static void Always_64_1(char *t0)
{
    char t12[8];
    char t32[8];
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
    char *t13;
    int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t33;

LAB0:    t1 = (t0 + 3164U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3480);
    *((int *)t2) = 1;
    t3 = (t0 + 3188);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1092U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(67, ng0);

LAB10:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2516);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng3)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 6, t5, 5);
    if (t14 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng4)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 5);
    if (t14 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng5)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 5);
    if (t14 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng6)));
    t14 = xsi_vlog_unsigned_case_compare(t4, 6, t2, 5);
    if (t14 == 1)
        goto LAB18;

LAB19:
LAB21:
LAB20:    xsi_set_current_line(87, ng0);

LAB38:    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng3)));
    memcpy(t12, t2, 8);
    t3 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t3, t12, 0, 0, 6, 0LL);

LAB22:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);

LAB9:    xsi_set_current_line(66, ng0);
    t11 = ((char*)((ng3)));
    memcpy(t12, t11, 8);
    t13 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 6, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(69, ng0);

LAB23:    xsi_set_current_line(70, ng0);
    t11 = ((char*)((ng3)));
    t13 = (t0 + 2424);
    xsi_vlogvar_wait_assign_value(t13, t11, 0, 0, 4, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1184U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB24;

LAB25:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng3)));
    memcpy(t12, t2, 8);
    t3 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t3, t12, 0, 0, 6, 0LL);

LAB26:    goto LAB22;

LAB14:    xsi_set_current_line(74, ng0);

LAB27:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng5)));
    memcpy(t12, t3, 8);
    t5 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t5, t12, 0, 0, 6, 0LL);
    goto LAB22;

LAB16:    xsi_set_current_line(77, ng0);

LAB28:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng6)));
    memcpy(t12, t3, 8);
    t5 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t5, t12, 0, 0, 6, 0LL);
    goto LAB22;

LAB18:    xsi_set_current_line(80, ng0);

LAB29:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 2424);
    t5 = (t3 + 36U);
    t11 = *((char **)t5);
    t13 = ((char*)((ng7)));
    memset(t12, 0, 8);
    t15 = (t11 + 4);
    t16 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = *((unsigned int *)t13);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t15);
    t10 = *((unsigned int *)t16);
    t17 = (t9 ^ t10);
    t18 = (t8 | t17);
    t19 = *((unsigned int *)t15);
    t20 = *((unsigned int *)t16);
    t21 = (t19 | t20);
    t22 = (~(t21));
    t23 = (t18 & t22);
    if (t23 != 0)
        goto LAB33;

LAB30:    if (t21 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t12) = 1;

LAB33:    t25 = (t12 + 4);
    t26 = *((unsigned int *)t25);
    t27 = (~(t26));
    t28 = *((unsigned int *)t12);
    t29 = (t28 & t27);
    t30 = (t29 != 0);
    if (t30 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(82, ng0);

LAB37:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2424);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng8)));
    memset(t12, 0, 8);
    xsi_vlog_unsigned_add(t12, 32, t5, 4, t11, 32);
    t13 = (t0 + 2424);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 4, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng4)));
    memcpy(t12, t2, 8);
    t3 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t3, t12, 0, 0, 6, 0LL);

LAB36:    goto LAB22;

LAB24:    xsi_set_current_line(71, ng0);
    t5 = ((char*)((ng4)));
    memcpy(t12, t5, 8);
    t11 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t11, t12, 0, 0, 6, 0LL);
    goto LAB26;

LAB32:    t24 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(81, ng0);
    t31 = ((char*)((ng3)));
    memcpy(t32, t31, 8);
    t33 = (t0 + 2516);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 6, 0LL);
    goto LAB36;

}

static void Always_95_2(char *t0)
{
    char t11[8];
    char t24[8];
    char t25[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t26;
    char *t27;
    int t28;
    int t29;
    char *t30;
    int t31;
    int t32;
    int t33;
    int t34;
    int t35;

LAB0:    t1 = (t0 + 3300U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 3488);
    *((int *)t2) = 1;
    t3 = (t0 + 3324);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(95, ng0);

LAB5:    xsi_set_current_line(96, ng0);
    t4 = (t0 + 2516);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t7, 5);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 5);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 5);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 6, t2, 5);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(154, ng0);

LAB42:    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 33, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(97, ng0);

LAB18:    xsi_set_current_line(98, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1644U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t11 + 4);
    t4 = (t3 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (t12 >> 1);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t4);
    t15 = (t14 >> 1);
    *((unsigned int *)t2) = t15;
    t5 = (t3 + 8);
    t7 = (t3 + 12);
    t16 = *((unsigned int *)t5);
    t17 = (t16 << 31);
    t18 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t18 | t17);
    t19 = *((unsigned int *)t7);
    t20 = (t19 << 31);
    t21 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t21 | t20);
    t22 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t22 & 4294967295U);
    t23 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t23 & 4294967295U);
    t9 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t9, t11, 0, 0, 32, 0LL);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2148);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2240);
    t4 = (t0 + 2240);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t9 = ((char*)((ng9)));
    t10 = ((char*)((ng10)));
    xsi_vlog_convert_partindices(t11, t24, t25, ((int*)(t7)), 2, t9, 32, 1, t10, 32, 1);
    t26 = (t11 + 4);
    t12 = *((unsigned int *)t26);
    t8 = (!(t12));
    t27 = (t24 + 4);
    t13 = *((unsigned int *)t27);
    t28 = (!(t13));
    t29 = (t8 && t28);
    t30 = (t25 + 4);
    t14 = *((unsigned int *)t30);
    t31 = (!(t14));
    t32 = (t29 && t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 1276U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240);
    t4 = (t0 + 2240);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t9 = ((char*)((ng11)));
    t10 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t11, t24, t25, ((int*)(t7)), 2, t9, 32, 1, t10, 32, 1);
    t26 = (t11 + 4);
    t12 = *((unsigned int *)t26);
    t8 = (!(t12));
    t27 = (t24 + 4);
    t13 = *((unsigned int *)t27);
    t28 = (!(t13));
    t29 = (t8 && t28);
    t30 = (t25 + 4);
    t14 = *((unsigned int *)t30);
    t31 = (!(t14));
    t32 = (t29 && t31);
    if (t32 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2240);
    t4 = (t0 + 2240);
    t5 = (t4 + 44U);
    t7 = *((char **)t5);
    t9 = ((char*)((ng1)));
    xsi_vlog_generic_convert_bit_index(t11, t7, 2, t9, 32, 1);
    t10 = (t11 + 4);
    t12 = *((unsigned int *)t10);
    t8 = (!(t12));
    if (t8 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB17;

LAB9:    xsi_set_current_line(107, ng0);

LAB25:    xsi_set_current_line(108, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2148);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t5 = (t11 + 4);
    t7 = (t4 + 4);
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t11) = t13;
    t14 = *((unsigned int *)t7);
    t15 = (t14 >> 0);
    *((unsigned int *)t5) = t15;
    t16 = *((unsigned int *)t11);
    *((unsigned int *)t11) = (t16 & 3U);
    t17 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t17 & 3U);

LAB26:    t9 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 32, t9, 32);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 32, t2, 32);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 32, t2, 32);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t11, 32, t2, 32);
    if (t8 == 1)
        goto LAB33;

LAB34:
LAB35:    goto LAB17;

LAB11:    xsi_set_current_line(140, ng0);

LAB40:    xsi_set_current_line(141, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 1644U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 33, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB17;

LAB13:    xsi_set_current_line(147, ng0);

LAB41:    xsi_set_current_line(148, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(149, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB17;

LAB19:    t15 = *((unsigned int *)t25);
    t33 = (t15 + 0);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t24);
    t34 = (t16 - t17);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, t33, *((unsigned int *)t24), t35, 0LL);
    goto LAB20;

LAB21:    t15 = *((unsigned int *)t25);
    t33 = (t15 + 0);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t24);
    t34 = (t16 - t17);
    t35 = (t34 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t33, *((unsigned int *)t24), t35, 0LL);
    goto LAB22;

LAB23:    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t11), 1, 0LL);
    goto LAB24;

LAB27:    xsi_set_current_line(110, ng0);

LAB36:    xsi_set_current_line(111, ng0);
    t10 = ((char*)((ng8)));
    t26 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t26, t10, 0, 0, 1, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB35;

LAB29:    xsi_set_current_line(117, ng0);

LAB37:    xsi_set_current_line(118, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 1964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    goto LAB35;

LAB31:    xsi_set_current_line(124, ng0);

LAB38:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 1964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1460U);
    t3 = *((char **)t2);
    t2 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    goto LAB35;

LAB33:    xsi_set_current_line(131, ng0);

LAB39:    xsi_set_current_line(132, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 1872);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 1964);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 1964);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 32, 0LL);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2056);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 2240);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2240);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 33, 0LL);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2332);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    goto LAB35;

}


extern void work_m_00000000004192309673_0196381976_init()
{
	static char *pe[] = {(void *)Initial_46_0,(void *)Always_64_1,(void *)Always_95_2};
	xsi_register_didat("work_m_00000000004192309673_0196381976", "isim/integ_tst_isim_beh.exe.sim/work/m_00000000004192309673_0196381976.didat");
	xsi_register_executes(pe);
}
