function Vmp = getVmp2(Ip, SBH, meff, kT, h, el);
  
  I0 =  4*pi*meff/h^3 * kT^2 * exp(-SBH / kT); # from Eqs 30 and 31 from di Bartolomeo

  xs = [-10 : 0.001 : 10]'; % x = eV/kT
  Nx = length(xs);
  f = (1 + xs) .* exp(xs) - (1 + Ip/I0); # solve Eq 3 from Pulfrey paper

  %# find f=0 points:
  prodf = f(1:Nx-1) .* f(2:Nx);
  [a,b] = min(prodf);
  xmin = ( xs(b) + xs(b+1) )/2;
  Vmp = kT/el * xmin;
  
  printf("Vmp (in V): %f \n", Vmp);
  
endfunction;
