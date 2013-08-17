% plot curve for precision@ each k
function draw_curve( filename)
k_precision = generate_pairKP(filename);
plot(k_precision);
end

