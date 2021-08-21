module count_array #(
    parameter TOPIC_WIDTH=256,
    parameter TOPIC_LENGTH=TOPIC_WIDTH/8,
    parameter TOPIC_LENGTH_W=$clog2(TOPIC_LENGTH)
)(
    input [TOPIC_LENGTH-1:0] array,
    output logic [TOPIC_LENGTH_W-1:0] count
);

always_comb begin
    count=0;
    for(int i =0; i <TOPIC_LENGTH; i++) begin
        count += array[i];
    end
end

endmodule