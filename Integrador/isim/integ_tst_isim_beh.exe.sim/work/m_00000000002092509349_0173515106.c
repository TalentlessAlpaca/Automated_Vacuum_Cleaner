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
static const char *ng0 = "/home/rafa/Descargas/Digital/Integrador/Integrator.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {8U, 0U};
static unsigned int ng12[] = {9U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static unsigned int ng15[] = {12U, 0U};
static unsigned int ng16[] = {13U, 0U};
static unsigned int ng17[] = {14U, 0U};
static unsigned int ng18[] = {15U, 0U};
static unsigned int ng19[] = {16U, 0U};
static unsigned int ng20[] = {17U, 0U};
static unsigned int ng21[] = {18U, 0U};
static unsigned int ng22[] = {19U, 0U};
static unsigned int ng23[] = {20U, 0U};



static void Initial_53_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 1, 0LL);

LAB1:    return;
}

static void Initial_91_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4716);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);

LAB1:    return;
}

static void Initial_92_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 4808);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 5);

LAB1:    return;
}

static void Always_96_3(char *t0)
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

LAB0:    t1 = (t0 + 5728U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 6044);
    *((int *)t2) = 1;
    t3 = (t0 + 5752);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(96, ng0);

LAB5:    xsi_set_current_line(97, ng0);
    t4 = (t0 + 2648U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4808);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4716);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(97, ng0);
    t11 = ((char*)((ng3)));
    t12 = (t0 + 4716);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 5, 0LL);
    goto LAB8;

}

static void Always_102_4(char *t0)
{
    char t11[8];
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

LAB0:    t1 = (t0 + 5864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 6052);
    *((int *)t2) = 1;
    t3 = (t0 + 5888);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(102, ng0);

LAB5:    xsi_set_current_line(103, ng0);
    t4 = (t0 + 4716);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t7, 5);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng19)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng20)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng21)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng22)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng23)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 5, t2, 5);
    if (t8 == 1)
        goto LAB47;

LAB48:
LAB49:    goto LAB2;

LAB7:    xsi_set_current_line(104, ng0);

LAB50:    xsi_set_current_line(105, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 3244);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 16, 0LL);
    xsi_set_current_line(106, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(107, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3428);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3612);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3704);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3980);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4164);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4256);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4348);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4440);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 3796);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB9:    xsi_set_current_line(124, ng0);

LAB51:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3796);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2832U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 & 65535U);
    if (t16 != 0)
        goto LAB55;

LAB53:    if (*((unsigned int *)t2) == 0)
        goto LAB52;

LAB54:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB55:    t5 = (t11 + 4);
    t17 = *((unsigned int *)t5);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB58:    goto LAB49;

LAB11:    xsi_set_current_line(133, ng0);

