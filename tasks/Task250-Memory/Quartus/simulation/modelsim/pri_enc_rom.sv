module pri_enc_rom (output logic [2:0] Y, input logic A, B, C);
reg [2:0] rom[7:0];
logic[2:0] inputs ;
initial 
begin 
	$readmemb("rom.txt", rom);
end
assign inputs = {A,B,C};
assign Y = rom[inputs];
endmodule
