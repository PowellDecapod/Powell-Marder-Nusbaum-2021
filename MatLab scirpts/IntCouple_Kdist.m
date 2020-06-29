function [k] = IntCouple_Kdist(PyloricCP,GastricCP)
%Takes a series of paired pyloric cycle periods (means) and gastric mill  
%cycle periods and computes difference between the real slope (k_real) and
%the theoretical slope (slope like without biological noise Nadim 1998)
%(k_theory), and finds the difference between them.

k_real = (GastricCP./PyloricCP);
k_theory = round(GastricCP./PyloricCP);
k = (k_real - k_theory);

end
