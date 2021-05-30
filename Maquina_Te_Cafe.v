`timescale 1ns / 1ps

module tea_and_coffee_machine(
  input clk,
  input rst,
  input in, BCafe, BTe, TipoMoneda, SAgua, SCafe,
  output reg coffee,
  output reg tea,
  output reg change
);
  reg [4:0] Director;
  director[0] = SCafe;
  director[1] = SAgua;
  director[2] = TipoMoneda;
  director[3] = BTe;
  director[4] = BCafe;

  parameter idle = b'000;
  parameter EBoton = b'001;
  parameter Dev5 = b'100;
  parameter ServTe =b'101;
  parameter Dev5ServTe = b'110;
  parameter Dev10 = b'011;
  parameter ServCafe = b'010;
  parameter desconocido = b'111; //Creo que este se habia quedado en que no se necesitaba

  reg [2:0]estado_actual, estado_siguiente;

  always @(posedge clk)
  begin
    if(rst == 1)
      begin
        estado_actual = 000;
        estado_siguiente = 000;
        in = 0;
        BCafe = 0;
        BTe = 0;
      end
  else
    begin
      estado_actual = estado_siguiente;
      case(estado_actual)
        idle : if(in == 0)
            estado_siguiente =idle;

          end
        else if(in == 1)
          begin
            estado_siguiente = EBoton;
          end
        EBoton : if(director[4:3] == 2'b00 )
          begin
            //Si no entra moneda
          end
        else if(in == )
          begin
            //pasa a servir te
          end
        else if(in == )
          begin
            //pasa a devolver 5
          end
        else if(in == )
          begin
            //pasa a devolver 5 y servir te
          end
        else if(in == )
          begin
            //pasa a devolver 10
          end
        else if(in == )
          begin
            //pasa a servir cafe
          end
        Dev5 : if(in == )
          begin
            //
          end
        ServTe : if(in == )
          begin
            //servir
          end
        Dev5ServTe : if(in == )
          begin
            //
          end
        Dev10 : if(in == )
          begin
            //
          end
        ServCafe : if(in == )
          begin
            //
          end
        desconocido  : if(in == )
          begin
            //
          end



    end
  end




endmodule
