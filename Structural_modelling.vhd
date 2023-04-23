library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Exercise_3_d is
port(
A,B,C: in std_logic;
F: out std_logic
);
end Exercise_3_d;

architecture ex3d_arc of Exercise_3_d is
component and_gate is
port(
in1,in2:in std_logic;
out1:out std_logic
);
end component and_gate;

component not_gate is
port(
in1: in std_logic;
out1: out std_logic
);
end component not_gate;

component or_gate is
port(
in1,in2: in std_logic;
out1: out std_logic
);
end component or_gate;
--Internal signals 
signal notA,notC: std_logic;
signal sand1,sand2:std_logic;
begin
not1_out: not_gate port map(
in1=>A,
out1=> notA
);

not2_out: not_gate port map(
in1=>C,
out1=> notC
);

and1_out: and_gate port map(
in1=> notA,
in2=> notC,
out1 => sand1
);

and2_out: and_gate port map(
in1=>A,
in2=>B,
out1 => sand2
);

or1_out: or_gate port map(
in1=> sand1,
in2=> sand2,
out1=> F
);
end ex3d_arc;



--entity Exercise_3_c is
--port(
--A,B,C: in std_logic;
--F: out std_logic
--);

--end Exercise_3_c;

--architecture ex3c_arc of Exercise_3_c is
--component and_gate is
--port(
--in1,in2: in std_logic;
--out1: out std_logic
--);
--end component and_gate;

--component or_gate is
--port(
--in1,in2: in std_logic;
--out1: out std_logic
--);
--end component or_gate;
--component not_gate is
--port(
--in1: in std_logic;
--out1: out std_logic
--);
--end component not_gate;
----Internal Signals
--signal sand1,sand2: std_logic;
--signal notA,notB,notC: std_logic;

--begin
--Bnot: not_gate port map(
--in1=>B,
--out1=> notB
--);
--Cnot: not_gate port map(
--in1=>C,
--out1 => notC
--);
--and1_out:and_gate port map(
--in1=>A,
--in2=>C,
--out1 =>sand1
--);
--and2_out: and_gate port map(
--in1 => notC,
--in2 => notB,
--out1 => sand2
--);
--or1_out: or_gate port map(
--in1 => sand1,
--in2=> sand2,
--out1=> F
--);

--end ex3c_arc;



--entity Exercise_3_b is
--port(
--     A,B,C: in std_logic;
--     F: out std_logic;
--     dec_out: out std_logic_vector(7 downto 0)
--     );
--end Exercise_3_b;

--architecture ex3b_arc of Exercise_3_b is
--component Decoder_3_8 is
--port(
--     ins : in std_logic_vector(2 downto 0);
--     outs: out std_logic_vector(0 to 8)
--     );
--end component Decoder_3_8;

--component or_gate_4in
--port(
--     in1,in2,in3,in4: in std_logic;
--     out1: out std_logic
--     );
--end component or_gate_4in;

---- INTERNAL SIGNALS
--signal sout0,sout1,sout2,sout3: std_logic;
--signal ins: std_logic_vector(2 downto 0);

--begin
--dec: Decoder_3_8 port map(
--ins => ins,
--outs(0) => sout0,
--outs(1) => sout1,
--outs(2) => dec_out(2),
--outs(3) => sout2,
--outs(4) => sout3,
--outs(5) => dec_out(5),
--outs(6) => dec_out(6),
--outs(7) => dec_out(7)
--);
--or4: or_gate_4in port map(
--in1 =>sout0,
--in2 =>sout1,
--in3 =>sout2,
--in4 =>sout3,
--out1 => F
--);
--dec_out(0) <= sout0;
--dec_out(1) <= sout1;
--dec_out(3) <= sout2;
--dec_out(4) <= sout3;

--ins <= A&B&C;

--end ex3b_arc;



--entity Exercise_3_a is
--Port (
--      A,B,C :in std_logic;
--      F: out std_logic
--      );
--end Exercise_3_a;


--architecture ex3a_arc of Exercise_3_a is
--component and_gate is
--port(
--     in1,in2 : in std_logic;
--     out1 : out std_logic
--     );
--end component and_gate;

--component not_gate is
--port(
--     in1: in std_logic;
--     out1: out std_logic
--     );
--end component not_gate;

--component or_gate is
--port(
--     in1,in2: in std_logic;
--     out1: out std_logic
--     );
--end component or_gate;

--signal and1out,and2out: std_logic;
--signal notA,notB,notC: std_logic;

--begin
--A_not: not_gate port map(
--                         in1 => A,
--                         out1 => notA
--                         );
--B_not: not_gate port map(
--                         in1 => B,
--                         out1 => notB
--                         );
--C_not: not_gate port map(
--                         in1 => C,
--                         out1 => notC
--                         );
--and1: and_gate port map (
--                         in1 => A,
--                         in2 => notB,
--                         out1 => and1out
--                         );
--and2: and_gate port map (
--                         in1 => notA,
--                         in2 => notC,
--                         out1 => and2out
--                         );
--or1: or_gate port map (
--                       in1 =>and1out,
--                       in2 =>and2out,
--                       out1 => F
--                       );
          
--end ex3a_arc;
