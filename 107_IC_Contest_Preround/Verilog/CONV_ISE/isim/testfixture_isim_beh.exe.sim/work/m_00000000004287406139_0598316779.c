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
static const char *ng0 = "C:/Users/USER/Desktop/IC_Compete_Sync/107_IC_Contest_Preround/Verilog/CONV_ISE/testfixture.v";
static const char *ng1 = "-----------------------------------------------------\n";
static const char *ng2 = "START!!! Simulation Start .....\n";
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static int ng6[] = {0, 0};
static const char *ng7 = "./cnn_sti.dat";
static const char *ng8 = "./cnn_layer0_exp0.dat";
static const char *ng9 = "./cnn_layer0_exp1.dat";
static const char *ng10 = "./cnn_layer1_exp0.dat";
static const char *ng11 = "./cnn_layer1_exp1.dat";
static const char *ng12 = "./cnn_layer2_exp.dat";
static unsigned int ng13[] = {4294967295U, 4294967295U};
static unsigned int ng14[] = {2U, 0U};
static unsigned int ng15[] = {3U, 0U};
static unsigned int ng16[] = {4U, 0U};
static unsigned int ng17[] = {5U, 0U};
static int ng18[] = {4095, 0};
static const char *ng19 = "WRONG! Layer 0 (Convolutional Output) with Kernel 0 , Pixel %d is wrong!";
static const char *ng20 = "               The output data is %h, but the expected data is %h ";
static const char *ng21 = "Layer 0 (Convolutional Output) with Kernel 0 is correct !";
static const char *ng22 = "Layer 0 (Convolutional Output) with Kernel 0 be found %d error !";
static const char *ng23 = "WRONG! Layer 0 (Convolutional Output) with Kernel 1 , Pixel %d is wrong!";
static const char *ng24 = "Layer 0 (Convolutional Output) with Kernel 1 is correct!";
static const char *ng25 = "Layer 0 (Convolutional Output) with Kernel 1 be found %d error !";
static int ng26[] = {1023, 0};
static const char *ng27 = "WRONG! Layer 1 (Max-pooling Output) with Kernel 0 , Pixel %d is wrong!";
static const char *ng28 = "Layer 1 (Max-pooling Output) with Kernel 0 is correct!";
static const char *ng29 = "Layer 1 (Max-pooling Output) with Kernel 0 be found %d error !";
static const char *ng30 = "WRONG! Layer 1 (Max-pooling Output) with Kernel 1 , Pixel %d is wrong!";
static const char *ng31 = "Layer 1 (Max-pooling Output) with Kernel 1 is correct!";
static const char *ng32 = "Layer 1 (Max-pooling Output) with Kernel 1 be found %d error !";
static int ng33[] = {2047, 0};
static const char *ng34 = "WRONG! Layer 2 (Flatten  Output), Pixel %d is wrong!";
static const char *ng35 = "Layer 2 (Flatten  Output) is correct!";
static const char *ng36 = "Layer 2 (Flatten  Output) be found %d error !";
static const char *ng37 = "Error!!! The simulation can't be terminated under normal operation!\n";
static const char *ng38 = "-------------------------FAIL------------------------\n";
static const char *ng39 = " ";
static const char *ng40 = "--------------------- S U M M A R Y -----------------\n";
static const char *ng41 = "Congratulations! Layer 0 data have been generated successfully! The result is PASS!!\n";
static const char *ng42 = "Layer 0 output was fail! \n";
static const char *ng43 = "FAIL!!!  There are %d errors! in Layer 0 \n";
static const char *ng44 = "Congratulations! Layer 1 data have been generated successfully! The result is PASS!!\n";
static const char *ng45 = "Layer 1 output was fail! \n";
static const char *ng46 = "FAIL!!!  There are %d errors! in Layer 1 \n";
static const char *ng47 = "Congratulations! Layer 2 data have been generated successfully! The result is PASS!!\n";
static const char *ng48 = "Layer 2 output was fail! \n";
static const char *ng49 = "FAIL!!!  There are %d errors! in Layer 2 \n";
static const char *ng50 = "FAIL!!! No output data was found!! \n";



static void Always_75_0(char *t0)
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 8128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);

LAB4:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 7936);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(75, ng0);
    t4 = (t0 + 4488);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 4488);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

}

static void Initial_83_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t1 = (t0 + 8376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(83, ng0);

LAB4:    xsi_set_current_line(84, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(85, ng0);
    xsi_vlogfile_write(1, 0, 0, ng2, 1, t0);
    xsi_set_current_line(86, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 10928);
    *((int *)t2) = 1;
    t3 = (t0 + 8408);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 8184);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 8184);
    xsi_process_wait(t2, 30000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 8184);
    xsi_process_wait(t2, 1000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);

LAB9:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB13;

LAB10:    if (t16 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t4) = 1;

LAB13:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB15;

LAB14:    t26 = (t0 + 10944);
    *((int *)t26) = 1;
    t27 = (t0 + 8376U);
    *((char **)t27) = &&LAB9;
    goto LAB1;

LAB12:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB13;

LAB15:    t28 = (t0 + 10944);
    *((int *)t28) = 0;
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 8184);
    xsi_process_wait(t2, 2500LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB1;

}

static void Initial_92_2(char *t0)
{
    char t6[8];
    char t31[8];
    char t36[8];
    char t52[8];
    char t60[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    int t84;
    int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;

LAB0:    t1 = (t0 + 8624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);

LAB4:    xsi_set_current_line(93, ng0);

LAB5:    t2 = (t0 + 4328);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB11;

LAB10:    t28 = (t0 + 10960);
    *((int *)t28) = 1;
    t29 = (t0 + 8624U);
    *((char **)t29) = &&LAB5;

LAB1:    return;
LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB11:    t30 = (t0 + 10960);
    *((int *)t30) = 0;
    xsi_set_current_line(94, ng0);

LAB12:    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB16;

LAB13:    if (t18 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t6) = 1;

LAB16:    memset(t31, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t22) != 0)
        goto LAB19;

LAB20:    t29 = (t31 + 4);
    t32 = *((unsigned int *)t31);
    t33 = *((unsigned int *)t29);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB21;

LAB22:    memcpy(t60, t31, 8);

LAB23:    t92 = (t60 + 4);
    t93 = *((unsigned int *)t92);
    t94 = (~(t93));
    t95 = *((unsigned int *)t60);
    t96 = (t95 & t94);
    t97 = (t96 != 0);
    if (t97 > 0)
        goto LAB36;

LAB35:    t98 = (t0 + 10976);
    *((int *)t98) = 1;
    t99 = (t0 + 8624U);
    *((char **)t99) = &&LAB12;
    goto LAB1;

LAB15:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB16;

LAB17:    *((unsigned int *)t31) = 1;
    goto LAB20;

LAB19:    t28 = (t31 + 4);
    *((unsigned int *)t31) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB20;

LAB21:    t30 = (t0 + 2168U);
    t35 = *((char **)t30);
    t30 = ((char*)((ng6)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t30 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t30);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB27;

LAB24:    if (t48 != 0)
        goto LAB26;

LAB25:    *((unsigned int *)t36) = 1;

LAB27:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t53) != 0)
        goto LAB30;

