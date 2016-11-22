module contador_crescente_decrescente_1(input logic clock, reset, output logic[3:0] saida);
    logic sentido;
    always @(posedge clock or posedge reset)
        if(reset) begin
            saida = 4'd0;
            sentido = 1'b0;
        end
        else begin
            if(sentido)
                saida = saida - 4'd1;
            else
                saida = saida + 4'd1;
          	if(saida == 4'd15 || saida == 4'd0)
                sentido = ~sentido;
        end
endmodule