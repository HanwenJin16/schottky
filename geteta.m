function eta = geteta(eVmp, SBH, meff, kT, Pin, h);
  
  eta =  eVmp^2 * 4*pi*meff*kT/h^3 * exp(-SBH/kT) * exp(eVmp/kT); # Eq 2 from Pulfrey
  eta /= Pin;
  printf("efficiency (in percent): %f \n",eta * 100);
  
endfunction;