LAB31:    t61 = *((unsigned int *)t31);
    t62 = *((unsigned int *)t52);
    t63 = (t61 & t62);
    *((unsigned int *)t60) = t63;
    t64 = (t31 + 4);
    t65 = (t52 + 4);
    t66 = (t60 + 4);
    t67 = *((unsigned int *)t64);
    t68 = *((unsigned int *)t65);
    t69 = (t67 | t68);
    *((unsigned int *)t66) = t69;
    t70 = *((unsigned int *)t66);
    t71 = (t70 != 0);
    if (t71 == 1)
        goto LAB32;

LAB33:
LAB34:    goto LAB23;

LAB26:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB27;

LAB28:    *((unsigned int *)t52) = 1;
    goto LAB31;

LAB30:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB31;

LAB32:    t72 = *((unsigned int *)t60);
    t73 = *((unsigned int *)t66);
    *((unsigned int *)t60) = (t72 | t73);
    t74 = (t31 + 4);
    t75 = (t52 + 4);
    t76 = *((unsigned int *)t31);
    t77 = (~(t76));
    t78 = *((unsigned int *)t74);
    t79 = (~(t78));
    t80 = *((unsigned int *)t52);
    t81 = (~(t80));
    t82 = *((unsigned int *)t75);
    t83 = (~(t82));
    t84 = (t77 & t79);
    t85 = (t81 & t83);
    t86 = (~(t84));
    t87 = (~(t85));
    t88 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t88 & t86);
    t89 = *((unsigned int *)t66);
    *((unsigned int *)t66) = (t89 & t87);
    t90 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t90 & t86);
    t91 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t91 & t87);
    goto LAB34;

LAB36:    t100 = (t0 + 10976);
    *((int *)t100) = 0;
    xsi_set_current_line(94, ng0);

LAB37:    xsi_set_current_line(95, ng0);
    t101 = (t0 + 2568);
    xsi_vlogfile_readmemh(ng7, 0, t101, 0, 0, 0, 0);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2728);
    xsi_vlogfile_readmemh(ng8, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2888);
    xsi_vlogfile_readmemh(ng9, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3368);
    xsi_vlogfile_readmemh(ng10, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 3528);
    xsi_vlogfile_readmemh(ng11, 0, t2, 0, 0, 0, 0);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 4008);
    xsi_vlogfile_readmemh(ng12, 0, t2, 0, 0, 0, 0);
    goto LAB1;

}

static void Always_105_3(char *t0)
{
    char t6[8];
    char t24[8];
    char t40[8];
    char t81[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    int t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    char *t80;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t88;
    char *t89;

LAB0:    t1 = (t0 + 8872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 10992);
    *((int *)t2) = 1;
    t3 = (t0 + 8904);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(105, ng0);

LAB5:    xsi_set_current_line(106, ng0);
    t4 = (t0 + 8680);
    xsi_process_wait(t4, 1000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4648);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB10;

LAB7:    if (t18 != 0)
        goto LAB9;

LAB8:    *((unsigned int *)t6) = 1;

LAB10:    t22 = (t0 + 2168U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng5)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t26 = (t22 + 4);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t22);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t25);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t26);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB14;

LAB11:    if (t36 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t24) = 1;

LAB14:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 & t42);
    *((unsigned int *)t40) = t43;
    t44 = (t6 + 4);
    t45 = (t24 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB15;

LAB16:
LAB17:    t72 = (t40 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t40);
    t76 = (t75 & t74);
    t77 = (t76 != 0);
    if (t77 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 20, 0LL);

LAB20:    goto LAB2;

LAB9:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB10;

LAB13:    t39 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB14;

LAB15:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t6 + 4);
    t55 = (t24 + 4);
    t56 = *((unsigned int *)t6);
    t57 = (~(t56));
    t58 = *((unsigned int *)t54);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t55);
    t63 = (~(t62));
    t64 = (t57 & t59);
    t65 = (t61 & t63);
    t66 = (~(t64));
    t67 = (~(t65));
    t68 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t68 & t66);
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t67);
    t70 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t70 & t66);
    t71 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t71 & t67);
    goto LAB17;

LAB18:    xsi_set_current_line(107, ng0);
    t78 = (t0 + 2568);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    t82 = (t0 + 2568);
    t83 = (t82 + 72U);
    t84 = *((char **)t83);
    t85 = (t0 + 2568);
    t86 = (t85 + 64U);
    t87 = *((char **)t86);
    t88 = (t0 + 2008U);
    t89 = *((char **)t88);
    xsi_vlog_generic_get_array_select_value(t81, 20, t80, t84, t87, 2, 1, t89, 12, 2);
    t88 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t88, t81, 0, 0, 20, 0LL);
    goto LAB20;

}

static void Always_112_4(char *t0)
{
    char t6[8];
    char t34[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    t1 = (t0 + 9120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 11008);
    *((int *)t2) = 1;
    t3 = (t0 + 9152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(112, ng0);

LAB5:    xsi_set_current_line(113, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(113, ng0);

LAB13:    xsi_set_current_line(114, ng0);
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);

LAB14:    t28 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t28, 3);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng14)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng16)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB12;

LAB15:    xsi_set_current_line(115, ng0);
    t31 = (t0 + 3048);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t35 = (t0 + 3048);
    t36 = (t35 + 72U);
    t37 = *((char **)t36);
    t38 = (t0 + 3048);
    t39 = (t38 + 64U);
    t40 = *((char **)t39);
    t41 = (t0 + 1688U);
    t42 = *((char **)t41);
    xsi_vlog_generic_get_array_select_value(t34, 20, t33, t37, t40, 2, 1, t42, 12, 2);
    t41 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t41, t34, 0, 0, 20, 0LL);
    goto LAB25;

