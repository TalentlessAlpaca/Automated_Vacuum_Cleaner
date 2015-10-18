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

LAB0:    t1 = (t0 + 11248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 9688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 12704);
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
    t18 = (t0 + 12560);
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

LAB0:    t1 = (t0 + 11496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 8408);
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

LAB16:    t26 = (t0 + 12768);
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
    t39 = (t0 + 12576);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB7;

LAB8:    t18 = (t0 + 8088);
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

LAB0:    t1 = (t0 + 11744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    t2 = (t0 + 12832);
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
    t16 = (t0 + 12592);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_111_3(char *t0)
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

LAB0:    t1 = (t0 + 11992U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 12608);
    *((int *)t2) = 1;
    t3 = (t0 + 12024);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(111, ng0);

LAB5:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 5288U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 3872);
    t3 = *((char **)t2);
    t2 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(112, ng0);
    t11 = (t0 + 9848);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t0 + 9688);
    xsi_vlogvar_wait_assign_value(t14, t13, 0, 0, 5, 0LL);
    goto LAB8;

}

static void Always_116_4(char *t0)
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

LAB0:    t1 = (t0 + 12240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 12624);
    *((int *)t2) = 1;
    t3 = (t0 + 12272);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(116, ng0);

LAB5:    xsi_set_current_line(118, ng0);
    t4 = (t0 + 9688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = (t0 + 3872);
    t8 = *((char **)t7);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t8, 32);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = (t0 + 4008);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = (t0 + 4144);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 4416);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB19;

LAB20:    t2 = (t0 + 1968);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB21;

LAB22:    t2 = (t0 + 2104);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB23;

LAB24:    t2 = (t0 + 2240);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB25;

LAB26:    t2 = (t0 + 2376);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB27;

LAB28:    t2 = (t0 + 1560);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB29;

LAB30:    t2 = (t0 + 3056);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB31;

LAB32:    t2 = (t0 + 3192);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB33;

LAB34:    t2 = (t0 + 3328);
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

LAB46:    t2 = (t0 + 1288);
    t3 = *((char **)t2);
    t9 = xsi_vlog_unsigned_case_compare(t6, 5, t3, 32);
    if (t9 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB2;

LAB7:    xsi_set_current_line(119, ng0);

LAB50:    xsi_set_current_line(121, ng0);
    t7 = ((char*)((ng1)));
    t10 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t10, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4008);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB49;

LAB9:    xsi_set_current_line(146, ng0);

