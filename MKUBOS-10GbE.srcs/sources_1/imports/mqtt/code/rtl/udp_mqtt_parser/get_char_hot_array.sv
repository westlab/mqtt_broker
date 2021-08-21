module get_char_hot_array #(
    parameter TOPIC_WIDTH=256,
    parameter TOPIC_LENGTH=(TOPIC_WIDTH/8)
)(
    input [TOPIC_WIDTH-1:0] topic,
    input [7:0]             character,
    output logic [TOPIC_LENGTH-1:0] char_hot_array
);

always_comb begin
    for(int i = 0; i  < TOPIC_LENGTH; i++) begin
        char_hot_array[i] = (topic[i*8 +: 8] == character);
    end
end

endmodule