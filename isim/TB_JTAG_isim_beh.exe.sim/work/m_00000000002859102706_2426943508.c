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
static const char *ng0 = "H:/Xilinx_ISE/Lab_2/TAP_FSM.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {2U, 0U};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {6U, 0U};
static unsigned int ng10[] = {7U, 0U};
static unsigned int ng11[] = {9U, 0U};
static unsigned int ng12[] = {8U, 0U};
static unsigned int ng13[] = {10U, 0U};
static unsigned int ng14[] = {11U, 0U};
static unsigned int ng15[] = {12U, 0U};
static unsigned int ng16[] = {13U, 0U};
static unsigned int ng17[] = {15U, 0U};
static unsigned int ng18[] = {14U, 0U};
static const char *ng19 = "";
static const char *ng20 = ":T_L_R";
static const char *ng21 = ":R_T_I";
static int ng22[] = {2, 0};
static const char *ng23 = ":S_DR_Scan";
static int ng24[] = {3, 0};
static const char *ng25 = ":S_IR_Scan";
static int ng26[] = {4, 0};
static const char *ng27 = ":Cap_DR";
static int ng28[] = {5, 0};
static const char *ng29 = ":Sh_DR";
static int ng30[] = {6, 0};
static const char *ng31 = ":Ex1_DR";
static int ng32[] = {7, 0};
static const char *ng33 = ":Pause_DR";
static int ng34[] = {8, 0};
static const char *ng35 = ":Ex2_DR";
static int ng36[] = {9, 0};
static const char *ng37 = ":Up_DR";
static int ng38[] = {10, 0};
static const char *ng39 = ":Cap_IR";
static int ng40[] = {11, 0};
static const char *ng41 = ":Sh_IR";
static int ng42[] = {12, 0};
static const char *ng43 = ":Ex1_IR";
static int ng44[] = {13, 0};
static const char *ng45 = ":Pause_IR";
static int ng46[] = {14, 0};
static const char *ng47 = ":Ex2_IR";
static int ng48[] = {15, 0};
static const char *ng49 = ":Up_IR";



static void Always_46_0(char *t0)
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
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 4864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5432);
    *((int *)t2) = 1;
    t3 = (t0 + 4896);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(48, ng0);

LAB5:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 3944);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(55, ng0);
    t9 = (t0 + 3384U);
    t10 = *((char **)t9);
    t9 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t12 = (t10 + 4);
    t13 = (t9 + 4);
    t14 = *((unsigned int *)t10);
    t15 = *((unsigned int *)t9);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t12);
    t18 = *((unsigned int *)t13);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t12);
    t22 = *((unsigned int *)t13);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB45;

LAB42:    if (t23 != 0)
        goto LAB44;

LAB43:    *((unsigned int *)t11) = 1;