LAB17:    xsi_set_current_line(116, ng0);
    t3 = (t0 + 3208);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3208);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 3208);
    t28 = (t22 + 64U);
    t31 = *((char **)t28);
    t32 = (t0 + 1688U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t6, 20, t5, t21, t31, 2, 1, t33, 12, 2);
    t32 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t32, t6, 0, 0, 20, 0LL);
    goto LAB25;

LAB19:    xsi_set_current_line(117, ng0);
    t3 = (t0 + 3688);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3688);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 3688);
    t28 = (t22 + 64U);
    t31 = *((char **)t28);
    t32 = (t0 + 1688U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t6, 20, t5, t21, t31, 2, 1, t33, 12, 2);
    t32 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t32, t6, 0, 0, 20, 0LL);
    goto LAB25;

LAB21:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 3848);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 3848);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 3848);
    t28 = (t22 + 64U);
    t31 = *((char **)t28);
    t32 = (t0 + 1688U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t6, 20, t5, t21, t31, 2, 1, t33, 12, 2);
    t32 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t32, t6, 0, 0, 20, 0LL);
    goto LAB25;

LAB23:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 4168);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 4168);
    t8 = (t7 + 72U);
    t21 = *((char **)t8);
    t22 = (t0 + 4168);
    t28 = (t22 + 64U);
    t31 = *((char **)t28);
    t32 = (t0 + 1688U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_array_select_value(t6, 20, t5, t21, t31, 2, 1, t33, 12, 2);
    t32 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t32, t6, 0, 0, 20, 0LL);
    goto LAB25;

}

static void Always_124_5(char *t0)
{
    char t6[8];
    char t33[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    int t30;
    char *t31;
    char *t32;
    int t34;
    int t35;
    int t36;
    int t37;

LAB0:    t1 = (t0 + 9368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 11024);
    *((int *)t2) = 1;
    t3 = (t0 + 9400);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(124, ng0);

LAB5:    xsi_set_current_line(125, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(125, ng0);

LAB13:    xsi_set_current_line(126, ng0);
    t28 = (t0 + 1528U);
    t29 = *((char **)t28);

LAB14:    t28 = ((char*)((ng3)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t28, 3);
    if (t30 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng14)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng15)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng16)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng17)));
    t30 = xsi_vlog_unsigned_case_compare(t29, 3, t2, 3);
    if (t30 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB12;

LAB15:    xsi_set_current_line(127, ng0);

LAB26:    xsi_set_current_line(127, ng0);
    t31 = ((char*)((ng5)));
    t32 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 1, 0LL);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t31 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t6, t33, t7, t22, 2, 1, t31, 12, 2);
    t28 = (t6 + 4);
    t9 = *((unsigned int *)t28);
    t30 = (!(t9));
    t32 = (t33 + 4);
    t10 = *((unsigned int *)t32);
    t34 = (!(t10));
    t35 = (t30 && t34);
    if (t35 == 1)
        goto LAB27;

LAB28:    goto LAB25;

LAB17:    xsi_set_current_line(128, ng0);

LAB29:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    t4 = (t0 + 3208);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3208);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t31 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t6, t33, t7, t22, 2, 1, t31, 12, 2);
    t28 = (t6 + 4);
    t9 = *((unsigned int *)t28);
    t30 = (!(t9));
    t32 = (t33 + 4);
    t10 = *((unsigned int *)t32);
    t34 = (!(t10));
    t35 = (t30 && t34);
    if (t35 == 1)
        goto LAB30;

LAB31:    goto LAB25;

LAB19:    xsi_set_current_line(129, ng0);

LAB32:    xsi_set_current_line(129, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    t4 = (t0 + 3688);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3688);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t31 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t6, t33, t7, t22, 2, 1, t31, 12, 2);
    t28 = (t6 + 4);
    t9 = *((unsigned int *)t28);
    t30 = (!(t9));
    t32 = (t33 + 4);
    t10 = *((unsigned int *)t32);
    t34 = (!(t10));
    t35 = (t30 && t34);
    if (t35 == 1)
        goto LAB33;

LAB34:    goto LAB25;

LAB21:    xsi_set_current_line(130, ng0);

LAB35:    xsi_set_current_line(130, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3848);
    t4 = (t0 + 3848);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3848);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t31 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t6, t33, t7, t22, 2, 1, t31, 12, 2);
    t28 = (t6 + 4);
    t9 = *((unsigned int *)t28);
    t30 = (!(t9));
    t32 = (t33 + 4);
    t10 = *((unsigned int *)t32);
    t34 = (!(t10));
    t35 = (t30 && t34);
    if (t35 == 1)
        goto LAB36;

LAB37:    goto LAB25;

LAB23:    xsi_set_current_line(131, ng0);

LAB38:    xsi_set_current_line(131, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 7208);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 4168);
    t4 = (t0 + 4168);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 4168);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = (t0 + 1848U);
    t31 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t6, t33, t7, t22, 2, 1, t31, 12, 2);
    t28 = (t6 + 4);
    t9 = *((unsigned int *)t28);
    t30 = (!(t9));
    t32 = (t33 + 4);
    t10 = *((unsigned int *)t32);
    t34 = (!(t10));
    t35 = (t30 && t34);
    if (t35 == 1)
        goto LAB39;

LAB40:    goto LAB25;

LAB27:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t33);
    t36 = (t11 - t12);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t33), t37, 0LL);
    goto LAB28;

LAB30:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t33);
    t36 = (t11 - t12);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t33), t37, 0LL);
    goto LAB31;

LAB33:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t33);
    t36 = (t11 - t12);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t33), t37, 0LL);
    goto LAB34;

LAB36:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t33);
    t36 = (t11 - t12);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t33), t37, 0LL);
    goto LAB37;

LAB39:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t33);
    t36 = (t11 - t12);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t33), t37, 0LL);
    goto LAB40;

}