LAB59:    xsi_set_current_line(134, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB13:    xsi_set_current_line(140, ng0);

LAB60:    xsi_set_current_line(143, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB64;

LAB62:    if (*((unsigned int *)t3) == 0)
        goto LAB61;

LAB63:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB64:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB67:    goto LAB49;

LAB15:    xsi_set_current_line(153, ng0);

LAB69:    xsi_set_current_line(156, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(157, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(158, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB17:    xsi_set_current_line(162, ng0);

LAB70:    xsi_set_current_line(163, ng0);
    t3 = (t0 + 2372U);
    t4 = *((char **)t3);
    t3 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(164, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(165, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(166, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB19:    xsi_set_current_line(168, ng0);

LAB71:    xsi_set_current_line(170, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB75;

LAB73:    if (*((unsigned int *)t3) == 0)
        goto LAB72;

LAB74:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB75:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(175, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB78:    goto LAB49;

LAB21:    xsi_set_current_line(179, ng0);

LAB80:    xsi_set_current_line(180, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB23:    xsi_set_current_line(185, ng0);

LAB81:    xsi_set_current_line(186, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(187, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(188, ng0);
    t2 = (t0 + 2464U);
    t3 = *((char **)t2);
    t2 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(189, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB25:    xsi_set_current_line(192, ng0);

LAB82:    xsi_set_current_line(194, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB86;

LAB84:    if (*((unsigned int *)t3) == 0)
        goto LAB83;

LAB85:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB86:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB87;

LAB88:    xsi_set_current_line(199, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB89:    goto LAB49;

LAB27:    xsi_set_current_line(203, ng0);

LAB91:    xsi_set_current_line(204, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(205, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(206, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB29:    xsi_set_current_line(210, ng0);

LAB92:    xsi_set_current_line(211, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(212, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(213, ng0);
    t2 = (t0 + 3980);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB31:    xsi_set_current_line(217, ng0);

LAB93:    xsi_set_current_line(219, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB97;

LAB95:    if (*((unsigned int *)t3) == 0)
        goto LAB94;

LAB96:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB97:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB98;

LAB99:    xsi_set_current_line(224, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB100:    goto LAB49;

LAB33:    xsi_set_current_line(228, ng0);

LAB102:    xsi_set_current_line(229, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(231, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB35:    xsi_set_current_line(234, ng0);

LAB103:    xsi_set_current_line(235, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(236, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(237, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(238, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 4808);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);
    goto LAB49;

LAB37:    xsi_set_current_line(241, ng0);

LAB104:    xsi_set_current_line(243, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB108;

LAB106:    if (*((unsigned int *)t3) == 0)
        goto LAB105;

LAB107:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB108:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB109;

LAB110:    xsi_set_current_line(248, ng0);
    t2 = ((char*)((ng18)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB111:    goto LAB49;

LAB39:    xsi_set_current_line(252, ng0);

LAB113:    xsi_set_current_line(253, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(254, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(255, ng0);
    t2 = ((char*)((ng20)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB41:    xsi_set_current_line(258, ng0);

LAB114:    xsi_set_current_line(259, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(260, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(261, ng0);
    t2 = (t0 + 4164);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 4532);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(262, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB43:    xsi_set_current_line(265, ng0);

LAB115:    xsi_set_current_line(267, ng0);
    t3 = (t0 + 2924U);
    t4 = *((char **)t3);
    memset(t11, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB119;

LAB117:    if (*((unsigned int *)t3) == 0)
        goto LAB116;

LAB118:    t5 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t5) = 1;

LAB119:    t7 = (t11 + 4);
    t17 = *((unsigned int *)t7);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB120;

LAB121:    xsi_set_current_line(272, ng0);
    t2 = ((char*)((ng21)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB122:    goto LAB49;

LAB45:    xsi_set_current_line(276, ng0);

LAB124:    xsi_set_current_line(277, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(278, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4624);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(279, ng0);
    t2 = ((char*)((ng23)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB49;

LAB47:    xsi_set_current_line(282, ng0);

LAB125:    xsi_set_current_line(284, ng0);
    t3 = (t0 + 3980);
    t4 = (t3 + 36U);
    t5 = *((char **)t4);
    t7 = (t0 + 3244);
    xsi_vlogvar_wait_assign_value(t7, t5, 0, 0, 16, 0LL);
    xsi_set_current_line(285, ng0);
    t2 = (t0 + 4072);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3336);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(286, ng0);
    t2 = (t0 + 4164);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3428);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(287, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3520);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(288, ng0);
    t2 = (t0 + 4348);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3612);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(289, ng0);
    t2 = (t0 + 4440);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3704);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 16, 0LL);
    xsi_set_current_line(290, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3796);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(291, ng0);
    t2 = (t0 + 2832U);
    t3 = *((char **)t2);
    memset(t11, 0, 8);
    t2 = (t3 + 4);
    t12 = *((unsigned int *)t2);
    t13 = (~(t12));
    t14 = *((unsigned int *)t3);
    t15 = (t14 & t13);
    t16 = (t15 & 65535U);
    if (t16 != 0)
        goto LAB129;

LAB127:    if (*((unsigned int *)t2) == 0)
        goto LAB126;

LAB128:    t4 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t4) = 1;

LAB129:    t5 = (t11 + 4);
    t17 = *((unsigned int *)t5);
    t18 = (~(t17));
    t19 = *((unsigned int *)t11);
    t20 = (t19 & t18);
    t21 = (t20 != 0);
    if (t21 > 0)
        goto LAB130;

LAB131:    xsi_set_current_line(292, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB132:    goto LAB49;

LAB52:    *((unsigned int *)t11) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(128, ng0);
    t7 = ((char*)((ng1)));
    t9 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 5, 0LL);
    goto LAB58;

LAB61:    *((unsigned int *)t11) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(143, ng0);

LAB68:    xsi_set_current_line(144, ng0);
    t9 = ((char*)((ng7)));
    t10 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 5, 0LL);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 3016U);
    t3 = *((char **)t2);
    t2 = (t0 + 3980);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    goto LAB67;

LAB72:    *((unsigned int *)t11) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(170, ng0);

LAB79:    xsi_set_current_line(171, ng0);
    t9 = (t0 + 3016U);
    t10 = *((char **)t9);
    t9 = (t0 + 4072);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB78;

LAB83:    *((unsigned int *)t11) = 1;
    goto LAB86;

LAB87:    xsi_set_current_line(194, ng0);

LAB90:    xsi_set_current_line(195, ng0);
    t9 = (t0 + 3016U);
    t10 = *((char **)t9);
    t9 = (t0 + 4164);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(196, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB89;

LAB94:    *((unsigned int *)t11) = 1;
    goto LAB97;

LAB98:    xsi_set_current_line(219, ng0);

LAB101:    xsi_set_current_line(220, ng0);
    t9 = (t0 + 3016U);
    t10 = *((char **)t9);
    t9 = (t0 + 4256);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng16)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB100;

LAB105:    *((unsigned int *)t11) = 1;
    goto LAB108;

LAB109:    xsi_set_current_line(243, ng0);

LAB112:    xsi_set_current_line(244, ng0);
    t9 = (t0 + 3016U);
    t10 = *((char **)t9);
    t9 = (t0 + 4348);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(245, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB111;

LAB116:    *((unsigned int *)t11) = 1;
    goto LAB119;

LAB120:    xsi_set_current_line(267, ng0);

LAB123:    xsi_set_current_line(268, ng0);
    t9 = (t0 + 3016U);
    t10 = *((char **)t9);
    t9 = (t0 + 4440);
    xsi_vlogvar_wait_assign_value(t9, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(269, ng0);
    t2 = ((char*)((ng22)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    goto LAB122;

LAB126:    *((unsigned int *)t11) = 1;
    goto LAB129;

LAB130:    xsi_set_current_line(291, ng0);
    t7 = ((char*)((ng23)));
    t9 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t9, t7, 0, 0, 5, 0LL);
    goto LAB132;

}


extern void work_m_00000000002092509349_0173515106_init()
{
	static char *pe[] = {(void *)Initial_53_0,(void *)Initial_91_1,(void *)Initial_92_2,(void *)Always_96_3,(void *)Always_102_4};
	xsi_register_didat("work_m_00000000002092509349_0173515106", "isim/integ_tst_isim_beh.exe.sim/work/m_00000000002092509349_0173515106.didat");
	xsi_register_executes(pe);
}
