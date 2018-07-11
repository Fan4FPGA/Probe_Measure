library verilog;
use verilog.vl_types.all;
entity cycloneiii_apfcontroller is
    generic(
        lpm_type        : string  := "cycloneiii_apfcontroller"
    );
    port(
        usermode        : out    vl_logic;
        nceout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneiii_apfcontroller;