static void Initial_139_6(char *t0)
{
    char t4[8];
    char t30[8];
    char t41[8];
    char t51[8];
    char t65[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;

LAB0:    t1 = (t0 + 9616U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(139, ng0);

LAB4:    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(141, ng0);

LAB5:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t4) = 1;

LAB9:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB11;

LAB10:    t26 = (t0 + 11040);
    *((int *)t26) = 1;
    t27 = (t0 + 9616U);
    *((char **)t27) = &&LAB5;

LAB1:    return;
LAB8:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB11:    t28 = (t0 + 11040);
    *((int *)t28) = 0;
    xsi_set_current_line(141, ng0);

LAB12:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB13:    if (t16 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t4) = 1;

LAB16:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB17:    t26 = (t0 + 11056);
    *((int *)t26) = 1;
    t27 = (t0 + 9616U);
    *((char **)t27) = &&LAB12;
    goto LAB1;

LAB15:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB18:    t28 = (t0 + 11056);
    *((int *)t28) = 0;
    xsi_set_current_line(142, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB22;

LAB19:    if (t16 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t4) = 1;

LAB22:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB1;

LAB21:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(142, ng0);

LAB26:    xsi_set_current_line(143, ng0);
    t28 = ((char*)((ng6)));
    t29 = (t0 + 5928);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(144, ng0);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB27:    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng18)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(160, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(161, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng22, 2, t0, (char)119, t5, 32);

LAB42:    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(163, ng0);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB43:    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng18)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(179, ng0);
    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(180, ng0);
    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng25, 2, t0, (char)119, t5, 32);

LAB58:    goto LAB25;

LAB28:    xsi_set_current_line(144, ng0);

LAB30:    xsi_set_current_line(145, ng0);
    t20 = (t0 + 3048);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 3048);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = (t0 + 3048);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 5128);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t30, 20, t27, t31, t34, 2, 1, t37, 32, 1);
    t38 = (t0 + 2728);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t42 = (t0 + 2728);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = (t0 + 2728);
    t46 = (t45 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 5128);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    xsi_vlog_generic_get_array_select_value(t41, 20, t40, t44, t47, 2, 1, t50, 32, 1);
    memset(t51, 0, 8);
    t52 = (t30 + 4);
    t53 = (t41 + 4);
    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t41);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t52);
    t16 = *((unsigned int *)t53);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t21 = *((unsigned int *)t52);
    t22 = *((unsigned int *)t53);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB34;

LAB31:    if (t23 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t51) = 1;

LAB34:    t55 = (t51 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(152, ng0);

LAB38:    xsi_set_current_line(153, ng0);
    t61 = (t0 + 5928);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = ((char*)((ng5)));
    memset(t65, 0, 8);
    xsi_vlog_signed_add(t65, 32, t63, 32, t64, 32);
    t66 = (t0 + 5928);
    xsi_vlogvar_assign_value(t66, t65, 0, 0, 32);
    xsi_set_current_line(154, ng0);

LAB39:    xsi_set_current_line(155, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng19, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3048);
    t19 = (t6 + 72U);
    t20 = *((char **)t19);
    t26 = (t0 + 3048);
    t27 = (t26 + 64U);
    t28 = *((char **)t27);
    t29 = (t0 + 5128);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_array_select_value(t4, 20, t5, t20, t28, 2, 1, t32, 32, 1);
    t33 = (t0 + 2728);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 2728);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 2728);
    t40 = (t39 + 64U);
    t42 = *((char **)t40);
    t43 = (t0 + 5128);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t30, 20, t35, t38, t42, 2, 1, t45, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng20, 3, t0, (char)118, t4, 20, (char)118, t30, 20);

LAB37:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t19 = (t0 + 5128);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 32);
    goto LAB27;

LAB33:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB34;

LAB35:    goto LAB37;

LAB40:    xsi_set_current_line(160, ng0);
    xsi_vlogfile_write(1, 0, 0, ng21, 1, t0);
    goto LAB42;

LAB44:    xsi_set_current_line(163, ng0);

LAB46:    xsi_set_current_line(164, ng0);
    t20 = (t0 + 3208);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 3208);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = (t0 + 3208);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 5128);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t30, 20, t27, t31, t34, 2, 1, t37, 32, 1);
    t38 = (t0 + 2888);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t42 = (t0 + 2888);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = (t0 + 2888);
    t46 = (t45 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 5128);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    xsi_vlog_generic_get_array_select_value(t41, 20, t40, t44, t47, 2, 1, t50, 32, 1);
    memset(t51, 0, 8);
    t52 = (t30 + 4);
    t53 = (t41 + 4);
    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t41);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t52);
    t16 = *((unsigned int *)t53);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t21 = *((unsigned int *)t52);
    t22 = *((unsigned int *)t53);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB50;

LAB47:    if (t23 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t51) = 1;

LAB50:    t55 = (t51 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(171, ng0);

LAB54:    xsi_set_current_line(172, ng0);
    t61 = (t0 + 6088);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = ((char*)((ng5)));
    memset(t65, 0, 8);
    xsi_vlog_signed_add(t65, 32, t63, 32, t64, 32);
    t66 = (t0 + 6088);
    xsi_vlogvar_assign_value(t66, t65, 0, 0, 32);
    xsi_set_current_line(173, ng0);

LAB55:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng23, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(175, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3208);
    t19 = (t6 + 72U);
    t20 = *((char **)t19);
    t26 = (t0 + 3208);
    t27 = (t26 + 64U);
    t28 = *((char **)t27);
    t29 = (t0 + 5128);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_array_select_value(t4, 20, t5, t20, t28, 2, 1, t32, 32, 1);
    t33 = (t0 + 2888);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 2888);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 2888);
    t40 = (t39 + 64U);
    t42 = *((char **)t40);
    t43 = (t0 + 5128);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t30, 20, t35, t38, t42, 2, 1, t45, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng20, 3, t0, (char)118, t4, 20, (char)118, t30, 20);

LAB53:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t19 = (t0 + 5128);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 32);
    goto LAB43;

LAB49:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB50;

LAB51:    goto LAB53;

LAB56:    xsi_set_current_line(179, ng0);
    xsi_vlogfile_write(1, 0, 0, ng24, 1, t0);
    goto LAB58;

}

