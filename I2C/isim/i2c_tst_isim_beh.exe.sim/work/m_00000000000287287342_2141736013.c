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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Camilo/Documents/Xilinx_Workspace/I2C/I2C.v";
static unsigned int ng1[] = {0U, 1U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1000U, 0U};
static int ng6[] = {15, 0};
static int ng7[] = {8, 0};
static int ng8[] = {9, 0};
static unsigned int ng9[] = {1U, 0U};



static void Cont_40_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 11520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 9960);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 12976);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 12832);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_45_1(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 11768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 8680);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t7) != 0)
        goto LAB6;

LAB7:    t14 = (t4 + 4);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t14);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t14);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t14) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 13040);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 1U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 0);
    t39 = (t0 + 12848);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 8360);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    goto LAB9;

LAB10:    t25 = ((char*)((ng1)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 1, t20, 1, t25, 1);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_60_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 12016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    t2 = (t0 + 13104);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 12864);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_113_3(char *t0)
{
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
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 12264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 12880);
    *((int *)t2) = 1;
    t3 = (t0 + 12296);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(113, ng0);

LAB5:    xsi_set_current_line(114, ng0);
    t4 = (t0 + 5560U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4144);
    t3 = *((char **)t2);
    t2 = (t0 + 9960);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(114, ng0);
    t11 = (t0 + 10120);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 9960);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 5, 0LL);
    goto LAB8;

}

static void Always_118_4(char *t0)
{
    char t16[8];
    char t17[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t19;
    char *t20;
    int t21;
    int t22;
    char *t23;
    int t24;
    int t25;
    int t26;
    unsigned int t27;
    int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;

LAB0:    t1 = (t0 + 12512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 12896);
    *((int *)t2) = 1;
    t3 = (t0 + 12544);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(118, ng0);

LAB5:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 9960);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 4144);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 4416);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 4552);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 4688);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 2104);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB19;

LAB20:    t2 = (t0 + 2240);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = (t0 + 2376);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB23;

LAB24:    t2 = (t0 + 2512);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB25;

LAB26:    t2 = (t0 + 2648);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB27;

LAB28:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB29;

LAB30:    t2 = (t0 + 3328);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB31;

LAB32:    t2 = (t0 + 3464);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB33;

LAB34:    t2 = (t0 + 3600);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB35;

LAB36:    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB37;

LAB38:    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB39;

LAB40:    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB41;

LAB42:    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB43;

LAB44:    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB45;

LAB46:    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB47;

LAB48:    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB49;

LAB50:    t2 = (t0 + 1560);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB51;

LAB52:
LAB53:    goto LAB2;

LAB7:    xsi_set_current_line(121, ng0);

LAB54:    xsi_set_current_line(123, ng0);
    t7 = ((char*)((ng1)));
    t10 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t10, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB53;

LAB9:    xsi_set_current_line(148, ng0);

