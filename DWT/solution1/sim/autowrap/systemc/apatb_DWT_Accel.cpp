// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "DATA_A"
#define AUTOTB_TVIN_DATA_A  "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_A.dat"
#define AUTOTB_TVOUT_DATA_A  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_A.dat"
// wrapc file define: "DATA_B"
#define AUTOTB_TVIN_DATA_B  "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_B.dat"
#define AUTOTB_TVOUT_DATA_B  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_B.dat"
// wrapc file define: "DATA_C"
#define AUTOTB_TVOUT_DATA_C  "../tv/cdatafile/c.DWT_Accel.autotvout_DATA_C.dat"
#define AUTOTB_TVIN_DATA_C  "../tv/cdatafile/c.DWT_Accel.autotvin_DATA_C.dat"
// wrapc file define: "a_0"
#define AUTOTB_TVIN_a_0  "../tv/cdatafile/c.DWT_Accel.autotvin_a_0.dat"
// wrapc file define: "a_1"
#define AUTOTB_TVIN_a_1  "../tv/cdatafile/c.DWT_Accel.autotvin_a_1.dat"
// wrapc file define: "a_2"
#define AUTOTB_TVIN_a_2  "../tv/cdatafile/c.DWT_Accel.autotvin_a_2.dat"
// wrapc file define: "a_3"
#define AUTOTB_TVIN_a_3  "../tv/cdatafile/c.DWT_Accel.autotvin_a_3.dat"
// wrapc file define: "a_4"
#define AUTOTB_TVIN_a_4  "../tv/cdatafile/c.DWT_Accel.autotvin_a_4.dat"
// wrapc file define: "a_5"
#define AUTOTB_TVIN_a_5  "../tv/cdatafile/c.DWT_Accel.autotvin_a_5.dat"
// wrapc file define: "a_6"
#define AUTOTB_TVIN_a_6  "../tv/cdatafile/c.DWT_Accel.autotvin_a_6.dat"
// wrapc file define: "a_7"
#define AUTOTB_TVIN_a_7  "../tv/cdatafile/c.DWT_Accel.autotvin_a_7.dat"
// wrapc file define: "b_0"
#define AUTOTB_TVIN_b_0  "../tv/cdatafile/c.DWT_Accel.autotvin_b_0.dat"
// wrapc file define: "b_1"
#define AUTOTB_TVIN_b_1  "../tv/cdatafile/c.DWT_Accel.autotvin_b_1.dat"
// wrapc file define: "b_2"
#define AUTOTB_TVIN_b_2  "../tv/cdatafile/c.DWT_Accel.autotvin_b_2.dat"
// wrapc file define: "b_3"
#define AUTOTB_TVIN_b_3  "../tv/cdatafile/c.DWT_Accel.autotvin_b_3.dat"
// wrapc file define: "b_4"
#define AUTOTB_TVIN_b_4  "../tv/cdatafile/c.DWT_Accel.autotvin_b_4.dat"
// wrapc file define: "b_5"
#define AUTOTB_TVIN_b_5  "../tv/cdatafile/c.DWT_Accel.autotvin_b_5.dat"
// wrapc file define: "b_6"
#define AUTOTB_TVIN_b_6  "../tv/cdatafile/c.DWT_Accel.autotvin_b_6.dat"
// wrapc file define: "b_7"
#define AUTOTB_TVIN_b_7  "../tv/cdatafile/c.DWT_Accel.autotvin_b_7.dat"
// wrapc file define: "c_0"
#define AUTOTB_TVIN_c_0  "../tv/cdatafile/c.DWT_Accel.autotvin_c_0.dat"
// wrapc file define: "c_1"
#define AUTOTB_TVIN_c_1  "../tv/cdatafile/c.DWT_Accel.autotvin_c_1.dat"
// wrapc file define: "c_2"
#define AUTOTB_TVIN_c_2  "../tv/cdatafile/c.DWT_Accel.autotvin_c_2.dat"
// wrapc file define: "c_3"
#define AUTOTB_TVIN_c_3  "../tv/cdatafile/c.DWT_Accel.autotvin_c_3.dat"
// wrapc file define: "c_4"
#define AUTOTB_TVIN_c_4  "../tv/cdatafile/c.DWT_Accel.autotvin_c_4.dat"
// wrapc file define: "c_5"
#define AUTOTB_TVIN_c_5  "../tv/cdatafile/c.DWT_Accel.autotvin_c_5.dat"
// wrapc file define: "c_6"
#define AUTOTB_TVIN_c_6  "../tv/cdatafile/c.DWT_Accel.autotvin_c_6.dat"
// wrapc file define: "c_7"
#define AUTOTB_TVIN_c_7  "../tv/cdatafile/c.DWT_Accel.autotvin_c_7.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "DATA_A"
#define AUTOTB_TVOUT_PC_DATA_A  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_A.dat"
// tvout file define: "DATA_B"
#define AUTOTB_TVOUT_PC_DATA_B  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_B.dat"
// tvout file define: "DATA_C"
#define AUTOTB_TVOUT_PC_DATA_C  "../tv/rtldatafile/rtl.DWT_Accel.autotvout_DATA_C.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			DATA_A_depth = 0;
			DATA_B_depth = 0;
			DATA_C_depth = 0;
			a_0_depth = 0;
			a_1_depth = 0;
			a_2_depth = 0;
			a_3_depth = 0;
			a_4_depth = 0;
			a_5_depth = 0;
			a_6_depth = 0;
			a_7_depth = 0;
			b_0_depth = 0;
			b_1_depth = 0;
			b_2_depth = 0;
			b_3_depth = 0;
			b_4_depth = 0;
			b_5_depth = 0;
			b_6_depth = 0;
			b_7_depth = 0;
			c_0_depth = 0;
			c_1_depth = 0;
			c_2_depth = 0;
			c_3_depth = 0;
			c_4_depth = 0;
			c_5_depth = 0;
			c_6_depth = 0;
			c_7_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{DATA_A " << DATA_A_depth << "}\n";
			total_list << "{DATA_B " << DATA_B_depth << "}\n";
			total_list << "{DATA_C " << DATA_C_depth << "}\n";
			total_list << "{a_0 " << a_0_depth << "}\n";
			total_list << "{a_1 " << a_1_depth << "}\n";
			total_list << "{a_2 " << a_2_depth << "}\n";
			total_list << "{a_3 " << a_3_depth << "}\n";
			total_list << "{a_4 " << a_4_depth << "}\n";
			total_list << "{a_5 " << a_5_depth << "}\n";
			total_list << "{a_6 " << a_6_depth << "}\n";
			total_list << "{a_7 " << a_7_depth << "}\n";
			total_list << "{b_0 " << b_0_depth << "}\n";
			total_list << "{b_1 " << b_1_depth << "}\n";
			total_list << "{b_2 " << b_2_depth << "}\n";
			total_list << "{b_3 " << b_3_depth << "}\n";
			total_list << "{b_4 " << b_4_depth << "}\n";
			total_list << "{b_5 " << b_5_depth << "}\n";
			total_list << "{b_6 " << b_6_depth << "}\n";
			total_list << "{b_7 " << b_7_depth << "}\n";
			total_list << "{c_0 " << c_0_depth << "}\n";
			total_list << "{c_1 " << c_1_depth << "}\n";
			total_list << "{c_2 " << c_2_depth << "}\n";
			total_list << "{c_3 " << c_3_depth << "}\n";
			total_list << "{c_4 " << c_4_depth << "}\n";
			total_list << "{c_5 " << c_5_depth << "}\n";
			total_list << "{c_6 " << c_6_depth << "}\n";
			total_list << "{c_7 " << c_7_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int DATA_A_depth;
		int DATA_B_depth;
		int DATA_C_depth;
		int a_0_depth;
		int a_1_depth;
		int a_2_depth;
		int a_3_depth;
		int a_4_depth;
		int a_5_depth;
		int a_6_depth;
		int a_7_depth;
		int b_0_depth;
		int b_1_depth;
		int b_2_depth;
		int b_3_depth;
		int b_4_depth;
		int b_5_depth;
		int b_6_depth;
		int b_7_depth;
		int c_0_depth;
		int c_1_depth;
		int c_2_depth;
		int c_3_depth;
		int c_4_depth;
		int c_5_depth;
		int c_6_depth;
		int c_7_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void DWT_Accel (
char a[1][480][640],
char b[1][480][640],
char c[1][480][640]);

