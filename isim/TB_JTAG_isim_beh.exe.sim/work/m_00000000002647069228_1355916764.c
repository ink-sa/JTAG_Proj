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
static const char *ng0 = "H:/Xilinx_ISE/Lab_2/FSM_Decoder.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {12U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {512U, 0U};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {3U, 0U};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {128U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {257U, 0U};
static unsigned int ng11[] = {6U, 0U};
static unsigned int ng12[] = {7U, 0U};
static unsigned int ng13[] = {8U, 0U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {64U, 0U};
static unsigned int ng16[] = {10U, 0U};
static unsigned int ng17[] = {18U, 0U};
static unsigned int ng18[] = {11U, 0U};
static unsigned int ng19[] = {35U, 0U};
static unsigned int ng20[] = {13U, 0U};
static unsigned int ng21[] = {14U, 0U};
static unsigned int ng22[] = {15U, 0U};



static void Always_59_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 6304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 6872);
    *((int *)t2) = 1;
    t3 = (t0 + 6336);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 3224U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 5384);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 10);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(61, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 5384);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 10);
    goto LAB41;

LAB9:    xsi_set_current_line(62, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB11:    xsi_set_current_line(64, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB13:    xsi_set_current_line(65, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB15:    xsi_set_current_line(67, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB17:    xsi_set_current_line(68, ng0);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB19:    xsi_set_current_line(69, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB21:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB23:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB25:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB27:    xsi_set_current_line(74, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB29:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB31:    xsi_set_current_line(76, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB33:    xsi_set_current_line(77, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB35:    xsi_set_current_line(78, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

LAB37:    xsi_set_current_line(79, ng0);
    t3 = ((char*)((ng16)));
    t4 = (t0 + 5384);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 10);
    goto LAB41;

}

static void Always_86_1(char *t0)
{
    char t7[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 6552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6888);
    *((int *)t2) = 1;
    t3 = (t0 + 6584);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(87, ng0);
    t4 = (t0 + 5384);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t8 = (t7 + 4);
    t9 = (t6 + 4);
    t10 = *((unsigned int *)t6);
    t11 = (t10 >> 9);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t9);
    t14 = (t13 >> 9);
    t15 = (t14 & 1);
    *((unsigned int *)t8) = t15;
    t16 = (t0 + 5224);
    xsi_vlogvar_wait_assign_value(t16, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 8);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 8);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 3784);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 7);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 7);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 3944);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 6);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 6);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4104);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 5);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 5);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4264);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 4);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 4);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4424);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 3);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 3);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4584);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 2);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 2);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4744);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 1);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 1);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 4904);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 5384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t7, 0, 8);
    t5 = (t7 + 4);
    t6 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    t12 = (t11 & 1);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t6);
    t14 = (t13 >> 0);
    t15 = (t14 & 1);
    *((unsigned int *)t5) = t15;
    t8 = (t0 + 5064);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 1, 0LL);
    goto LAB2;

}


extern void work_m_00000000002647069228_1355916764_init()
{
	static char *pe[] = {(void *)Always_59_0,(void *)Always_86_1};
	xsi_register_didat("work_m_00000000002647069228_1355916764", "isim/TB_JTAG_isim_beh.exe.sim/work/m_00000000002647069228_1355916764.didat");
	xsi_register_executes(pe);
}