static void Initial_185_7(char *t0)
{
    char t4[8];
    char t30[8];
    char t41[8];
    char t51[8];
    char t65[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;

LAB0:    t1 = (t0 + 9864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(185, ng0);

LAB4:    xsi_set_current_line(186, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(187, ng0);

LAB5:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t4) = 1;

LAB9:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB11;

LAB10:    t26 = (t0 + 11072);
    *((int *)t26) = 1;
    t27 = (t0 + 9864U);
    *((char **)t27) = &&LAB5;

LAB1:    return;
LAB8:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB11:    t28 = (t0 + 11072);
    *((int *)t28) = 0;
    xsi_set_current_line(187, ng0);

LAB12:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB13:    if (t16 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t4) = 1;

LAB16:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB17:    t26 = (t0 + 11088);
    *((int *)t26) = 1;
    t27 = (t0 + 9864U);
    *((char **)t27) = &&LAB12;
    goto LAB1;

LAB15:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB18:    t28 = (t0 + 11088);
    *((int *)t28) = 0;
    xsi_set_current_line(188, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB22;

LAB19:    if (t16 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t4) = 1;

LAB22:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB1;

LAB21:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(188, ng0);

LAB26:    xsi_set_current_line(189, ng0);
    t28 = ((char*)((ng6)));
    t29 = (t0 + 6248);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(190, ng0);
    xsi_set_current_line(190, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB27:    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng26)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(200, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(201, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng29, 2, t0, (char)119, t5, 32);

LAB42:    xsi_set_current_line(202, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 6408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(203, ng0);
    xsi_set_current_line(203, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB43:    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng26)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(213, ng0);
    t2 = (t0 + 6408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(214, ng0);
    t2 = (t0 + 6408);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng32, 2, t0, (char)119, t5, 32);

LAB58:    goto LAB25;

LAB28:    xsi_set_current_line(190, ng0);

LAB30:    xsi_set_current_line(191, ng0);
    t20 = (t0 + 3688);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 3688);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = (t0 + 3688);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 5288);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t30, 20, t27, t31, t34, 2, 1, t37, 32, 1);
    t38 = (t0 + 3368);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t42 = (t0 + 3368);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = (t0 + 3368);
    t46 = (t45 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 5288);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    xsi_vlog_generic_get_array_select_value(t41, 20, t40, t44, t47, 2, 1, t50, 32, 1);
    memset(t51, 0, 8);
    t52 = (t30 + 4);
    t53 = (t41 + 4);
    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t41);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t52);
    t16 = *((unsigned int *)t53);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t21 = *((unsigned int *)t52);
    t22 = *((unsigned int *)t53);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB34;

LAB31:    if (t23 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t51) = 1;

LAB34:    t55 = (t51 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(192, ng0);

LAB38:    xsi_set_current_line(193, ng0);
    t61 = (t0 + 6248);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = ((char*)((ng5)));
    memset(t65, 0, 8);
    xsi_vlog_signed_add(t65, 32, t63, 32, t64, 32);
    t66 = (t0 + 6248);
    xsi_vlogvar_assign_value(t66, t65, 0, 0, 32);
    xsi_set_current_line(194, ng0);

LAB39:    xsi_set_current_line(195, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng27, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(196, ng0);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3688);
    t19 = (t6 + 72U);
    t20 = *((char **)t19);
    t26 = (t0 + 3688);
    t27 = (t26 + 64U);
    t28 = *((char **)t27);
    t29 = (t0 + 5288);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_array_select_value(t4, 20, t5, t20, t28, 2, 1, t32, 32, 1);
    t33 = (t0 + 3368);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 3368);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 3368);
    t40 = (t39 + 64U);
    t42 = *((char **)t40);
    t43 = (t0 + 5288);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t30, 20, t35, t38, t42, 2, 1, t45, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng20, 3, t0, (char)118, t4, 20, (char)118, t30, 20);

LAB37:    xsi_set_current_line(190, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t19 = (t0 + 5288);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 32);
    goto LAB27;

LAB33:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB34;

LAB35:    goto LAB37;

LAB40:    xsi_set_current_line(200, ng0);
    xsi_vlogfile_write(1, 0, 0, ng28, 1, t0);
    goto LAB42;

LAB44:    xsi_set_current_line(203, ng0);

LAB46:    xsi_set_current_line(204, ng0);
    t20 = (t0 + 3848);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 3848);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = (t0 + 3848);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 5288);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t30, 20, t27, t31, t34, 2, 1, t37, 32, 1);
    t38 = (t0 + 3528);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t42 = (t0 + 3528);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = (t0 + 3528);
    t46 = (t45 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 5288);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    xsi_vlog_generic_get_array_select_value(t41, 20, t40, t44, t47, 2, 1, t50, 32, 1);
    memset(t51, 0, 8);
    t52 = (t30 + 4);
    t53 = (t41 + 4);
    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t41);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t52);
    t16 = *((unsigned int *)t53);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t21 = *((unsigned int *)t52);
    t22 = *((unsigned int *)t53);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB50;

LAB47:    if (t23 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t51) = 1;

LAB50:    t55 = (t51 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(205, ng0);

LAB54:    xsi_set_current_line(206, ng0);
    t61 = (t0 + 6408);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = ((char*)((ng5)));
    memset(t65, 0, 8);
    xsi_vlog_signed_add(t65, 32, t63, 32, t64, 32);
    t66 = (t0 + 6408);
    xsi_vlogvar_assign_value(t66, t65, 0, 0, 32);
    xsi_set_current_line(207, ng0);

LAB55:    xsi_set_current_line(208, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng30, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(209, ng0);
    t2 = (t0 + 3848);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3848);
    t19 = (t6 + 72U);
    t20 = *((char **)t19);
    t26 = (t0 + 3848);
    t27 = (t26 + 64U);
    t28 = *((char **)t27);
    t29 = (t0 + 5288);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_array_select_value(t4, 20, t5, t20, t28, 2, 1, t32, 32, 1);
    t33 = (t0 + 3528);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 3528);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 3528);
    t40 = (t39 + 64U);
    t42 = *((char **)t40);
    t43 = (t0 + 5288);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t30, 20, t35, t38, t42, 2, 1, t45, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng20, 3, t0, (char)118, t4, 20, (char)118, t30, 20);

LAB53:    xsi_set_current_line(203, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t19 = (t0 + 5288);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 32);
    goto LAB43;

LAB49:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB50;

LAB51:    goto LAB53;

LAB56:    xsi_set_current_line(213, ng0);
    xsi_vlogfile_write(1, 0, 0, ng31, 1, t0);
    goto LAB58;

}