LAB55:    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(159, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 5720U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(171, ng0);
    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB58:    goto LAB53;

LAB11:    xsi_set_current_line(173, ng0);

LAB59:    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(179, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(183, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(184, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(195, ng0);
    t2 = (t0 + 7480U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(196, ng0);
    t2 = (t0 + 4416);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB62:    goto LAB53;

LAB13:    xsi_set_current_line(198, ng0);

LAB63:    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(201, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(204, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(208, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(220, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB64;

LAB65:    xsi_set_current_line(221, ng0);
    t2 = (t0 + 4552);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB66:    goto LAB53;

LAB15:    xsi_set_current_line(223, ng0);

LAB67:    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(226, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(228, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(229, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(233, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(234, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(245, ng0);
    t2 = (t0 + 4688);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB53;

LAB17:    xsi_set_current_line(249, ng0);

LAB68:    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(252, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(253, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(256, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(257, ng0);
    t2 = (t0 + 6200U);
    t3 = *((char **)t2);
    t2 = (t0 + 9320);
    t4 = (t0 + 9320);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng6)));
    t10 = ((char*)((ng7)));
    xsi_vlog_convert_partindices(t16, t17, t18, ((int*)(t7)), 2, t8, 32, 1, t10, 32, 1);
    t19 = (t16 + 4);
    t11 = *((unsigned int *)t19);
    t9 = (!(t11));
    t20 = (t17 + 4);
    t12 = *((unsigned int *)t20);
    t21 = (!(t12));
    t22 = (t9 && t21);
    t23 = (t18 + 4);
    t13 = *((unsigned int *)t23);
    t24 = (!(t13));
    t25 = (t22 && t24);
    if (t25 == 1)
        goto LAB69;

LAB70:    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(259, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(262, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(263, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(264, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(267, ng0);
    t2 = (t0 + 2104);
    t3 = *((char **)t2);
    t2 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(268, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(280, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB71;

LAB72:    xsi_set_current_line(281, ng0);
    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB73:    goto LAB53;

LAB19:    xsi_set_current_line(283, ng0);

LAB74:    xsi_set_current_line(285, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(286, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(287, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(288, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(289, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(290, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(291, ng0);
    t2 = (t0 + 6360U);
    t3 = *((char **)t2);
    t2 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(293, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(294, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(296, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(297, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(298, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(301, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(302, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(303, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(314, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB75;

LAB76:
LAB77:    goto LAB53;

LAB21:    xsi_set_current_line(317, ng0);

LAB78:    goto LAB53;

LAB23:    xsi_set_current_line(321, ng0);

LAB79:    goto LAB53;

LAB25:    xsi_set_current_line(325, ng0);

LAB80:    goto LAB53;

LAB27:    xsi_set_current_line(328, ng0);

LAB81:    xsi_set_current_line(329, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(330, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB85;

LAB83:    if (*((unsigned int *)t2) == 0)
        goto LAB82;

LAB84:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB85:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB86;

LAB87:
LAB88:    goto LAB53;

LAB29:    xsi_set_current_line(333, ng0);

LAB89:    xsi_set_current_line(335, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(336, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(337, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(338, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(339, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(340, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(341, ng0);
    t2 = (t0 + 6040U);
    t3 = *((char **)t2);
    t2 = (t0 + 9320);
    t4 = (t0 + 9320);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng6)));
    t10 = ((char*)((ng8)));
    xsi_vlog_convert_partindices(t16, t17, t18, ((int*)(t7)), 2, t8, 32, 1, t10, 32, 1);
    t19 = (t16 + 4);
    t11 = *((unsigned int *)t19);
    t9 = (!(t11));
    t20 = (t17 + 4);
    t12 = *((unsigned int *)t20);
    t21 = (!(t12));
    t22 = (t9 && t21);
    t23 = (t18 + 4);
    t13 = *((unsigned int *)t23);
    t24 = (!(t13));
    t25 = (t22 && t24);
    if (t25 == 1)
        goto LAB90;

LAB91:    xsi_set_current_line(342, ng0);
    t2 = (t0 + 5880U);
    t3 = *((char **)t2);
    t2 = (t0 + 9320);
    t4 = (t0 + 9320);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t16, t7, 2, t8, 32, 1);
    t10 = (t16 + 4);
    t11 = *((unsigned int *)t10);
    t9 = (!(t11));
    if (t9 == 1)
        goto LAB92;

LAB93:    xsi_set_current_line(343, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(344, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(345, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(347, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(348, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(349, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(351, ng0);
    t2 = (t0 + 5880U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB94;

LAB95:    xsi_set_current_line(355, ng0);

LAB101:    xsi_set_current_line(356, ng0);
    t2 = (t0 + 6520U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB102;

LAB103:    xsi_set_current_line(357, ng0);
    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t2 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB104:    xsi_set_current_line(358, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB96:    xsi_set_current_line(360, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(371, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB105;

LAB106:    xsi_set_current_line(372, ng0);
    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB107:    goto LAB53;

LAB31:    xsi_set_current_line(374, ng0);

LAB108:    xsi_set_current_line(376, ng0);
    t2 = (t0 + 9320);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t18, 0, 8);
    t7 = (t18 + 4);
    t8 = (t5 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 15);
    t13 = (t12 & 1);
    *((unsigned int *)t18) = t13;
    t14 = *((unsigned int *)t8);
    t15 = (t14 >> 15);
    t27 = (t15 & 1);
    *((unsigned int *)t7) = t27;
    memset(t17, 0, 8);
    t10 = (t18 + 4);
    t30 = *((unsigned int *)t10);
    t31 = (~(t30));
    t32 = *((unsigned int *)t18);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB109;

LAB110:    if (*((unsigned int *)t10) != 0)
        goto LAB111;

LAB112:    t20 = (t17 + 4);
    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t20);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB113;

LAB114:    t38 = *((unsigned int *)t17);
    t39 = (~(t38));
    t40 = *((unsigned int *)t20);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB115;

LAB116:    if (*((unsigned int *)t20) > 0)
        goto LAB117;

LAB118:    if (*((unsigned int *)t17) > 0)
        goto LAB119;

LAB120:    memcpy(t16, t42, 8);

LAB121:    t43 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t43, t16, 0, 0, 1, 0LL);
    xsi_set_current_line(377, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(378, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(379, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(380, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(381, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(382, ng0);
    t2 = (t0 + 9320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(383, ng0);
    t2 = (t0 + 9320);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_lshift(t16, 16, t4, 16, t5, 32);
    t7 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 16, 0LL);
    xsi_set_current_line(384, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(385, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t4, 4, t5, 32);
    t7 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 4, 0LL);
    xsi_set_current_line(387, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(388, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(389, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(391, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(392, ng0);
    t2 = (t0 + 10440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(393, ng0);
    t2 = (t0 + 10600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(404, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB122;

LAB123:    xsi_set_current_line(405, ng0);
    t2 = (t0 + 3328);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB124:    goto LAB53;

LAB33:    xsi_set_current_line(407, ng0);

LAB125:    xsi_set_current_line(409, ng0);
    t2 = (t0 + 8360);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(410, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(411, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(412, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(413, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(414, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(415, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(416, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(417, ng0);
    t2 = (t0 + 9800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(418, ng0);
    t2 = (t0 + 9800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(420, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(421, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(422, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(424, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(425, ng0);
    t2 = (t0 + 10440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(426, ng0);
    t2 = (t0 + 10600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(437, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB129;

LAB127:    if (*((unsigned int *)t2) == 0)
        goto LAB126;

LAB128:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB129:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB130;

LAB131:    xsi_set_current_line(438, ng0);
    t2 = (t0 + 3464);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB132:    goto LAB53;

LAB35:    xsi_set_current_line(440, ng0);

LAB133:    xsi_set_current_line(442, ng0);
    t2 = (t0 + 8360);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(443, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(444, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(445, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(446, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(447, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(448, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(449, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(450, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(451, ng0);
    t2 = (t0 + 9800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(453, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(454, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(455, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(457, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(458, ng0);
    t2 = (t0 + 10440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(459, ng0);
    t2 = (t0 + 10600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(470, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t16, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB135;

LAB134:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB135;

LAB138:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB136;

LAB137:    t19 = (t16 + 4);
    t11 = *((unsigned int *)t19);
    t12 = (~(t11));
    t13 = *((unsigned int *)t16);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB139;

LAB140:    xsi_set_current_line(474, ng0);

LAB146:    xsi_set_current_line(475, ng0);
    t2 = (t0 + 10600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB147;

LAB148:    xsi_set_current_line(476, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);

LAB149:
LAB141:    goto LAB53;

LAB37:    xsi_set_current_line(480, ng0);

LAB150:    xsi_set_current_line(482, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(483, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(484, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(485, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(486, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(487, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(489, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(490, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(491, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(502, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB154;

LAB152:    if (*((unsigned int *)t2) == 0)
        goto LAB151;

LAB153:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB154:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB155;

LAB156:    xsi_set_current_line(503, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB157:    goto LAB53;

LAB39:    xsi_set_current_line(505, ng0);

LAB158:    xsi_set_current_line(507, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(508, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(509, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(510, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(511, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(512, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(514, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(515, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(526, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB159;

LAB160:    xsi_set_current_line(527, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB161:    goto LAB53;

LAB41:    xsi_set_current_line(529, ng0);

LAB162:    xsi_set_current_line(531, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(532, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(533, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(534, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(535, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(536, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(538, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(539, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(550, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB163;

LAB164:    xsi_set_current_line(551, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB165:    goto LAB53;

LAB43:    xsi_set_current_line(553, ng0);

LAB166:    xsi_set_current_line(555, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(556, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(557, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(558, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(559, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(560, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(562, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(563, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(574, ng0);
    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB53;

LAB45:    xsi_set_current_line(576, ng0);

LAB167:    xsi_set_current_line(578, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(579, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(580, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(581, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(582, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(583, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(584, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(585, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(586, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(587, ng0);
    t2 = (t0 + 9800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(589, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(590, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(591, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(593, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(594, ng0);
    t2 = (t0 + 10440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(595, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(606, ng0);
    t2 = (t0 + 7160U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB168;

LAB169:    xsi_set_current_line(607, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB170:    goto LAB53;

LAB47:    xsi_set_current_line(609, ng0);

LAB171:    xsi_set_current_line(611, ng0);
    t2 = (t0 + 8360);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8360);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(612, ng0);
    t2 = (t0 + 6680U);
    t3 = *((char **)t2);
    t2 = (t0 + 8520);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(613, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8680);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(614, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(615, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 9000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(616, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 9160);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(617, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9320);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(618, ng0);
    t2 = (t0 + 9480);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9480);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(619, ng0);
    t2 = (t0 + 9640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9640);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(620, ng0);
    t2 = (t0 + 9800);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9800);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(622, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7880);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(623, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8040);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(624, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8200);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(626, ng0);
    t2 = (t0 + 10280);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(627, ng0);
    t2 = (t0 + 2648);
    t3 = *((char **)t2);
    t2 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(628, ng0);
    t2 = (t0 + 10600);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10600);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(639, ng0);
    t2 = (t0 + 7320U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB172;

LAB173:    xsi_set_current_line(644, ng0);
    t2 = (t0 + 1152);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB174:    goto LAB53;

LAB49:    xsi_set_current_line(646, ng0);

LAB184:    goto LAB53;

LAB51:    xsi_set_current_line(649, ng0);

LAB185:    goto LAB53;

LAB56:    xsi_set_current_line(170, ng0);
    t4 = (t0 + 4416);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB58;

LAB60:    xsi_set_current_line(195, ng0);
    t4 = (t0 + 4552);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB62;

LAB64:    xsi_set_current_line(220, ng0);
    t4 = (t0 + 472);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB66;

LAB69:    t14 = *((unsigned int *)t18);
    t26 = (t14 + 0);
    t15 = *((unsigned int *)t16);
    t27 = *((unsigned int *)t17);
    t28 = (t15 - t27);
    t29 = (t28 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t26, *((unsigned int *)t17), t29, 0LL);
    goto LAB70;

LAB71:    xsi_set_current_line(280, ng0);
    t4 = (t0 + 3328);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB73;

LAB75:    xsi_set_current_line(314, ng0);
    t4 = (t0 + 3328);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB77;

LAB82:    *((unsigned int *)t16) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(330, ng0);
    t7 = (t0 + 10280);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t19 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t19, t10, 0, 0, 5, 0LL);
    goto LAB88;

LAB90:    t14 = *((unsigned int *)t18);
    t26 = (t14 + 0);
    t15 = *((unsigned int *)t16);
    t27 = *((unsigned int *)t17);
    t28 = (t15 - t27);
    t29 = (t28 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t26, *((unsigned int *)t17), t29, 0LL);
    goto LAB91;

LAB92:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t16), 1, 0LL);
    goto LAB93;

LAB94:    xsi_set_current_line(351, ng0);

LAB97:    xsi_set_current_line(352, ng0);
    t4 = (t0 + 6520U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t27 = *((unsigned int *)t4);
    t30 = (~(t27));
    t31 = *((unsigned int *)t5);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB98;

LAB99:    xsi_set_current_line(353, ng0);
    t2 = (t0 + 2376);
    t3 = *((char **)t2);
    t2 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB100:    xsi_set_current_line(354, ng0);
    t2 = (t0 + 1016);
    t3 = *((char **)t2);
    t2 = (t0 + 10440);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB96;

LAB98:    xsi_set_current_line(352, ng0);
    t7 = (t0 + 2512);
    t8 = *((char **)t7);
    t7 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB100;

LAB102:    xsi_set_current_line(356, ng0);
    t4 = (t0 + 2240);
    t5 = *((char **)t4);
    t4 = (t0 + 10280);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB104;

LAB105:    xsi_set_current_line(371, ng0);
    t4 = (t0 + 3328);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB107;

LAB109:    *((unsigned int *)t17) = 1;
    goto LAB112;

LAB111:    t19 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB112;

LAB113:    t23 = ((char*)((ng1)));
    goto LAB114;

LAB115:    t42 = ((char*)((ng3)));
    goto LAB116;

LAB117:    xsi_vlog_unsigned_bit_combine(t16, 32, t23, 32, t42, 32);
    goto LAB121;

LAB119:    memcpy(t16, t23, 8);
    goto LAB121;

LAB122:    xsi_set_current_line(404, ng0);
    t4 = (t0 + 3464);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB124;

LAB126:    *((unsigned int *)t16) = 1;
    goto LAB129;

LAB130:    xsi_set_current_line(437, ng0);
    t7 = (t0 + 3600);
    t8 = *((char **)t7);
    t7 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB132;

LAB135:    t10 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB137;

LAB136:    *((unsigned int *)t16) = 1;
    goto LAB137;

LAB139:    xsi_set_current_line(470, ng0);

LAB142:    xsi_set_current_line(471, ng0);
    t20 = (t0 + 7320U);
    t23 = *((char **)t20);
    t20 = (t23 + 4);
    t27 = *((unsigned int *)t20);
    t30 = (~(t27));
    t31 = *((unsigned int *)t23);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB143;

LAB144:    xsi_set_current_line(472, ng0);
    t2 = (t0 + 3600);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB145:    goto LAB141;

LAB143:    xsi_set_current_line(471, ng0);
    t42 = (t0 + 3328);
    t43 = *((char **)t42);
    t42 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t42, t43, 0, 0, 5, 0LL);
    goto LAB145;

LAB147:    xsi_set_current_line(475, ng0);
    t7 = (t0 + 10440);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t19 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t19, t10, 0, 0, 5, 0LL);
    goto LAB149;

LAB151:    *((unsigned int *)t16) = 1;
    goto LAB154;

LAB155:    xsi_set_current_line(502, ng0);
    t7 = (t0 + 1832);
    t8 = *((char **)t7);
    t7 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB157;

LAB159:    xsi_set_current_line(526, ng0);
    t4 = (t0 + 744);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB161;

LAB163:    xsi_set_current_line(550, ng0);
    t4 = (t0 + 880);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB165;

LAB168:    xsi_set_current_line(606, ng0);
    t4 = (t0 + 1152);
    t5 = *((char **)t4);
    t4 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB170;

LAB172:    xsi_set_current_line(639, ng0);

LAB175:    xsi_set_current_line(640, ng0);
    t4 = (t0 + 8520);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    memset(t16, 0, 8);
    t8 = (t7 + 4);
    t27 = *((unsigned int *)t8);
    t30 = (~(t27));
    t31 = *((unsigned int *)t7);
    t32 = (t31 & t30);
    t33 = (t32 & 1U);
    if (t33 != 0)
        goto LAB179;

LAB177:    if (*((unsigned int *)t8) == 0)
        goto LAB176;

LAB178:    t10 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t10) = 1;

LAB179:    t19 = (t16 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t16);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB180;

LAB181:    xsi_set_current_line(642, ng0);
    t2 = (t0 + 4688);
    t3 = *((char **)t2);
    t2 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB182:    goto LAB174;

LAB176:    *((unsigned int *)t16) = 1;
    goto LAB179;

LAB180:    xsi_set_current_line(640, ng0);

LAB183:    xsi_set_current_line(641, ng0);
    t20 = (t0 + 10440);
    t23 = (t20 + 56U);
    t42 = *((char **)t23);
    t43 = (t0 + 10120);
    xsi_vlogvar_wait_assign_value(t43, t42, 0, 0, 5, 0LL);
    goto LAB182;

}


extern void work_m_00000000000287287342_2141736013_init()
{
	static char *pe[] = {(void *)Cont_40_0,(void *)Cont_45_1,(void *)Cont_60_2,(void *)Always_113_3,(void *)Always_118_4};
	xsi_register_didat("work_m_00000000000287287342_2141736013", "isim/i2c_tst_isim_beh.exe.sim/work/m_00000000000287287342_2141736013.didat");
	xsi_register_executes(pe);
}
