library verilog;
use verilog.vl_types.all;
entity cycloneiii_pseudo_diff_out is
    generic(
        lpm_type        : string  := "cycloneiii_pseudo_diff_out"
    );
    port(
        i               : in     vl_logic;
        o               : out    vl_logic;
        obar            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneiii_pseudo_diff_out;