LAB45:    t27 = (t11 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB46;

LAB47:
LAB48:    goto LAB41;

LAB9:    xsi_set_current_line(59, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB52;

LAB49:    if (t23 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t11) = 1;

LAB52:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB53;

LAB54:
LAB55:    goto LAB41;

LAB11:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB59;

LAB56:    if (t23 != 0)
        goto LAB58;

LAB57:    *((unsigned int *)t11) = 1;

LAB59:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB60;

LAB61:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB62:    goto LAB41;

LAB13:    xsi_set_current_line(69, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB66;

LAB63:    if (t23 != 0)
        goto LAB65;

LAB64:    *((unsigned int *)t11) = 1;

LAB66:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB67;

LAB68:    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB69:    goto LAB41;

LAB15:    xsi_set_current_line(75, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB73;

LAB70:    if (t23 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t11) = 1;

LAB73:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB74;

LAB75:
LAB76:    goto LAB41;

LAB17:    xsi_set_current_line(79, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB80;

LAB77:    if (t23 != 0)
        goto LAB79;

LAB78:    *((unsigned int *)t11) = 1;

LAB80:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB81;

LAB82:    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB83:    goto LAB41;

LAB19:    xsi_set_current_line(85, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB87;

LAB84:    if (t23 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t11) = 1;

LAB87:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB88;

LAB89:
LAB90:    goto LAB41;

LAB21:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB94;

LAB91:    if (t23 != 0)
        goto LAB93;

LAB92:    *((unsigned int *)t11) = 1;

LAB94:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB95;

LAB96:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB97:    goto LAB41;

LAB23:    xsi_set_current_line(95, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB101;

LAB98:    if (t23 != 0)
        goto LAB100;

LAB99:    *((unsigned int *)t11) = 1;

LAB101:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB102;

LAB103:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB104:    goto LAB41;

LAB25:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB108;

LAB105:    if (t23 != 0)
        goto LAB107;

LAB106:    *((unsigned int *)t11) = 1;

LAB108:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB109;

LAB110:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB111:    goto LAB41;

LAB27:    xsi_set_current_line(107, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB115;

LAB112:    if (t23 != 0)
        goto LAB114;

LAB113:    *((unsigned int *)t11) = 1;

LAB115:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB116;

LAB117:    xsi_set_current_line(110, ng0);
    t2 = ((char*)((ng15)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB118:    goto LAB41;

LAB29:    xsi_set_current_line(113, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB122;

LAB119:    if (t23 != 0)
        goto LAB121;

LAB120:    *((unsigned int *)t11) = 1;

LAB122:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB123;

LAB124:
LAB125:    goto LAB41;

LAB31:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB129;

LAB126:    if (t23 != 0)
        goto LAB128;

LAB127:    *((unsigned int *)t11) = 1;

LAB129:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB130;

LAB131:    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB132:    goto LAB41;

LAB33:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB136;

LAB133:    if (t23 != 0)
        goto LAB135;

LAB134:    *((unsigned int *)t11) = 1;

LAB136:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB137;

LAB138:
LAB139:    goto LAB41;

LAB35:    xsi_set_current_line(127, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB143;

LAB140:    if (t23 != 0)
        goto LAB142;

LAB141:    *((unsigned int *)t11) = 1;

LAB143:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB144;

LAB145:    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB146:    goto LAB41;

LAB37:    xsi_set_current_line(133, ng0);
    t3 = (t0 + 3384U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng2)));
    memset(t11, 0, 8);
    t5 = (t4 + 4);
    t7 = (t3 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t3);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t7);
    t19 = (t17 ^ t18);
    t20 = (t16 | t19);
    t21 = *((unsigned int *)t5);
    t22 = *((unsigned int *)t7);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB150;

LAB147:    if (t23 != 0)
        goto LAB149;

LAB148:    *((unsigned int *)t11) = 1;

LAB150:    t10 = (t11 + 4);
    t28 = *((unsigned int *)t10);
    t29 = (~(t28));
    t30 = *((unsigned int *)t11);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB151;

LAB152:    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 3944);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB153:    goto LAB41;

LAB44:    t26 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB45;

LAB46:    xsi_set_current_line(56, ng0);
    t33 = ((char*)((ng3)));
    t34 = (t0 + 3944);
    xsi_vlogvar_assign_value(t34, t33, 0, 0, 4);
    goto LAB48;

LAB51:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(60, ng0);
    t12 = ((char*)((ng5)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB55;

LAB58:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB59;

LAB60:    xsi_set_current_line(64, ng0);
    t12 = ((char*)((ng6)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB62;

LAB65:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB66;

LAB67:    xsi_set_current_line(70, ng0);
    t12 = ((char*)((ng8)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB69;

LAB72:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB73;

LAB74:    xsi_set_current_line(76, ng0);
    t12 = ((char*)((ng9)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB76;

LAB79:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB80;

LAB81:    xsi_set_current_line(80, ng0);
    t12 = ((char*)((ng10)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB83;

LAB86:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB87;

LAB88:    xsi_set_current_line(86, ng0);
    t12 = ((char*)((ng12)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB90;

LAB93:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB94;

LAB95:    xsi_set_current_line(90, ng0);
    t12 = ((char*)((ng8)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB97;

LAB100:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB101;

LAB102:    xsi_set_current_line(96, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB104;

LAB107:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB108;

LAB109:    xsi_set_current_line(102, ng0);
    t12 = ((char*)((ng13)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB111;

LAB114:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB115;

LAB116:    xsi_set_current_line(108, ng0);
    t12 = ((char*)((ng14)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB118;

LAB121:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB122;

LAB123:    xsi_set_current_line(114, ng0);
    t12 = ((char*)((ng15)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB125;

LAB128:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB129;

LAB130:    xsi_set_current_line(118, ng0);
    t12 = ((char*)((ng16)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB132;

LAB135:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB136;

LAB137:    xsi_set_current_line(124, ng0);
    t12 = ((char*)((ng18)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB139;

LAB142:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB143;

LAB144:    xsi_set_current_line(128, ng0);
    t12 = ((char*)((ng14)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB146;

LAB149:    t9 = (t11 + 4);
    *((unsigned int *)t11) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB150;

LAB151:    xsi_set_current_line(134, ng0);
    t12 = ((char*)((ng3)));
    t13 = (t0 + 3944);
    xsi_vlogvar_assign_value(t13, t12, 0, 0, 4);
    goto LAB153;

}

static void Always_146_1(char *t0)
{
    char t11[16];
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

LAB0:    t1 = (t0 + 5112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 5448);
    *((int *)t2) = 1;
    t3 = (t0 + 5144);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(148, ng0);

LAB5:    xsi_set_current_line(150, ng0);
    t4 = (t0 + 3944);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng7)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng12)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng18)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng17)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(249, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3784);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB41:    goto LAB2;

LAB7:    xsi_set_current_line(153, ng0);

LAB42:    xsi_set_current_line(154, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 3784);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    xsi_set_current_line(155, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng20, 1, t0);
    goto LAB41;

LAB9:    xsi_set_current_line(159, ng0);

LAB43:    xsi_set_current_line(160, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(161, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng21, 1, t0);
    goto LAB41;

LAB11:    xsi_set_current_line(165, ng0);

LAB44:    xsi_set_current_line(166, ng0);
    t3 = ((char*)((ng22)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(167, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng23, 1, t0);
    goto LAB41;

LAB13:    xsi_set_current_line(171, ng0);

LAB45:    xsi_set_current_line(172, ng0);
    t3 = ((char*)((ng24)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(173, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng25, 1, t0);
    goto LAB41;

LAB15:    xsi_set_current_line(177, ng0);

LAB46:    xsi_set_current_line(178, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(179, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng27, 1, t0);
    goto LAB41;

LAB17:    xsi_set_current_line(183, ng0);

LAB47:    xsi_set_current_line(184, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(185, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng29, 1, t0);
    goto LAB41;

LAB19:    xsi_set_current_line(189, ng0);

LAB48:    xsi_set_current_line(190, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(191, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng31, 1, t0);
    goto LAB41;

LAB21:    xsi_set_current_line(195, ng0);

LAB49:    xsi_set_current_line(196, ng0);
    t3 = ((char*)((ng32)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(197, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng33, 1, t0);
    goto LAB41;

LAB23:    xsi_set_current_line(201, ng0);

LAB50:    xsi_set_current_line(202, ng0);
    t3 = ((char*)((ng34)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(203, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng35, 1, t0);
    goto LAB41;

LAB25:    xsi_set_current_line(207, ng0);

LAB51:    xsi_set_current_line(208, ng0);
    t3 = ((char*)((ng36)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(209, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng37, 1, t0);
    goto LAB41;

LAB27:    xsi_set_current_line(213, ng0);

LAB52:    xsi_set_current_line(214, ng0);
    t3 = ((char*)((ng38)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(215, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng39, 1, t0);
    goto LAB41;

LAB29:    xsi_set_current_line(219, ng0);

LAB53:    xsi_set_current_line(220, ng0);
    t3 = ((char*)((ng40)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(221, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng41, 1, t0);
    goto LAB41;

LAB31:    xsi_set_current_line(225, ng0);

LAB54:    xsi_set_current_line(226, ng0);
    t3 = ((char*)((ng42)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(227, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng43, 1, t0);
    goto LAB41;

LAB33:    xsi_set_current_line(231, ng0);

LAB55:    xsi_set_current_line(232, ng0);
    t3 = ((char*)((ng44)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(233, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng45, 1, t0);
    goto LAB41;

LAB35:    xsi_set_current_line(237, ng0);

LAB56:    xsi_set_current_line(238, ng0);
    t3 = ((char*)((ng46)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(239, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng47, 1, t0);
    goto LAB41;

LAB37:    xsi_set_current_line(243, ng0);

LAB57:    xsi_set_current_line(244, ng0);
    t3 = ((char*)((ng48)));
    t4 = (t0 + 3784);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    xsi_set_current_line(245, ng0);
    t2 = xsi_vlog_time(t11, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(0, 0, 0, ng19, 2, t0, (char)118, t11, 64);
    xsi_vlogfile_write(1, 0, 0, ng49, 1, t0);
    goto LAB41;

}


extern void work_m_00000000002859102706_2426943508_init()
{
	static char *pe[] = {(void *)Always_46_0,(void *)Always_146_1};
	xsi_register_didat("work_m_00000000002859102706_2426943508", "isim/TB_JTAG_isim_beh.exe.sim/work/m_00000000002859102706_2426943508.didat");
	xsi_register_executes(pe);
}