LAB51:    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(149, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(150, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(151, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(152, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(153, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(155, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(156, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 5448U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB52;

LAB53:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 4008);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB54:    goto LAB49;

LAB11:    xsi_set_current_line(171, ng0);

LAB55:    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(174, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(176, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(177, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(178, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(180, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(193, ng0);
    t2 = (t0 + 7208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 4144);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB58:    goto LAB49;

LAB13:    xsi_set_current_line(196, ng0);

LAB59:    xsi_set_current_line(198, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(199, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(200, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(201, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(207, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(218, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(219, ng0);
    t2 = (t0 + 4280);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB62:    goto LAB49;

LAB15:    xsi_set_current_line(221, ng0);

LAB63:    xsi_set_current_line(223, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(224, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(226, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(227, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(228, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(232, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(243, ng0);
    t2 = (t0 + 4416);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB49;

LAB17:    xsi_set_current_line(247, ng0);

LAB64:    xsi_set_current_line(249, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(250, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(251, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(252, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(253, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(255, ng0);
    t2 = (t0 + 5928U);
    t3 = *((char **)t2);
    t2 = (t0 + 9048);
    t4 = (t0 + 9048);
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
        goto LAB65;

LAB66:    xsi_set_current_line(256, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(257, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(258, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(261, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(262, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(265, ng0);
    t2 = (t0 + 1832);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(266, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(267, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(278, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB67;

LAB68:    xsi_set_current_line(279, ng0);
    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB69:    goto LAB49;

LAB19:    xsi_set_current_line(281, ng0);

LAB70:    xsi_set_current_line(283, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(284, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(285, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(286, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(287, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(288, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(289, ng0);
    t2 = (t0 + 6088U);
    t3 = *((char **)t2);
    t2 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(290, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(291, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(294, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(295, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(296, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(299, ng0);
    t2 = (t0 + 608);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(300, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(301, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(312, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB71;

LAB72:
LAB73:    goto LAB49;

LAB21:    xsi_set_current_line(315, ng0);

LAB74:    goto LAB49;

LAB23:    xsi_set_current_line(319, ng0);

LAB75:    goto LAB49;

LAB25:    xsi_set_current_line(323, ng0);

LAB76:    goto LAB49;

LAB27:    xsi_set_current_line(326, ng0);

LAB77:    xsi_set_current_line(327, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(328, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB81;

LAB79:    if (*((unsigned int *)t2) == 0)
        goto LAB78;

LAB80:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB81:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB82;

LAB83:
LAB84:    goto LAB49;

LAB29:    xsi_set_current_line(331, ng0);

LAB85:    xsi_set_current_line(333, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(334, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(335, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(336, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(337, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(338, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(339, ng0);
    t2 = (t0 + 5768U);
    t3 = *((char **)t2);
    t2 = (t0 + 9048);
    t4 = (t0 + 9048);
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
        goto LAB86;

LAB87:    xsi_set_current_line(340, ng0);
    t2 = (t0 + 5608U);
    t3 = *((char **)t2);
    t2 = (t0 + 9048);
    t4 = (t0 + 9048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t16, t7, 2, t8, 32, 1);
    t10 = (t16 + 4);
    t11 = *((unsigned int *)t10);
    t9 = (!(t11));
    if (t9 == 1)
        goto LAB88;

LAB89:    xsi_set_current_line(341, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(342, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(343, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(345, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(346, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(347, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(349, ng0);
    t2 = (t0 + 5608U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB90;

LAB91:    xsi_set_current_line(353, ng0);

LAB97:    xsi_set_current_line(354, ng0);
    t2 = (t0 + 6248U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB98;

LAB99:    xsi_set_current_line(355, ng0);
    t2 = (t0 + 1696);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB100:    xsi_set_current_line(356, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB92:    xsi_set_current_line(358, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(369, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB101;

LAB102:    xsi_set_current_line(370, ng0);
    t2 = (t0 + 1560);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB103:    goto LAB49;

LAB31:    xsi_set_current_line(372, ng0);

LAB104:    xsi_set_current_line(374, ng0);
    t2 = (t0 + 9048);
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
        goto LAB105;

LAB106:    if (*((unsigned int *)t10) != 0)
        goto LAB107;

LAB108:    t20 = (t17 + 4);
    t35 = *((unsigned int *)t17);
    t36 = *((unsigned int *)t20);
    t37 = (t35 || t36);
    if (t37 > 0)
        goto LAB109;

LAB110:    t38 = *((unsigned int *)t17);
    t39 = (~(t38));
    t40 = *((unsigned int *)t20);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB111;

LAB112:    if (*((unsigned int *)t20) > 0)
        goto LAB113;

LAB114:    if (*((unsigned int *)t17) > 0)
        goto LAB115;

LAB116:    memcpy(t16, t42, 8);

LAB117:    t43 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t43, t16, 0, 0, 1, 0LL);
    xsi_set_current_line(375, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(376, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(377, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(378, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(379, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(380, ng0);
    t2 = (t0 + 9048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(381, ng0);
    t2 = (t0 + 9048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_lshift(t16, 16, t4, 16, t5, 32);
    t7 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 16, 0LL);
    xsi_set_current_line(382, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(383, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t4, 4, t5, 32);
    t7 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t7, t16, 0, 0, 4, 0LL);
    xsi_set_current_line(385, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(386, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(387, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(389, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(390, ng0);
    t2 = (t0 + 10168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(391, ng0);
    t2 = (t0 + 10328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(402, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB118;

LAB119:    xsi_set_current_line(403, ng0);
    t2 = (t0 + 3056);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB120:    goto LAB49;

LAB33:    xsi_set_current_line(405, ng0);

LAB121:    xsi_set_current_line(407, ng0);
    t2 = (t0 + 8088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(408, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(409, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(410, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(411, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(412, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(413, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(414, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(415, ng0);
    t2 = (t0 + 9528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(416, ng0);
    t2 = (t0 + 9528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(418, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(419, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(420, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(422, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(423, ng0);
    t2 = (t0 + 10168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(424, ng0);
    t2 = (t0 + 10328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(435, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB125;

LAB123:    if (*((unsigned int *)t2) == 0)
        goto LAB122;

LAB124:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB125:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(436, ng0);
    t2 = (t0 + 3192);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB128:    goto LAB49;

LAB35:    xsi_set_current_line(438, ng0);

LAB129:    xsi_set_current_line(440, ng0);
    t2 = (t0 + 8088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(441, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(442, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(443, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(444, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(445, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(446, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(447, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(448, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(449, ng0);
    t2 = (t0 + 9528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(451, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(452, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(453, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(455, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(456, ng0);
    t2 = (t0 + 10168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(457, ng0);
    t2 = (t0 + 10328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(468, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t16, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB131;

LAB130:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB131;

LAB134:    if (*((unsigned int *)t4) < *((unsigned int *)t5))
        goto LAB132;

LAB133:    t19 = (t16 + 4);
    t11 = *((unsigned int *)t19);
    t12 = (~(t11));
    t13 = *((unsigned int *)t16);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB135;

LAB136:    xsi_set_current_line(472, ng0);

LAB142:    xsi_set_current_line(473, ng0);
    t2 = (t0 + 10328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 4);
    t11 = *((unsigned int *)t5);
    t12 = (~(t11));
    t13 = *((unsigned int *)t4);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB143;

LAB144:    xsi_set_current_line(474, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);

LAB145:
LAB137:    goto LAB49;

LAB37:    xsi_set_current_line(478, ng0);

LAB146:    xsi_set_current_line(480, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(481, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(482, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(483, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(484, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(485, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(487, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(488, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(489, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(500, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    memset(t16, 0, 8);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB150;

LAB148:    if (*((unsigned int *)t2) == 0)
        goto LAB147;

LAB149:    t4 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t4) = 1;

LAB150:    t5 = (t16 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t31 = *((unsigned int *)t16);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB151;

LAB152:    xsi_set_current_line(501, ng0);
    t2 = (t0 + 472);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB153:    goto LAB49;

LAB39:    xsi_set_current_line(503, ng0);

LAB154:    goto LAB49;

LAB41:    xsi_set_current_line(506, ng0);

LAB155:    xsi_set_current_line(508, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(509, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(510, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(511, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(512, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(513, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(514, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(515, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(516, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(517, ng0);
    t2 = (t0 + 9528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(519, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(520, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(521, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(523, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(524, ng0);
    t2 = (t0 + 10168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(525, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(536, ng0);
    t2 = (t0 + 6888U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB156;

LAB157:    xsi_set_current_line(537, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB158:    goto LAB49;

LAB43:    xsi_set_current_line(539, ng0);

LAB159:    xsi_set_current_line(541, ng0);
    t2 = (t0 + 8088);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 8088);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 1, 0LL);
    xsi_set_current_line(542, ng0);
    t2 = (t0 + 6408U);
    t3 = *((char **)t2);
    t2 = (t0 + 8248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(543, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 8408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(544, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(545, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 8728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(546, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 8888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(547, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9048);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(548, ng0);
    t2 = (t0 + 9208);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9208);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(549, ng0);
    t2 = (t0 + 9368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9368);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(550, ng0);
    t2 = (t0 + 9528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9528);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 4, 0LL);
    xsi_set_current_line(552, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(553, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(554, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 7928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(556, ng0);
    t2 = (t0 + 10008);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);
    xsi_set_current_line(557, ng0);
    t2 = (t0 + 2376);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(558, ng0);
    t2 = (t0 + 10328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10328);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 1, 0LL);
    xsi_set_current_line(569, ng0);
    t2 = (t0 + 7048U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t11 = *((unsigned int *)t2);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB160;

LAB161:    xsi_set_current_line(574, ng0);
    t2 = (t0 + 880);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB162:    goto LAB49;

LAB45:    xsi_set_current_line(576, ng0);

LAB172:    goto LAB49;

LAB47:    xsi_set_current_line(579, ng0);

LAB173:    goto LAB49;

LAB52:    xsi_set_current_line(168, ng0);
    t4 = (t0 + 4144);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB54;

LAB56:    xsi_set_current_line(193, ng0);
    t4 = (t0 + 4280);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB58;

LAB60:    xsi_set_current_line(218, ng0);
    t4 = (t0 + 472);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB62;

LAB65:    t14 = *((unsigned int *)t18);
    t26 = (t14 + 0);
    t15 = *((unsigned int *)t16);
    t27 = *((unsigned int *)t17);
    t28 = (t15 - t27);
    t29 = (t28 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t26, *((unsigned int *)t17), t29, 0LL);
    goto LAB66;

LAB67:    xsi_set_current_line(278, ng0);
    t4 = (t0 + 3056);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB69;

LAB71:    xsi_set_current_line(312, ng0);
    t4 = (t0 + 3056);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB73;

LAB78:    *((unsigned int *)t16) = 1;
    goto LAB81;

LAB82:    xsi_set_current_line(328, ng0);
    t7 = (t0 + 10008);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t19 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t19, t10, 0, 0, 5, 0LL);
    goto LAB84;

LAB86:    t14 = *((unsigned int *)t18);
    t26 = (t14 + 0);
    t15 = *((unsigned int *)t16);
    t27 = *((unsigned int *)t17);
    t28 = (t15 - t27);
    t29 = (t28 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, t26, *((unsigned int *)t17), t29, 0LL);
    goto LAB87;

LAB88:    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t16), 1, 0LL);
    goto LAB89;

LAB90:    xsi_set_current_line(349, ng0);

LAB93:    xsi_set_current_line(350, ng0);
    t4 = (t0 + 6248U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t27 = *((unsigned int *)t4);
    t30 = (~(t27));
    t31 = *((unsigned int *)t5);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB94;

LAB95:    xsi_set_current_line(351, ng0);
    t2 = (t0 + 2104);
    t3 = *((char **)t2);
    t2 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB96:    xsi_set_current_line(352, ng0);
    t2 = (t0 + 744);
    t3 = *((char **)t2);
    t2 = (t0 + 10168);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    goto LAB92;

LAB94:    xsi_set_current_line(350, ng0);
    t7 = (t0 + 2240);
    t8 = *((char **)t7);
    t7 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB96;

LAB98:    xsi_set_current_line(354, ng0);
    t4 = (t0 + 1968);
    t5 = *((char **)t4);
    t4 = (t0 + 10008);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB100;

LAB101:    xsi_set_current_line(369, ng0);
    t4 = (t0 + 3056);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB103;

LAB105:    *((unsigned int *)t17) = 1;
    goto LAB108;

LAB107:    t19 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB108;

LAB109:    t23 = ((char*)((ng1)));
    goto LAB110;

LAB111:    t42 = ((char*)((ng3)));
    goto LAB112;

LAB113:    xsi_vlog_unsigned_bit_combine(t16, 32, t23, 32, t42, 32);
    goto LAB117;

LAB115:    memcpy(t16, t23, 8);
    goto LAB117;

LAB118:    xsi_set_current_line(402, ng0);
    t4 = (t0 + 3192);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB120;

LAB122:    *((unsigned int *)t16) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(435, ng0);
    t7 = (t0 + 3328);
    t8 = *((char **)t7);
    t7 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB128;

LAB131:    t10 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t10) = 1;
    goto LAB133;

LAB132:    *((unsigned int *)t16) = 1;
    goto LAB133;

LAB135:    xsi_set_current_line(468, ng0);

LAB138:    xsi_set_current_line(469, ng0);
    t20 = (t0 + 7048U);
    t23 = *((char **)t20);
    t20 = (t23 + 4);
    t27 = *((unsigned int *)t20);
    t30 = (~(t27));
    t31 = *((unsigned int *)t23);
    t32 = (t31 & t30);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB139;

LAB140:    xsi_set_current_line(470, ng0);
    t2 = (t0 + 3328);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB141:    goto LAB137;

LAB139:    xsi_set_current_line(469, ng0);
    t42 = (t0 + 3056);
    t43 = *((char **)t42);
    t42 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t42, t43, 0, 0, 5, 0LL);
    goto LAB141;

LAB143:    xsi_set_current_line(473, ng0);
    t7 = (t0 + 10168);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t19 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t19, t10, 0, 0, 5, 0LL);
    goto LAB145;

LAB147:    *((unsigned int *)t16) = 1;
    goto LAB150;

LAB151:    xsi_set_current_line(500, ng0);
    t7 = (t0 + 1560);
    t8 = *((char **)t7);
    t7 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB153;

LAB156:    xsi_set_current_line(536, ng0);
    t4 = (t0 + 880);
    t5 = *((char **)t4);
    t4 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 5, 0LL);
    goto LAB158;

LAB160:    xsi_set_current_line(569, ng0);

LAB163:    xsi_set_current_line(570, ng0);
    t4 = (t0 + 8248);
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
        goto LAB167;

LAB165:    if (*((unsigned int *)t8) == 0)
        goto LAB164;

LAB166:    t10 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t10) = 1;

LAB167:    t19 = (t16 + 4);
    t34 = *((unsigned int *)t19);
    t35 = (~(t34));
    t36 = *((unsigned int *)t16);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB168;

LAB169:    xsi_set_current_line(572, ng0);
    t2 = (t0 + 4416);
    t3 = *((char **)t2);
    t2 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);

LAB170:    goto LAB162;

LAB164:    *((unsigned int *)t16) = 1;
    goto LAB167;

LAB168:    xsi_set_current_line(570, ng0);

LAB171:    xsi_set_current_line(571, ng0);
    t20 = (t0 + 10168);
    t23 = (t20 + 56U);
    t42 = *((char **)t23);
    t43 = (t0 + 9848);
    xsi_vlogvar_wait_assign_value(t43, t42, 0, 0, 5, 0LL);
    goto LAB170;

}


extern void work_m_00000000004135641914_2141736013_init()
{
	static char *pe[] = {(void *)Cont_40_0,(void *)Cont_45_1,(void *)Cont_60_2,(void *)Always_111_3,(void *)Always_116_4};
	xsi_register_didat("work_m_00000000004135641914_2141736013", "isim/i2c_tst_isim_beh.exe.sim/work/m_00000000004135641914_2141736013.didat");
	xsi_register_executes(pe);
}