static void Initial_220_8(char *t0)
{
    char t4[8];
    char t30[8];
    char t41[8];
    char t51[8];
    char t65[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t66;

LAB0:    t1 = (t0 + 10112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(220, ng0);

LAB4:    xsi_set_current_line(221, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 7208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(222, ng0);

LAB5:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t4) = 1;

LAB9:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB11;

LAB10:    t26 = (t0 + 11104);
    *((int *)t26) = 1;
    t27 = (t0 + 10112U);
    *((char **)t27) = &&LAB5;

LAB1:    return;
LAB8:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB11:    t28 = (t0 + 11104);
    *((int *)t28) = 0;
    xsi_set_current_line(222, ng0);

LAB12:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB13:    if (t16 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t4) = 1;

LAB16:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB17:    t26 = (t0 + 11120);
    *((int *)t26) = 1;
    t27 = (t0 + 10112U);
    *((char **)t27) = &&LAB12;
    goto LAB1;

LAB15:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB18:    t28 = (t0 + 11120);
    *((int *)t28) = 0;
    xsi_set_current_line(223, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB22;

LAB19:    if (t16 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t4) = 1;

LAB22:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB23;

LAB24:
LAB25:    goto LAB1;

LAB21:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB22;

LAB23:    xsi_set_current_line(223, ng0);

LAB26:    xsi_set_current_line(224, ng0);
    t28 = ((char*)((ng6)));
    t29 = (t0 + 6568);
    xsi_vlogvar_assign_value(t29, t28, 0, 0, 32);
    xsi_set_current_line(225, ng0);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 5768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB27:    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng33)));
    memset(t4, 0, 8);
    xsi_vlog_signed_leq(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(235, ng0);
    t2 = (t0 + 6568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(236, ng0);
    t2 = (t0 + 6568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng36, 2, t0, (char)119, t5, 32);

LAB42:    goto LAB25;

LAB28:    xsi_set_current_line(225, ng0);

LAB30:    xsi_set_current_line(226, ng0);
    t20 = (t0 + 4168);
    t26 = (t20 + 56U);
    t27 = *((char **)t26);
    t28 = (t0 + 4168);
    t29 = (t28 + 72U);
    t31 = *((char **)t29);
    t32 = (t0 + 4168);
    t33 = (t32 + 64U);
    t34 = *((char **)t33);
    t35 = (t0 + 5768);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t30, 20, t27, t31, t34, 2, 1, t37, 32, 1);
    t38 = (t0 + 4008);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t42 = (t0 + 4008);
    t43 = (t42 + 72U);
    t44 = *((char **)t43);
    t45 = (t0 + 4008);
    t46 = (t45 + 64U);
    t47 = *((char **)t46);
    t48 = (t0 + 5768);
    t49 = (t48 + 56U);
    t50 = *((char **)t49);
    xsi_vlog_generic_get_array_select_value(t41, 20, t40, t44, t47, 2, 1, t50, 32, 1);
    memset(t51, 0, 8);
    t52 = (t30 + 4);
    t53 = (t41 + 4);
    t12 = *((unsigned int *)t30);
    t13 = *((unsigned int *)t41);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t52);
    t16 = *((unsigned int *)t53);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t21 = *((unsigned int *)t52);
    t22 = *((unsigned int *)t53);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t18 & t24);
    if (t25 != 0)
        goto LAB34;

LAB31:    if (t23 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t51) = 1;

LAB34:    t55 = (t51 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (t58 & t57);
    t60 = (t59 != 0);
    if (t60 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(227, ng0);

LAB38:    xsi_set_current_line(228, ng0);
    t61 = (t0 + 6568);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = ((char*)((ng5)));
    memset(t65, 0, 8);
    xsi_vlog_signed_add(t65, 32, t63, 32, t64, 32);
    t66 = (t0 + 6568);
    xsi_vlogvar_assign_value(t66, t65, 0, 0, 32);
    xsi_set_current_line(229, ng0);

LAB39:    xsi_set_current_line(230, ng0);
    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng34, 2, t0, (char)119, t5, 32);
    xsi_set_current_line(231, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 4168);
    t19 = (t6 + 72U);
    t20 = *((char **)t19);
    t26 = (t0 + 4168);
    t27 = (t26 + 64U);
    t28 = *((char **)t27);
    t29 = (t0 + 5768);
    t31 = (t29 + 56U);
    t32 = *((char **)t31);
    xsi_vlog_generic_get_array_select_value(t4, 20, t5, t20, t28, 2, 1, t32, 32, 1);
    t33 = (t0 + 4008);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t36 = (t0 + 4008);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 4008);
    t40 = (t39 + 64U);
    t42 = *((char **)t40);
    t43 = (t0 + 5768);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    xsi_vlog_generic_get_array_select_value(t30, 20, t35, t38, t42, 2, 1, t45, 32, 1);
    xsi_vlogfile_write(1, 0, 0, ng20, 3, t0, (char)118, t4, 20, (char)118, t30, 20);

LAB37:    xsi_set_current_line(225, ng0);
    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t19 = (t0 + 5768);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 32);
    goto LAB27;

LAB33:    t54 = (t51 + 4);
    *((unsigned int *)t51) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB34;

LAB35:    goto LAB37;

LAB40:    xsi_set_current_line(235, ng0);
    xsi_vlogfile_write(1, 0, 0, ng35, 1, t0);
    goto LAB42;

}

