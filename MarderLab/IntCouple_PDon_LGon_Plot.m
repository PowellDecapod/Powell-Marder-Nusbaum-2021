figure;
hold on;
plot(CabPK_932_40(:,2),CabPK_932_40(:,1),'k*','MarkerSize',5,'linewidth',3);
plot(CabPK_932_51(:,2),CabPK_932_51(:,1),'k+','MarkerSize',5,'linewidth',3);
plot(CabPK_932_56(:,2),CabPK_932_56(:,1),'kd','MarkerSize',5,'linewidth',3);
plot(CabPK_932_63(:,2),CabPK_932_63(:,1),'ks','MarkerSize',5,'linewidth',3);
plot(CabPK_932_67(:,2),CabPK_932_67(:,1),'kx','MarkerSize',5,'linewidth',3);
plot(CabPK_932_83(:,2),CabPK_932_83(:,1),'kp','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_40(:,2),CabPKCCAP_932_40(:,1),'b*','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_51(:,2),CabPKCCAP_932_51(:,1),'b+','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_56(:,2),CabPKCCAP_932_56(:,1),'bd','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_63(:,2),CabPKCCAP_932_63(:,1),'bs','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_67(:,2),CabPKCCAP_932_67(:,1),'bx','MarkerSize',5,'linewidth',3);
plot(CabPKCCAP_932_83(:,2),CabPKCCAP_932_83(:,1),'bp','MarkerSize',5,'linewidth',3);
plot(MCN_932_40(:,2),MCN_932_40(:,1),'g*','MarkerSize',5,'linewidth',3);
plot(MCN_932_51(:,2),MCN_932_51(:,1),'g+','MarkerSize',5,'linewidth',3);
plot(MCN_932_56(:,2),MCN_932_56(:,1),'gd','MarkerSize',5,'linewidth',3);
plot(MCN_932_63(:,2),MCN_932_63(:,1),'gs','MarkerSize',5,'linewidth',3);
plot(MCN_932_67(:,2),MCN_932_67(:,1),'gx','MarkerSize',5,'linewidth',3);
plot(MCN_932_83(:,2),MCN_932_83(:,1),'gp','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_40(:,2),MCNCCAP_932_40(:,1),'r*','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_51(:,2),MCNCCAP_932_51(:,1),'r+','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_56(:,2),MCNCCAP_932_56(:,1),'rd','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_63(:,2),MCNCCAP_932_63(:,1),'rs','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_67(:,2),MCNCCAP_932_67(:,1),'rx','MarkerSize',5,'linewidth',3);
plot(MCNCCAP_932_83(:,2),MCNCCAP_932_83(:,1),'rp','MarkerSize',5,'linewidth',3);
ylabel('Latency of PDon to LGon');
xlabel('PD Cycle Period (sec)');
X = [0:3];
Y = [0:3];
plot(X,Y,'k-');