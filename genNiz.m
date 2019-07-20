%generise niz od Nsim 1 i 0 gde je verov0 verovatnoca pojavljivanja 0
function znac = genNiz(NSim,verov0)

znac = rand(1,NSim)>=verov0;
end