extern "C" void AESL_WRAP_DWT_Accel (
char a[1][480][640],
char b[1][480][640],
char c[1][480][640])
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "DATA_A"
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_A, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_A, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_DATA_A, AESL_token); // data

			sc_bv<8> *DATA_A_pc_buffer = new sc_bv<8>[307200];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_A', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_A', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					DATA_A_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_DATA_A, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_DATA_A))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: DATA_A
				{
					// bitslice(7, 0)
					// {
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: a(7, 0)
						// {
							sc_lv<8>* a_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_A_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: a(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : a[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : a[0][0][0]
										// output_left_conversion : a[i_0][i_1][i_2]
										// output_type_conversion : (a_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											a[i_0][i_1][i_2] = (a_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] DATA_A_pc_buffer;
		}

		// output port post check: "DATA_B"
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_B, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_B, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_DATA_B, AESL_token); // data

			sc_bv<8> *DATA_B_pc_buffer = new sc_bv<8>[307200];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_B', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_B', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					DATA_B_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_DATA_B, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_DATA_B))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: DATA_B
				{
					// bitslice(7, 0)
					// {
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: b(7, 0)
						// {
							sc_lv<8>* b_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_B_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: b(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : b[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : b[0][0][0]
										// output_left_conversion : b[i_0][i_1][i_2]
										// output_type_conversion : (b_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											b[i_0][i_1][i_2] = (b_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] DATA_B_pc_buffer;
		}

		// output port post check: "DATA_C"
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_C, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_DATA_C, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_DATA_C, AESL_token); // data

			sc_bv<8> *DATA_C_pc_buffer = new sc_bv<8>[307200];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_C', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'DATA_C', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					DATA_C_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_DATA_C, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_DATA_C))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: DATA_C
				{
					// bitslice(7, 0)
					// {
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
						// celement: c(7, 0)
						// {
							sc_lv<8>* c_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1 = new sc_lv<8>[307200];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index].range(7, 0) = sc_bv<8>(DATA_C_pc_buffer[hls_map_index].range(7, 0));
											hls_map_index++;
										}
									}
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (0) => (59) @ (1)
								for (int i_1 = 0; i_1 <= 59; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_0_59_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (60) => (119) @ (1)
								for (int i_1 = 60; i_1 <= 119; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_60_119_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (120) => (179) @ (1)
								for (int i_1 = 120; i_1 <= 179; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_120_179_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (180) => (239) @ (1)
								for (int i_1 = 180; i_1 <= 239; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_180_239_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (240) => (299) @ (1)
								for (int i_1 = 240; i_1 <= 299; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_240_299_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (300) => (359) @ (1)
								for (int i_1 = 300; i_1 <= 359; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_300_359_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (360) => (419) @ (1)
								for (int i_1 = 360; i_1 <= 419; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_360_419_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
						// celement: c(7, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// carray: (420) => (479) @ (1)
								for (int i_1 = 420; i_1 <= 479; i_1 += 1)
								{
									// carray: (0) => (639) @ (1)
									for (int i_2 = 0; i_2 <= 639; i_2 += 1)
									{
										// sub                    : i_0 i_1 i_2
										// ori_name               : c[i_0][i_1][i_2]
										// sub_1st_elem           : 0 0 0
										// ori_name_1st_elem      : c[0][0][0]
										// output_left_conversion : c[i_0][i_1][i_2]
										// output_type_conversion : (c_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64()
										if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
										{
											c[i_0][i_1][i_2] = (c_lv0_0_0_1_lv1_420_479_1_lv2_0_639_1[hls_map_index]).to_uint64();
											hls_map_index++;
										}
									}
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] DATA_C_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "DATA_A"
		char* tvin_DATA_A = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_DATA_A);
		char* tvout_DATA_A = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_DATA_A);

		// "DATA_B"
		char* tvin_DATA_B = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_DATA_B);
		char* tvout_DATA_B = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_DATA_B);

		// "DATA_C"
		char* tvin_DATA_C = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_DATA_C);
		char* tvout_DATA_C = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_DATA_C);

		// "a_0"
		char* tvin_a_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_0);

		// "a_1"
		char* tvin_a_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_1);

		// "a_2"
		char* tvin_a_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_2);

		// "a_3"
		char* tvin_a_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_3);

		// "a_4"
		char* tvin_a_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_4);

		// "a_5"
		char* tvin_a_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_5);

		// "a_6"
		char* tvin_a_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_6);

		// "a_7"
		char* tvin_a_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_a_7);

		// "b_0"
		char* tvin_b_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_0);

		// "b_1"
		char* tvin_b_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_1);

		// "b_2"
		char* tvin_b_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_2);

		// "b_3"
		char* tvin_b_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_3);

		// "b_4"
		char* tvin_b_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_4);

		// "b_5"
		char* tvin_b_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_5);

		// "b_6"
		char* tvin_b_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_6);

		// "b_7"
		char* tvin_b_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_b_7);

		// "c_0"
		char* tvin_c_0 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_0);

		// "c_1"
		char* tvin_c_1 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_1);

		// "c_2"
		char* tvin_c_2 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_2);

		// "c_3"
		char* tvin_c_3 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_3);

		// "c_4"
		char* tvin_c_4 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_4);

		// "c_5"
		char* tvin_c_5 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_5);

		// "c_6"
		char* tvin_c_6 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_6);

		// "c_7"
		char* tvin_c_7 = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_c_7);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_DATA_A, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_DATA_A, tvin_DATA_A);

		sc_bv<8>* DATA_A_tvin_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_A
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvin_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvin_DATA_A, "%s\n", (DATA_A_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_DATA_A, tvin_DATA_A);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_A_depth);
		sprintf(tvin_DATA_A, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_DATA_A, tvin_DATA_A);

		// release memory allocation
		delete [] DATA_A_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_DATA_B, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_DATA_B, tvin_DATA_B);

		sc_bv<8>* DATA_B_tvin_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_B
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvin_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvin_DATA_B, "%s\n", (DATA_B_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_DATA_B, tvin_DATA_B);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_B_depth);
		sprintf(tvin_DATA_B, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_DATA_B, tvin_DATA_B);

		// release memory allocation
		delete [] DATA_B_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_DATA_C, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_DATA_C, tvin_DATA_C);

		sc_bv<8>* DATA_C_tvin_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_C
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvin_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvin_DATA_C, "%s\n", (DATA_C_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_DATA_C, tvin_DATA_C);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_C_depth);
		sprintf(tvin_DATA_C, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_DATA_C, tvin_DATA_C);

		// release memory allocation
		delete [] DATA_C_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_a_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_0, tvin_a_0);

		sc_bv<32> a_0_tvin_wrapc_buffer;

		// RTL Name: a_0
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_0, "%s\n", (a_0_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_0, tvin_a_0);
		}

		tcl_file.set_num(1, &tcl_file.a_0_depth);
		sprintf(tvin_a_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_0, tvin_a_0);

		// [[transaction]]
		sprintf(tvin_a_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_1, tvin_a_1);

		sc_bv<32> a_1_tvin_wrapc_buffer;

		// RTL Name: a_1
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_1, "%s\n", (a_1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_1, tvin_a_1);
		}

		tcl_file.set_num(1, &tcl_file.a_1_depth);
		sprintf(tvin_a_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_1, tvin_a_1);

		// [[transaction]]
		sprintf(tvin_a_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_2, tvin_a_2);

		sc_bv<32> a_2_tvin_wrapc_buffer;

		// RTL Name: a_2
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_2, "%s\n", (a_2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_2, tvin_a_2);
		}

		tcl_file.set_num(1, &tcl_file.a_2_depth);
		sprintf(tvin_a_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_2, tvin_a_2);

		// [[transaction]]
		sprintf(tvin_a_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_3, tvin_a_3);

		sc_bv<32> a_3_tvin_wrapc_buffer;

		// RTL Name: a_3
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_3, "%s\n", (a_3_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_3, tvin_a_3);
		}

		tcl_file.set_num(1, &tcl_file.a_3_depth);
		sprintf(tvin_a_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_3, tvin_a_3);

		// [[transaction]]
		sprintf(tvin_a_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_4, tvin_a_4);

		sc_bv<32> a_4_tvin_wrapc_buffer;

		// RTL Name: a_4
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_4, "%s\n", (a_4_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_4, tvin_a_4);
		}

		tcl_file.set_num(1, &tcl_file.a_4_depth);
		sprintf(tvin_a_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_4, tvin_a_4);

		// [[transaction]]
		sprintf(tvin_a_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_5, tvin_a_5);

		sc_bv<32> a_5_tvin_wrapc_buffer;

		// RTL Name: a_5
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_5, "%s\n", (a_5_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_5, tvin_a_5);
		}

		tcl_file.set_num(1, &tcl_file.a_5_depth);
		sprintf(tvin_a_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_5, tvin_a_5);

		// [[transaction]]
		sprintf(tvin_a_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_6, tvin_a_6);

		sc_bv<32> a_6_tvin_wrapc_buffer;

		// RTL Name: a_6
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_6, "%s\n", (a_6_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_6, tvin_a_6);
		}

		tcl_file.set_num(1, &tcl_file.a_6_depth);
		sprintf(tvin_a_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_6, tvin_a_6);

		// [[transaction]]
		sprintf(tvin_a_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_a_7, tvin_a_7);

		sc_bv<32> a_7_tvin_wrapc_buffer;

		// RTL Name: a_7
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_a_7, "%s\n", (a_7_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_a_7, tvin_a_7);
		}

		tcl_file.set_num(1, &tcl_file.a_7_depth);
		sprintf(tvin_a_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_a_7, tvin_a_7);

		// [[transaction]]
		sprintf(tvin_b_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_0, tvin_b_0);

		sc_bv<32> b_0_tvin_wrapc_buffer;

		// RTL Name: b_0
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_0, "%s\n", (b_0_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_0, tvin_b_0);
		}

		tcl_file.set_num(1, &tcl_file.b_0_depth);
		sprintf(tvin_b_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_0, tvin_b_0);

		// [[transaction]]
		sprintf(tvin_b_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_1, tvin_b_1);

		sc_bv<32> b_1_tvin_wrapc_buffer;

		// RTL Name: b_1
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_1, "%s\n", (b_1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_1, tvin_b_1);
		}

		tcl_file.set_num(1, &tcl_file.b_1_depth);
		sprintf(tvin_b_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_1, tvin_b_1);

		// [[transaction]]
		sprintf(tvin_b_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_2, tvin_b_2);

		sc_bv<32> b_2_tvin_wrapc_buffer;

		// RTL Name: b_2
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_2, "%s\n", (b_2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_2, tvin_b_2);
		}

		tcl_file.set_num(1, &tcl_file.b_2_depth);
		sprintf(tvin_b_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_2, tvin_b_2);

		// [[transaction]]
		sprintf(tvin_b_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_3, tvin_b_3);

		sc_bv<32> b_3_tvin_wrapc_buffer;

		// RTL Name: b_3
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_3, "%s\n", (b_3_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_3, tvin_b_3);
		}

		tcl_file.set_num(1, &tcl_file.b_3_depth);
		sprintf(tvin_b_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_3, tvin_b_3);

		// [[transaction]]
		sprintf(tvin_b_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_4, tvin_b_4);

		sc_bv<32> b_4_tvin_wrapc_buffer;

		// RTL Name: b_4
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_4, "%s\n", (b_4_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_4, tvin_b_4);
		}

		tcl_file.set_num(1, &tcl_file.b_4_depth);
		sprintf(tvin_b_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_4, tvin_b_4);

		// [[transaction]]
		sprintf(tvin_b_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_5, tvin_b_5);

		sc_bv<32> b_5_tvin_wrapc_buffer;

		// RTL Name: b_5
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_5, "%s\n", (b_5_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_5, tvin_b_5);
		}

		tcl_file.set_num(1, &tcl_file.b_5_depth);
		sprintf(tvin_b_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_5, tvin_b_5);

		// [[transaction]]
		sprintf(tvin_b_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_6, tvin_b_6);

		sc_bv<32> b_6_tvin_wrapc_buffer;

		// RTL Name: b_6
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_6, "%s\n", (b_6_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_6, tvin_b_6);
		}

		tcl_file.set_num(1, &tcl_file.b_6_depth);
		sprintf(tvin_b_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_6, tvin_b_6);

		// [[transaction]]
		sprintf(tvin_b_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_b_7, tvin_b_7);

		sc_bv<32> b_7_tvin_wrapc_buffer;

		// RTL Name: b_7
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_b_7, "%s\n", (b_7_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_b_7, tvin_b_7);
		}

		tcl_file.set_num(1, &tcl_file.b_7_depth);
		sprintf(tvin_b_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_b_7, tvin_b_7);

		// [[transaction]]
		sprintf(tvin_c_0, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_0, tvin_c_0);

		sc_bv<32> c_0_tvin_wrapc_buffer;

		// RTL Name: c_0
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_0, "%s\n", (c_0_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_0, tvin_c_0);
		}

		tcl_file.set_num(1, &tcl_file.c_0_depth);
		sprintf(tvin_c_0, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_0, tvin_c_0);

		// [[transaction]]
		sprintf(tvin_c_1, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_1, tvin_c_1);

		sc_bv<32> c_1_tvin_wrapc_buffer;

		// RTL Name: c_1
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_1, "%s\n", (c_1_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_1, tvin_c_1);
		}

		tcl_file.set_num(1, &tcl_file.c_1_depth);
		sprintf(tvin_c_1, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_1, tvin_c_1);

		// [[transaction]]
		sprintf(tvin_c_2, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_2, tvin_c_2);

		sc_bv<32> c_2_tvin_wrapc_buffer;

		// RTL Name: c_2
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_2, "%s\n", (c_2_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_2, tvin_c_2);
		}

		tcl_file.set_num(1, &tcl_file.c_2_depth);
		sprintf(tvin_c_2, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_2, tvin_c_2);

		// [[transaction]]
		sprintf(tvin_c_3, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_3, tvin_c_3);

		sc_bv<32> c_3_tvin_wrapc_buffer;

		// RTL Name: c_3
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_3, "%s\n", (c_3_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_3, tvin_c_3);
		}

		tcl_file.set_num(1, &tcl_file.c_3_depth);
		sprintf(tvin_c_3, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_3, tvin_c_3);

		// [[transaction]]
		sprintf(tvin_c_4, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_4, tvin_c_4);

		sc_bv<32> c_4_tvin_wrapc_buffer;

		// RTL Name: c_4
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_4, "%s\n", (c_4_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_4, tvin_c_4);
		}

		tcl_file.set_num(1, &tcl_file.c_4_depth);
		sprintf(tvin_c_4, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_4, tvin_c_4);

		// [[transaction]]
		sprintf(tvin_c_5, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_5, tvin_c_5);

		sc_bv<32> c_5_tvin_wrapc_buffer;

		// RTL Name: c_5
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_5, "%s\n", (c_5_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_5, tvin_c_5);
		}

		tcl_file.set_num(1, &tcl_file.c_5_depth);
		sprintf(tvin_c_5, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_5, tvin_c_5);

		// [[transaction]]
		sprintf(tvin_c_6, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_6, tvin_c_6);

		sc_bv<32> c_6_tvin_wrapc_buffer;

		// RTL Name: c_6
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_6, "%s\n", (c_6_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_6, tvin_c_6);
		}

		tcl_file.set_num(1, &tcl_file.c_6_depth);
		sprintf(tvin_c_6, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_6, tvin_c_6);

		// [[transaction]]
		sprintf(tvin_c_7, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_c_7, tvin_c_7);

		sc_bv<32> c_7_tvin_wrapc_buffer;

		// RTL Name: c_7
		{
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_c_7, "%s\n", (c_7_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_c_7, tvin_c_7);
		}

		tcl_file.set_num(1, &tcl_file.c_7_depth);
		sprintf(tvin_c_7, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_c_7, tvin_c_7);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		DWT_Accel(a, b, c);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_DATA_A, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_DATA_A, tvout_DATA_A);

		sc_bv<8>* DATA_A_tvout_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_A
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: a(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : a[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : a[0][0][0]
								// regulate_c_name       : a
								// input_type_conversion : a[i_0][i_1][i_2]
								if (&(a[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> a_tmp_mem;
									a_tmp_mem = a[i_0][i_1][i_2];
									DATA_A_tvout_wrapc_buffer[hls_map_index].range(7, 0) = a_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvout_DATA_A, "%s\n", (DATA_A_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_DATA_A, tvout_DATA_A);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_A_depth);
		sprintf(tvout_DATA_A, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_DATA_A, tvout_DATA_A);

		// release memory allocation
		delete [] DATA_A_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_DATA_B, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_DATA_B, tvout_DATA_B);

		sc_bv<8>* DATA_B_tvout_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_B
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: b(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : b[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : b[0][0][0]
								// regulate_c_name       : b
								// input_type_conversion : b[i_0][i_1][i_2]
								if (&(b[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> b_tmp_mem;
									b_tmp_mem = b[i_0][i_1][i_2];
									DATA_B_tvout_wrapc_buffer[hls_map_index].range(7, 0) = b_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvout_DATA_B, "%s\n", (DATA_B_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_DATA_B, tvout_DATA_B);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_B_depth);
		sprintf(tvout_DATA_B, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_DATA_B, tvout_DATA_B);

		// release memory allocation
		delete [] DATA_B_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_DATA_C, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_DATA_C, tvout_DATA_C);

		sc_bv<8>* DATA_C_tvout_wrapc_buffer = new sc_bv<8>[307200];

		// RTL Name: DATA_C
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (0) => (59) @ (1)
						for (int i_1 = 0; i_1 <= 59; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (60) => (119) @ (1)
						for (int i_1 = 60; i_1 <= 119; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (120) => (179) @ (1)
						for (int i_1 = 120; i_1 <= 179; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (180) => (239) @ (1)
						for (int i_1 = 180; i_1 <= 239; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (240) => (299) @ (1)
						for (int i_1 = 240; i_1 <= 299; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (300) => (359) @ (1)
						for (int i_1 = 300; i_1 <= 359; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (360) => (419) @ (1)
						for (int i_1 = 360; i_1 <= 419; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
				// celement: c(7, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// carray: (420) => (479) @ (1)
						for (int i_1 = 420; i_1 <= 479; i_1 += 1)
						{
							// carray: (0) => (639) @ (1)
							for (int i_2 = 0; i_2 <= 639; i_2 += 1)
							{
								// sub                   : i_0 i_1 i_2
								// ori_name              : c[i_0][i_1][i_2]
								// sub_1st_elem          : 0 0 0
								// ori_name_1st_elem     : c[0][0][0]
								// regulate_c_name       : c
								// input_type_conversion : c[i_0][i_1][i_2]
								if (&(c[0][0][0]) != NULL) // check the null address if the c port is array or others
								{
									sc_lv<8> c_tmp_mem;
									c_tmp_mem = c[i_0][i_1][i_2];
									DATA_C_tvout_wrapc_buffer[hls_map_index].range(7, 0) = c_tmp_mem.range(7, 0);
                                 			       hls_map_index++;
								}
							}
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 307200; i++)
		{
			sprintf(tvout_DATA_C, "%s\n", (DATA_C_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_DATA_C, tvout_DATA_C);
		}

		tcl_file.set_num(307200, &tcl_file.DATA_C_depth);
		sprintf(tvout_DATA_C, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_DATA_C, tvout_DATA_C);

		// release memory allocation
		delete [] DATA_C_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "DATA_A"
		delete [] tvin_DATA_A;
		delete [] tvout_DATA_A;
		// release memory allocation: "DATA_B"
		delete [] tvin_DATA_B;
		delete [] tvout_DATA_B;
		// release memory allocation: "DATA_C"
		delete [] tvout_DATA_C;
		delete [] tvin_DATA_C;
		// release memory allocation: "a_0"
		delete [] tvin_a_0;
		// release memory allocation: "a_1"
		delete [] tvin_a_1;
		// release memory allocation: "a_2"
		delete [] tvin_a_2;
		// release memory allocation: "a_3"
		delete [] tvin_a_3;
		// release memory allocation: "a_4"
		delete [] tvin_a_4;
		// release memory allocation: "a_5"
		delete [] tvin_a_5;
		// release memory allocation: "a_6"
		delete [] tvin_a_6;
		// release memory allocation: "a_7"
		delete [] tvin_a_7;
		// release memory allocation: "b_0"
		delete [] tvin_b_0;
		// release memory allocation: "b_1"
		delete [] tvin_b_1;
		// release memory allocation: "b_2"
		delete [] tvin_b_2;
		// release memory allocation: "b_3"
		delete [] tvin_b_3;
		// release memory allocation: "b_4"
		delete [] tvin_b_4;
		// release memory allocation: "b_5"
		delete [] tvin_b_5;
		// release memory allocation: "b_6"
		delete [] tvin_b_6;
		// release memory allocation: "b_7"
		delete [] tvin_b_7;
		// release memory allocation: "c_0"
		delete [] tvin_c_0;
		// release memory allocation: "c_1"
		delete [] tvin_c_1;
		// release memory allocation: "c_2"
		delete [] tvin_c_2;
		// release memory allocation: "c_3"
		delete [] tvin_c_3;
		// release memory allocation: "c_4"
		delete [] tvin_c_4;
		// release memory allocation: "c_5"
		delete [] tvin_c_5;
		// release memory allocation: "c_6"
		delete [] tvin_c_6;
		// release memory allocation: "c_7"
		delete [] tvin_c_7;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}