static void Initial_241_9(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 10360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(241, ng0);

LAB4:    xsi_set_current_line(242, ng0);
    t2 = (t0 + 10168);
    xsi_process_wait(t2, 100000000000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(243, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(244, ng0);
    xsi_vlogfile_write(1, 0, 0, ng37, 1, t0);
    xsi_set_current_line(245, ng0);
    xsi_vlogfile_write(1, 0, 0, ng38, 1, t0);
    xsi_set_current_line(246, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(247, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void Initial_250_10(char *t0)
{
    char t4[8];
    char t31[8];
    char t32[8];
    char t63[8];
    char t64[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    int t88;
    int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;

LAB0:    t1 = (t0 + 10608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(250, ng0);

LAB4:    xsi_set_current_line(251, ng0);

LAB5:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t4) = 1;

LAB9:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB11;

LAB10:    t26 = (t0 + 11136);
    *((int *)t26) = 1;
    t27 = (t0 + 10608U);
    *((char **)t27) = &&LAB5;

LAB1:    return;
LAB8:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB11:    t28 = (t0 + 11136);
    *((int *)t28) = 0;
    xsi_set_current_line(252, ng0);

LAB12:    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB13:    if (t16 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t4) = 1;

LAB16:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB18;

LAB17:    t26 = (t0 + 11152);
    *((int *)t26) = 1;
    t27 = (t0 + 10608U);
    *((char **)t27) = &&LAB12;
    goto LAB1;

LAB15:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB18:    t28 = (t0 + 11152);
    *((int *)t28) = 0;
    xsi_set_current_line(253, ng0);
    xsi_vlogfile_write(1, 0, 0, ng39, 1, t0);
    xsi_set_current_line(254, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(255, ng0);
    xsi_vlogfile_write(1, 0, 0, ng40, 1, t0);
    xsi_set_current_line(256, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB22;

LAB19:    if (t16 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t4) = 1;

LAB22:    t27 = (t0 + 5928);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = ((char*)((ng6)));
    memset(t31, 0, 8);
    xsi_vlog_signed_equal(t31, 32, t29, 32, t30, 32);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t31);
    t23 = (t21 & t22);
    *((unsigned int *)t32) = t23;
    t33 = (t4 + 4);
    t34 = (t31 + 4);
    t35 = (t32 + 4);
    t24 = *((unsigned int *)t33);
    t25 = *((unsigned int *)t34);
    t36 = (t24 | t25);
    *((unsigned int *)t35) = t36;
    t37 = *((unsigned int *)t35);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB23;

LAB24:
LAB25:    t59 = (t0 + 6088);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = ((char*)((ng6)));
    memset(t63, 0, 8);
    xsi_vlog_signed_equal(t63, 32, t61, 32, t62, 32);
    t65 = *((unsigned int *)t32);
    t66 = *((unsigned int *)t63);
    t67 = (t65 & t66);
    *((unsigned int *)t64) = t67;
    t68 = (t32 + 4);
    t69 = (t63 + 4);
    t70 = (t64 + 4);
    t71 = *((unsigned int *)t68);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB26;

LAB27:
LAB28:    t96 = (t64 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t64);
    t100 = (t99 & t98);
    t101 = (t100 != 0);
    if (t101 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(257, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB35;

LAB32:    if (t16 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t4) = 1;

LAB35:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB36;

LAB37:    xsi_set_current_line(258, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 6088);
    t19 = (t6 + 56U);
    t20 = *((char **)t19);
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t20, 32);
    xsi_vlogfile_write(1, 0, 0, ng43, 2, t0, (char)119, t4, 32);

LAB38:
LAB31:    xsi_set_current_line(259, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB42;

LAB39:    if (t16 != 0)
        goto LAB41;

LAB40:    *((unsigned int *)t4) = 1;

LAB42:    t27 = (t0 + 6248);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = ((char*)((ng6)));
    memset(t31, 0, 8);
    xsi_vlog_signed_equal(t31, 32, t29, 32, t30, 32);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t31);
    t23 = (t21 & t22);
    *((unsigned int *)t32) = t23;
    t33 = (t4 + 4);
    t34 = (t31 + 4);
    t35 = (t32 + 4);
    t24 = *((unsigned int *)t33);
    t25 = *((unsigned int *)t34);
    t36 = (t24 | t25);
    *((unsigned int *)t35) = t36;
    t37 = *((unsigned int *)t35);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB43;

LAB44:
LAB45:    t59 = (t0 + 6408);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    t62 = ((char*)((ng6)));
    memset(t63, 0, 8);
    xsi_vlog_signed_equal(t63, 32, t61, 32, t62, 32);
    t65 = *((unsigned int *)t32);
    t66 = *((unsigned int *)t63);
    t67 = (t65 & t66);
    *((unsigned int *)t64) = t67;
    t68 = (t32 + 4);
    t69 = (t63 + 4);
    t70 = (t64 + 4);
    t71 = *((unsigned int *)t68);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB46;

LAB47:
LAB48:    t96 = (t64 + 4);
    t97 = *((unsigned int *)t96);
    t98 = (~(t97));
    t99 = *((unsigned int *)t64);
    t100 = (t99 & t98);
    t101 = (t100 != 0);
    if (t101 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(260, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB55;

LAB52:    if (t16 != 0)
        goto LAB54;

LAB53:    *((unsigned int *)t4) = 1;

LAB55:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(261, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 6408);
    t19 = (t6 + 56U);
    t20 = *((char **)t19);
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t20, 32);
    xsi_vlogfile_write(1, 0, 0, ng46, 2, t0, (char)119, t4, 32);

LAB58:
LAB51:    xsi_set_current_line(262, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB62;

LAB59:    if (t16 != 0)
        goto LAB61;

LAB60:    *((unsigned int *)t4) = 1;

LAB62:    t27 = (t0 + 6568);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = ((char*)((ng6)));
    memset(t31, 0, 8);
    xsi_vlog_signed_equal(t31, 32, t29, 32, t30, 32);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t31);
    t23 = (t21 & t22);
    *((unsigned int *)t32) = t23;
    t33 = (t4 + 4);
    t34 = (t31 + 4);
    t35 = (t32 + 4);
    t24 = *((unsigned int *)t33);
    t25 = *((unsigned int *)t34);
    t36 = (t24 | t25);
    *((unsigned int *)t35) = t36;
    t37 = *((unsigned int *)t35);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB63;

LAB64:
LAB65:    t59 = (t32 + 4);
    t65 = *((unsigned int *)t59);
    t66 = (~(t65));
    t67 = *((unsigned int *)t32);
    t71 = (t67 & t66);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB66;

LAB67:    xsi_set_current_line(263, ng0);
    t2 = (t0 + 7208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng6)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t20 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t20);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t20);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB72;

LAB69:    if (t16 != 0)
        goto LAB71;

LAB70:    *((unsigned int *)t4) = 1;

LAB72:    t27 = (t4 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t4);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB73;

LAB74:    xsi_set_current_line(264, ng0);
    t2 = (t0 + 6568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 0, ng49, 2, t0, (char)119, t5, 32);

LAB75:
LAB68:    xsi_set_current_line(265, ng0);
    t2 = (t0 + 6888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 7048);
    t19 = (t6 + 56U);
    t20 = *((char **)t19);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t20);
    t9 = (t7 | t8);
    *((unsigned int *)t4) = t9;
    t26 = (t5 + 4);
    t27 = (t20 + 4);
    t28 = (t4 + 4);
    t10 = *((unsigned int *)t26);
    t11 = *((unsigned int *)t27);
    t12 = (t10 | t11);
    *((unsigned int *)t28) = t12;
    t13 = *((unsigned int *)t28);
    t14 = (t13 != 0);
    if (t14 == 1)
        goto LAB76;

LAB77:
LAB78:    t33 = (t0 + 7208);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    t39 = *((unsigned int *)t4);
    t40 = *((unsigned int *)t35);
    t43 = (t39 | t40);
    *((unsigned int *)t31) = t43;
    t41 = (t4 + 4);
    t42 = (t35 + 4);
    t59 = (t31 + 4);
    t44 = *((unsigned int *)t41);
    t45 = *((unsigned int *)t42);
    t46 = (t44 | t45);
    *((unsigned int *)t59) = t46;
    t47 = *((unsigned int *)t59);
    t48 = (t47 != 0);
    if (t48 == 1)
        goto LAB79;

LAB80:
LAB81:    t62 = ((char*)((ng6)));
    memset(t32, 0, 8);
    t68 = (t31 + 4);
    t69 = (t62 + 4);
    t72 = *((unsigned int *)t31);
    t73 = *((unsigned int *)t62);
    t74 = (t72 ^ t73);
    t75 = *((unsigned int *)t68);
    t76 = *((unsigned int *)t69);
    t77 = (t75 ^ t76);
    t80 = (t74 | t77);
    t81 = *((unsigned int *)t68);
    t82 = *((unsigned int *)t69);
    t83 = (t81 | t82);
    t84 = (~(t83));
    t85 = (t80 & t84);
    if (t85 != 0)
        goto LAB85;

LAB82:    if (t83 != 0)
        goto LAB84;

LAB83:    *((unsigned int *)t32) = 1;

LAB85:    t78 = (t32 + 4);
    t86 = *((unsigned int *)t78);
    t87 = (~(t86));
    t90 = *((unsigned int *)t32);
    t91 = (t90 & t87);
    t92 = (t91 != 0);
    if (t92 > 0)
        goto LAB86;

LAB87:
LAB88:    xsi_set_current_line(266, ng0);
    xsi_vlogfile_write(1, 0, 0, ng1, 1, t0);
    xsi_set_current_line(267, ng0);
    t2 = (t0 + 10416);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB21:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB22;

LAB23:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t4 + 4);
    t42 = (t31 + 4);
    t43 = *((unsigned int *)t4);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t31);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    t57 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t57 & t53);
    t58 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t58 & t54);
    goto LAB25;

LAB26:    t76 = *((unsigned int *)t64);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t64) = (t76 | t77);
    t78 = (t32 + 4);
    t79 = (t63 + 4);
    t80 = *((unsigned int *)t32);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (~(t82));
    t84 = *((unsigned int *)t63);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (~(t86));
    t88 = (t81 & t83);
    t89 = (t85 & t87);
    t90 = (~(t88));
    t91 = (~(t89));
    t92 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t92 & t90);
    t93 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t93 & t91);
    t94 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t94 & t90);
    t95 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t95 & t91);
    goto LAB28;

