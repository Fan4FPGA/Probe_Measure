library verilog;
use verilog.vl_types.all;
entity altmult_add is
    generic(
        width_a         : integer := 16;
        width_b         : integer := 16;
        width_result    : integer := 34;
        number_of_multipliers: integer := 1;
        lpm_type        : string  := "altmult_add";
        lpm_hint        : string  := "UNUSED";
        multiplier1_direction: string  := "UNUSED";
        multiplier3_direction: string  := "UNUSED";
        input_register_a0: string  := "CLOCK0";
        input_aclr_a0   : string  := "ACLR3";
        input_source_a0 : string  := "DATAA";
        input_register_a1: string  := "CLOCK0";
        input_aclr_a1   : string  := "ACLR3";
        input_source_a1 : string  := "DATAA";
        input_register_a2: string  := "CLOCK0";
        input_aclr_a2   : string  := "ACLR3";
        input_source_a2 : string  := "DATAA";
        input_register_a3: string  := "CLOCK0";
        input_aclr_a3   : string  := "ACLR3";
        input_source_a3 : string  := "DATAA";
        port_signa      : string  := "PORT_CONNECTIVITY";
        representation_a: string  := "UNSIGNED";
        signed_register_a: string  := "CLOCK0";
        signed_aclr_a   : string  := "ACLR3";
        signed_pipeline_register_a: string  := "CLOCK0";
        signed_pipeline_aclr_a: string  := "ACLR3";
        scanouta_register: string  := "UNREGISTERED";
        scanouta_aclr   : string  := "NONE";
        input_register_b0: string  := "CLOCK0";
        input_aclr_b0   : string  := "ACLR3";
        input_source_b0 : string  := "DATAB";
        input_register_b1: string  := "CLOCK0";
        input_aclr_b1   : string  := "ACLR3";
        input_source_b1 : string  := "DATAB";
        input_register_b2: string  := "CLOCK0";
        input_aclr_b2   : string  := "ACLR3";
        input_source_b2 : string  := "DATAB";
        input_register_b3: string  := "CLOCK0";
        input_aclr_b3   : string  := "ACLR3";
        input_source_b3 : string  := "DATAB";
        port_signb      : string  := "PORT_CONNECTIVITY";
        representation_b: string  := "UNSIGNED";
        signed_register_b: string  := "CLOCK0";
        signed_aclr_b   : string  := "ACLR3";
        signed_pipeline_register_b: string  := "CLOCK0";
        signed_pipeline_aclr_b: string  := "ACLR3";
        multiplier_register0: string  := "CLOCK0";
        multiplier_aclr0: string  := "ACLR3";
        multiplier_register1: string  := "CLOCK0";
        multiplier_aclr1: string  := "ACLR3";
        multiplier_register2: string  := "CLOCK0";
        multiplier_aclr2: string  := "ACLR3";
        multiplier_register3: string  := "CLOCK0";
        multiplier_aclr3: string  := "ACLR3";
        port_addnsub1   : string  := "PORT_CONNECTIVITY";
        addnsub_multiplier_register1: string  := "CLOCK0";
        addnsub_multiplier_aclr1: string  := "ACLR3";
        addnsub_multiplier_pipeline_register1: string  := "CLOCK0";
        addnsub_multiplier_pipeline_aclr1: string  := "ACLR3";
        port_addnsub3   : string  := "PORT_CONNECTIVITY";
        addnsub_multiplier_register3: string  := "CLOCK0";
        addnsub_multiplier_aclr3: string  := "ACLR3";
        addnsub_multiplier_pipeline_register3: string  := "CLOCK0";
        addnsub_multiplier_pipeline_aclr3: string  := "ACLR3";
        addnsub1_round_aclr: string  := "ACLR3";
        addnsub1_round_pipeline_aclr: string  := "ACLR3";
        addnsub1_round_register: string  := "CLOCK0";
        addnsub1_round_pipeline_register: string  := "CLOCK0";
        addnsub3_round_aclr: string  := "ACLR3";
        addnsub3_round_pipeline_aclr: string  := "ACLR3";
        addnsub3_round_register: string  := "CLOCK0";
        addnsub3_round_pipeline_register: string  := "CLOCK0";
        mult01_round_aclr: string  := "ACLR3";
        mult01_round_register: string  := "CLOCK0";
        mult01_saturation_register: string  := "CLOCK0";
        mult01_saturation_aclr: string  := "ACLR3";
        mult23_round_register: string  := "CLOCK0";
        mult23_round_aclr: string  := "ACLR3";
        mult23_saturation_register: string  := "CLOCK0";
        mult23_saturation_aclr: string  := "ACLR3";
        multiplier01_rounding: string  := "NO";
        multiplier01_saturation: string  := "NO";
        multiplier23_rounding: string  := "NO";
        multiplier23_saturation: string  := "NO";
        adder1_rounding : string  := "NO";
        adder3_rounding : string  := "NO";
        port_mult0_is_saturated: string  := "UNUSED";
        port_mult1_is_saturated: string  := "UNUSED";
        port_mult2_is_saturated: string  := "UNUSED";
        port_mult3_is_saturated: string  := "UNUSED";
        output_rounding : string  := "NO";
        output_round_type: string  := "NEAREST_INTEGER";
        width_msb       : integer := 17;
        output_round_register: string  := "UNREGISTERED";
        output_round_aclr: string  := "NONE";
        output_round_pipeline_register: string  := "UNREGISTERED";
        output_round_pipeline_aclr: string  := "NONE";
        chainout_rounding: string  := "NO";
        chainout_round_register: string  := "UNREGISTERED";
        chainout_round_aclr: string  := "NONE";
        chainout_round_pipeline_register: string  := "UNREGISTERED";
        chainout_round_pipeline_aclr: string  := "NONE";
        chainout_round_output_register: string  := "UNREGISTERED";
        chainout_round_output_aclr: string  := "NONE";
        port_output_is_overflow: string  := "PORT_UNUSED";
        port_chainout_sat_is_overflow: string  := "PORT_UNUSED";
        output_saturation: string  := "NO";
        output_saturate_type: string  := "ASYMMETRIC";
        width_saturate_sign: integer := 1;
        output_saturate_register: string  := "UNREGISTERED";
        output_saturate_aclr: string  := "NONE";
        output_saturate_pipeline_register: string  := "UNREGISTERED";
        output_saturate_pipeline_aclr: string  := "NONE";
        chainout_saturation: string  := "NO";
        chainout_saturate_register: string  := "UNREGISTERED";
        chainout_saturate_aclr: string  := "NONE";
        chainout_saturate_pipeline_register: string  := "UNREGISTERED";
        chainout_saturate_pipeline_aclr: string  := "NONE";
        chainout_saturate_output_register: string  := "UNREGISTERED";
        chainout_saturate_output_aclr: string  := "NONE";
        chainout_adder  : string  := "NO";
        chainout_register: string  := "UNREGISTERED";
        chainout_aclr   : string  := "ACLR3";
        width_chainin   : integer := 1;
        zero_chainout_output_register: string  := "UNREGISTERED";
        zero_chainout_output_aclr: string  := "NONE";
        shift_mode      : string  := "NO";
        rotate_aclr     : string  := "NONE";
        rotate_register : string  := "UNREGISTERED";
        rotate_pipeline_register: string  := "UNREGISTERED";
        rotate_pipeline_aclr: string  := "NONE";
        rotate_output_register: string  := "UNREGISTERED";
        rotate_output_aclr: string  := "NONE";
        shift_right_register: string  := "UNREGISTERED";
        shift_right_aclr: string  := "NONE";
        shift_right_pipeline_register: string  := "UNREGISTERED";
        shift_right_pipeline_aclr: string  := "NONE";
        shift_right_output_register: string  := "UNREGISTERED";
        shift_right_output_aclr: string  := "NONE";
        zero_loopback_register: string  := "UNREGISTERED";
        zero_loopback_aclr: string  := "NONE";
        zero_loopback_pipeline_register: string  := "UNREGISTERED";
        zero_loopback_pipeline_aclr: string  := "NONE";
        zero_loopback_output_register: string  := "UNREGISTERED";
        zero_loopback_output_aclr: string  := "NONE";
        accum_sload_register: string  := "UNREGISTERED";
        accum_sload_aclr: string  := "NONE";
        accum_sload_pipeline_register: string  := "UNREGISTERED";
        accum_sload_pipeline_aclr: string  := "NONE";
        accum_direction : string  := "ADD";
        accumulator     : string  := "NO";
        output_register : string  := "CLOCK0";
        output_aclr     : string  := "ACLR3";
        extra_latency   : integer := 0;
        dedicated_multiplier_circuitry: string  := "AUTO";
        dsp_block_balancing: string  := "AUTO";
        intended_device_family: string  := "Stratix";
        int_width_a     : vl_notype;
        int_width_b     : vl_notype;
        int_width_result: vl_notype;
        mult_b_pre_width: vl_notype;
        int_mult_diff_bit: vl_notype;
        int_mult_diff_bit_loopbk: vl_notype;
        sat_ini_value   : vl_notype;
        round_position  : vl_notype;
        chainout_round_position: vl_notype;
        saturation_position: vl_notype;
        chainout_saturation_position: vl_notype;
        result_msb_stxiii: vl_notype;
        result_msb      : vl_notype;
        shift_partition : vl_notype;
        shift_msb       : vl_notype;
        sat_msb         : vl_notype;
        chainout_sat_msb: vl_notype;
        chainout_input_a: vl_notype;
        chainout_input_b: vl_notype;
        mult_res_pad    : vl_notype;
        result_pad      : vl_notype;
        result_stxiii_pad: vl_notype;
        loopback_input_pad: vl_notype;
        loopback_lower_bound: vl_notype;
        accum_width     : vl_notype;
        feedback_width  : vl_notype;
        lower_range     : vl_notype;
        addsub1_clr     : vl_notype;
        addsub3_clr     : vl_notype;
        lsb_position    : vl_notype;
        extra_sign_bit_width: vl_notype;
        bit_position    : vl_notype
    );
    port(
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        scanina         : in     vl_logic_vector;
        scaninb         : in     vl_logic_vector;
        sourcea         : in     vl_logic_vector;
        sourceb         : in     vl_logic_vector;
        clock3          : in     vl_logic;
        clock2          : in     vl_logic;
        clock1          : in     vl_logic;
        clock0          : in     vl_logic;
        aclr3           : in     vl_logic;
        aclr2           : in     vl_logic;
        aclr1           : in     vl_logic;
        aclr0           : in     vl_logic;
        ena3            : in     vl_logic;
        ena2            : in     vl_logic;
        ena1            : in     vl_logic;
        ena0            : in     vl_logic;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        addnsub1        : in     vl_logic;
        addnsub3        : in     vl_logic;
        result          : out    vl_logic_vector;
        scanouta        : out    vl_logic_vector;
        scanoutb        : out    vl_logic_vector;
        mult01_round    : in     vl_logic;
        mult23_round    : in     vl_logic;
        mult01_saturation: in     vl_logic;
        mult23_saturation: in     vl_logic;
        addnsub1_round  : in     vl_logic;
        addnsub3_round  : in     vl_logic;
        mult0_is_saturated: out    vl_logic;
        mult1_is_saturated: out    vl_logic;
        mult2_is_saturated: out    vl_logic;
        mult3_is_saturated: out    vl_logic;
        output_round    : in     vl_logic;
        chainout_round  : in     vl_logic;
        output_saturate : in     vl_logic;
        chainout_saturate: in     vl_logic;
        overflow        : out    vl_logic;
        chainout_sat_overflow: out    vl_logic;
        chainin         : in     vl_logic_vector;
        zero_chainout   : in     vl_logic;
        rotate          : in     vl_logic;
        shift_right     : in     vl_logic;
        zero_loopback   : in     vl_logic;
        accum_sload     : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_a : constant is 1;
    attribute mti_svvh_generic_type of width_b : constant is 1;
    attribute mti_svvh_generic_type of width_result : constant is 1;
    attribute mti_svvh_generic_type of number_of_multipliers : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of lpm_hint : constant is 1;
    attribute mti_svvh_generic_type of multiplier1_direction : constant is 1;
    attribute mti_svvh_generic_type of multiplier3_direction : constant is 1;
    attribute mti_svvh_generic_type of input_register_a0 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_a0 : constant is 1;
    attribute mti_svvh_generic_type of input_source_a0 : constant is 1;
    attribute mti_svvh_generic_type of input_register_a1 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_a1 : constant is 1;
    attribute mti_svvh_generic_type of input_source_a1 : constant is 1;
    attribute mti_svvh_generic_type of input_register_a2 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_a2 : constant is 1;
    attribute mti_svvh_generic_type of input_source_a2 : constant is 1;
    attribute mti_svvh_generic_type of input_register_a3 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_a3 : constant is 1;
    attribute mti_svvh_generic_type of input_source_a3 : constant is 1;
    attribute mti_svvh_generic_type of port_signa : constant is 1;
    attribute mti_svvh_generic_type of representation_a : constant is 1;
    attribute mti_svvh_generic_type of signed_register_a : constant is 1;
    attribute mti_svvh_generic_type of signed_aclr_a : constant is 1;
    attribute mti_svvh_generic_type of signed_pipeline_register_a : constant is 1;
    attribute mti_svvh_generic_type of signed_pipeline_aclr_a : constant is 1;
    attribute mti_svvh_generic_type of scanouta_register : constant is 1;
    attribute mti_svvh_generic_type of scanouta_aclr : constant is 1;
    attribute mti_svvh_generic_type of input_register_b0 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_b0 : constant is 1;
    attribute mti_svvh_generic_type of input_source_b0 : constant is 1;
    attribute mti_svvh_generic_type of input_register_b1 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_b1 : constant is 1;
    attribute mti_svvh_generic_type of input_source_b1 : constant is 1;
    attribute mti_svvh_generic_type of input_register_b2 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_b2 : constant is 1;
    attribute mti_svvh_generic_type of input_source_b2 : constant is 1;
    attribute mti_svvh_generic_type of input_register_b3 : constant is 1;
    attribute mti_svvh_generic_type of input_aclr_b3 : constant is 1;
    attribute mti_svvh_generic_type of input_source_b3 : constant is 1;
    attribute mti_svvh_generic_type of port_signb : constant is 1;
    attribute mti_svvh_generic_type of representation_b : constant is 1;
    attribute mti_svvh_generic_type of signed_register_b : constant is 1;
    attribute mti_svvh_generic_type of signed_aclr_b : constant is 1;
    attribute mti_svvh_generic_type of signed_pipeline_register_b : constant is 1;
    attribute mti_svvh_generic_type of signed_pipeline_aclr_b : constant is 1;
    attribute mti_svvh_generic_type of multiplier_register0 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_aclr0 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_register1 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_aclr1 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_register2 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_aclr2 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_register3 : constant is 1;
    attribute mti_svvh_generic_type of multiplier_aclr3 : constant is 1;
    attribute mti_svvh_generic_type of port_addnsub1 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_register1 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_aclr1 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_pipeline_register1 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_pipeline_aclr1 : constant is 1;
    attribute mti_svvh_generic_type of port_addnsub3 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_register3 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_aclr3 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_pipeline_register3 : constant is 1;
    attribute mti_svvh_generic_type of addnsub_multiplier_pipeline_aclr3 : constant is 1;
    attribute mti_svvh_generic_type of addnsub1_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of addnsub1_round_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of addnsub1_round_register : constant is 1;
    attribute mti_svvh_generic_type of addnsub1_round_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of addnsub3_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of addnsub3_round_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of addnsub3_round_register : constant is 1;
    attribute mti_svvh_generic_type of addnsub3_round_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of mult01_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of mult01_round_register : constant is 1;
    attribute mti_svvh_generic_type of mult01_saturation_register : constant is 1;
    attribute mti_svvh_generic_type of mult01_saturation_aclr : constant is 1;
    attribute mti_svvh_generic_type of mult23_round_register : constant is 1;
    attribute mti_svvh_generic_type of mult23_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of mult23_saturation_register : constant is 1;
    attribute mti_svvh_generic_type of mult23_saturation_aclr : constant is 1;
    attribute mti_svvh_generic_type of multiplier01_rounding : constant is 1;
    attribute mti_svvh_generic_type of multiplier01_saturation : constant is 1;
    attribute mti_svvh_generic_type of multiplier23_rounding : constant is 1;
    attribute mti_svvh_generic_type of multiplier23_saturation : constant is 1;
    attribute mti_svvh_generic_type of adder1_rounding : constant is 1;
    attribute mti_svvh_generic_type of adder3_rounding : constant is 1;
    attribute mti_svvh_generic_type of port_mult0_is_saturated : constant is 1;
    attribute mti_svvh_generic_type of port_mult1_is_saturated : constant is 1;
    attribute mti_svvh_generic_type of port_mult2_is_saturated : constant is 1;
    attribute mti_svvh_generic_type of port_mult3_is_saturated : constant is 1;
    attribute mti_svvh_generic_type of output_rounding : constant is 1;
    attribute mti_svvh_generic_type of output_round_type : constant is 1;
    attribute mti_svvh_generic_type of width_msb : constant is 1;
    attribute mti_svvh_generic_type of output_round_register : constant is 1;
    attribute mti_svvh_generic_type of output_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of output_round_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of output_round_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_rounding : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_output_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_round_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of port_output_is_overflow : constant is 1;
    attribute mti_svvh_generic_type of port_chainout_sat_is_overflow : constant is 1;
    attribute mti_svvh_generic_type of output_saturation : constant is 1;
    attribute mti_svvh_generic_type of output_saturate_type : constant is 1;
    attribute mti_svvh_generic_type of width_saturate_sign : constant is 1;
    attribute mti_svvh_generic_type of output_saturate_register : constant is 1;
    attribute mti_svvh_generic_type of output_saturate_aclr : constant is 1;
    attribute mti_svvh_generic_type of output_saturate_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of output_saturate_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturation : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_output_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_saturate_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of chainout_adder : constant is 1;
    attribute mti_svvh_generic_type of chainout_register : constant is 1;
    attribute mti_svvh_generic_type of chainout_aclr : constant is 1;
    attribute mti_svvh_generic_type of width_chainin : constant is 1;
    attribute mti_svvh_generic_type of zero_chainout_output_register : constant is 1;
    attribute mti_svvh_generic_type of zero_chainout_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of shift_mode : constant is 1;
    attribute mti_svvh_generic_type of rotate_aclr : constant is 1;
    attribute mti_svvh_generic_type of rotate_register : constant is 1;
    attribute mti_svvh_generic_type of rotate_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of rotate_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of rotate_output_register : constant is 1;
    attribute mti_svvh_generic_type of rotate_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of shift_right_register : constant is 1;
    attribute mti_svvh_generic_type of shift_right_aclr : constant is 1;
    attribute mti_svvh_generic_type of shift_right_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of shift_right_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of shift_right_output_register : constant is 1;
    attribute mti_svvh_generic_type of shift_right_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_register : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_aclr : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_output_register : constant is 1;
    attribute mti_svvh_generic_type of zero_loopback_output_aclr : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_register : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_aclr : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_pipeline_register : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_pipeline_aclr : constant is 1;
    attribute mti_svvh_generic_type of accum_direction : constant is 1;
    attribute mti_svvh_generic_type of accumulator : constant is 1;
    attribute mti_svvh_generic_type of output_register : constant is 1;
    attribute mti_svvh_generic_type of output_aclr : constant is 1;
    attribute mti_svvh_generic_type of extra_latency : constant is 1;
    attribute mti_svvh_generic_type of dedicated_multiplier_circuitry : constant is 1;
    attribute mti_svvh_generic_type of dsp_block_balancing : constant is 1;
    attribute mti_svvh_generic_type of intended_device_family : constant is 1;
    attribute mti_svvh_generic_type of int_width_a : constant is 3;
    attribute mti_svvh_generic_type of int_width_b : constant is 3;
    attribute mti_svvh_generic_type of int_width_result : constant is 3;
    attribute mti_svvh_generic_type of mult_b_pre_width : constant is 3;
    attribute mti_svvh_generic_type of int_mult_diff_bit : constant is 3;
    attribute mti_svvh_generic_type of int_mult_diff_bit_loopbk : constant is 3;
    attribute mti_svvh_generic_type of sat_ini_value : constant is 3;
    attribute mti_svvh_generic_type of round_position : constant is 3;
    attribute mti_svvh_generic_type of chainout_round_position : constant is 3;
    attribute mti_svvh_generic_type of saturation_position : constant is 3;
    attribute mti_svvh_generic_type of chainout_saturation_position : constant is 3;
    attribute mti_svvh_generic_type of result_msb_stxiii : constant is 3;
    attribute mti_svvh_generic_type of result_msb : constant is 3;
    attribute mti_svvh_generic_type of shift_partition : constant is 3;
    attribute mti_svvh_generic_type of shift_msb : constant is 3;
    attribute mti_svvh_generic_type of sat_msb : constant is 3;
    attribute mti_svvh_generic_type of chainout_sat_msb : constant is 3;
    attribute mti_svvh_generic_type of chainout_input_a : constant is 3;
    attribute mti_svvh_generic_type of chainout_input_b : constant is 3;
    attribute mti_svvh_generic_type of mult_res_pad : constant is 3;
    attribute mti_svvh_generic_type of result_pad : constant is 3;
    attribute mti_svvh_generic_type of result_stxiii_pad : constant is 3;
    attribute mti_svvh_generic_type of loopback_input_pad : constant is 3;
    attribute mti_svvh_generic_type of loopback_lower_bound : constant is 3;
    attribute mti_svvh_generic_type of accum_width : constant is 3;
    attribute mti_svvh_generic_type of feedback_width : constant is 3;
    attribute mti_svvh_generic_type of lower_range : constant is 3;
    attribute mti_svvh_generic_type of addsub1_clr : constant is 3;
    attribute mti_svvh_generic_type of addsub3_clr : constant is 3;
    attribute mti_svvh_generic_type of lsb_position : constant is 3;
    attribute mti_svvh_generic_type of extra_sign_bit_width : constant is 3;
    attribute mti_svvh_generic_type of bit_position : constant is 3;
end altmult_add;
