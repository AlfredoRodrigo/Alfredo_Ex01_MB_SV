module Testador1;
    logic clock, reset;
  	logic[3:0] saida;
    initial begin
        clock = 0;
        reset = 1;
        #10;
        reset = 0;
      	$display(saida);
      	repeat(125) begin
            if(clock)
              	$display(saida);
            clock = ~clock;
            #10;
        end
    end
  	contador_crescente_decrescente_1 ccd1(.clock(clock), .saida(saida), .reset(reset));
endmodule