LAB29:    xsi_set_current_line(256, ng0);
    xsi_vlogfile_write(1, 0, 0, ng41, 1, t0);
    goto LAB31;

LAB34:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB35;

LAB36:    xsi_set_current_line(257, ng0);
    xsi_vlogfile_write(1, 0, 0, ng42, 1, t0);
    goto LAB38;

LAB41:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB42;

LAB43:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t4 + 4);
    t42 = (t31 + 4);
    t43 = *((unsigned int *)t4);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t31);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    t57 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t57 & t53);
    t58 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t58 & t54);
    goto LAB45;

LAB46:    t76 = *((unsigned int *)t64);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t64) = (t76 | t77);
    t78 = (t32 + 4);
    t79 = (t63 + 4);
    t80 = *((unsigned int *)t32);
    t81 = (~(t80));
    t82 = *((unsigned int *)t78);
    t83 = (~(t82));
    t84 = *((unsigned int *)t63);
    t85 = (~(t84));
    t86 = *((unsigned int *)t79);
    t87 = (~(t86));
    t88 = (t81 & t83);
    t89 = (t85 & t87);
    t90 = (~(t88));
    t91 = (~(t89));
    t92 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t92 & t90);
    t93 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t93 & t91);
    t94 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t94 & t90);
    t95 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t95 & t91);
    goto LAB48;

LAB49:    xsi_set_current_line(259, ng0);
    xsi_vlogfile_write(1, 0, 0, ng44, 1, t0);
    goto LAB51;

LAB54:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB55;

LAB56:    xsi_set_current_line(260, ng0);
    xsi_vlogfile_write(1, 0, 0, ng45, 1, t0);
    goto LAB58;

LAB61:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB62;

LAB63:    t39 = *((unsigned int *)t32);
    t40 = *((unsigned int *)t35);
    *((unsigned int *)t32) = (t39 | t40);
    t41 = (t4 + 4);
    t42 = (t31 + 4);
    t43 = *((unsigned int *)t4);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t31);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t55 & t53);
    t56 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t56 & t54);
    t57 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t57 & t53);
    t58 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t58 & t54);
    goto LAB65;

LAB66:    xsi_set_current_line(262, ng0);
    xsi_vlogfile_write(1, 0, 0, ng47, 1, t0);
    goto LAB68;

LAB71:    t26 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB72;

LAB73:    xsi_set_current_line(263, ng0);
    xsi_vlogfile_write(1, 0, 0, ng48, 1, t0);
    goto LAB75;

LAB76:    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t28);
    *((unsigned int *)t4) = (t15 | t16);
    t29 = (t5 + 4);
    t30 = (t20 + 4);
    t17 = *((unsigned int *)t29);
    t18 = (~(t17));
    t21 = *((unsigned int *)t5);
    t51 = (t21 & t18);
    t22 = *((unsigned int *)t30);
    t23 = (~(t22));
    t24 = *((unsigned int *)t20);
    t52 = (t24 & t23);
    t25 = (~(t51));
    t36 = (~(t52));
    t37 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t37 & t25);
    t38 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t38 & t36);
    goto LAB78;

LAB79:    t49 = *((unsigned int *)t31);
    t50 = *((unsigned int *)t59);
    *((unsigned int *)t31) = (t49 | t50);
    t60 = (t4 + 4);
    t61 = (t35 + 4);
    t53 = *((unsigned int *)t60);
    t54 = (~(t53));
    t55 = *((unsigned int *)t4);
    t88 = (t55 & t54);
    t56 = *((unsigned int *)t61);
    t57 = (~(t56));
    t58 = *((unsigned int *)t35);
    t89 = (t58 & t57);
    t65 = (~(t88));
    t66 = (~(t89));
    t67 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t67 & t65);
    t71 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t71 & t66);
    goto LAB81;

LAB84:    t70 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t70) = 1;
    goto LAB85;

LAB86:    xsi_set_current_line(265, ng0);
    xsi_vlogfile_write(1, 0, 0, ng50, 1, t0);
    goto LAB88;

LAB89:    xsi_set_current_line(267, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}


extern void work_m_00000000004287406139_0598316779_init()
{
	static char *pe[] = {(void *)Always_75_0,(void *)Initial_83_1,(void *)Initial_92_2,(void *)Always_105_3,(void *)Always_112_4,(void *)Always_124_5,(void *)Initial_139_6,(void *)Initial_185_7,(void *)Initial_220_8,(void *)Initial_241_9,(void *)Initial_250_10};
	xsi_register_didat("work_m_00000000004287406139_0598316779", "isim/testfixture_isim_beh.exe.sim/work/m_00000000004287406139_0598316779.didat");
	xsi_register_executes(pe);
}
