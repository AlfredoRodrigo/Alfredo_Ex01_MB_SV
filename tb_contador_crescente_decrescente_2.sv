module Testador2;
    logic clock, reset;
  	logic[3:0] saida;
    initial begin
        clock = 0;
        reset = 1;
        #10;
        reset = 0;
      	$display(saida);
      	repeat(133) begin
            if(clock)
              	$display(saida);
            clock = ~clock;
            #10;
        end
    end
  	contador_crescente_decrescente_2 ccd1(.clock(clock), .saida(saida), .reset(reset));
endmodule