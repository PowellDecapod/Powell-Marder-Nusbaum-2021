All_Y = [CabPK_932_40(:,1);CabPK_932_51(:,1);CabPK_932_56(:,1);CabPK_932_63(:,1);CabPK_932_67(:,1);CabPK_932_83(:,1);
    CabPKCCAP_932_40(:,1);CabPKCCAP_932_51(:,1);CabPKCCAP_932_56(:,1);CabPKCCAP_932_63(:,1);CabPKCCAP_932_67(:,1);CabPKCCAP_932_83(:,1);
    MCN_932_40(:,1);MCN_932_51(:,1);MCN_932_56(:,1);MCN_932_63(:,1);MCN_932_67(:,1);MCN_932_83(:,1);
    MCNCCAP_932_40(:,1);MCNCCAP_932_51(:,1);MCNCCAP_932_56(:,1);MCNCCAP_932_63(:,1);MCNCCAP_932_67(:,1);MCNCCAP_932_83(:,1)];

All_X = [CabPK_932_40(:,2);CabPK_932_51(:,2);CabPK_932_56(:,2);CabPK_932_63(:,2);CabPK_932_67(:,2);CabPK_932_83(:,2);
    CabPKCCAP_932_40(:,2);CabPKCCAP_932_51(:,2);CabPKCCAP_932_56(:,2);CabPKCCAP_932_63(:,2);CabPKCCAP_932_67(:,2);CabPKCCAP_932_83(:,2);
    MCN_932_40(:,2);MCN_932_51(:,2);MCN_932_56(:,2);MCN_932_63(:,2);MCN_932_67(:,2);MCN_932_83(:,2);
    MCNCCAP_932_40(:,2);MCNCCAP_932_51(:,2);MCNCCAP_932_56(:,2);MCNCCAP_932_63(:,2);MCNCCAP_932_67(:,2);MCNCCAP_932_83(:,2)];
figure;
hold on;
axis([0 2 0 2]);
plot(All_X,All_Y,'ko');
plot(X,Y,'k-');
b1 = All_X\All_Y;
yCalc1 = b1*All_X;
plot(All_X,yCalc1);
X1 = [ones(length(All_X),1) All_X];
b = X1\All_Y;
yCalc2 = X1*b;
plot(All_X,yCalc2,'--');
Rsq1 = 1 - sum((All_Y - yCalc1).^2)/sum((All_Y - mean(All_Y)).^2);
Rsq2 = 1 - sum((All_Y - yCalc2).^2)/sum((All_Y - mean(All_Y)).^2);
SSresid = sum((All_Y - mean(All_Y)).^2);
SDresid = sqrt(SSresid/(length(All_Y)-2));
R = sum((All_X - mean(All_X)).*(All_Y - mean(All_Y)))/sqrt(sum((All_X - mean(All_X)).^2)*sum((All_Y - mean(All_Y)).^2));
fitslope_all = polyfit(All_X,All_Y,1); %fitslope_all(1) = slope of fit line; fitslope(2) = y-intercept of fit line


X = [0:2];
Y = [0:2];

Y_932_40 = [CabPK_932_40(:,1);CabPKCCAP_932_40(:,1);MCN_932_40(:,1);MCNCCAP_932_40(:,1)];
X_932_40 = [CabPK_932_40(:,2);CabPKCCAP_932_40(:,2);MCN_932_40(:,2);MCNCCAP_932_40(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_40(:,2),CabPK_932_40(:,1),'k^','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_40(:,2),CabPKCCAP_932_40(:,1),'b^','MarkerSize',5,'linewidth',1);
plot(MCN_932_40(:,2),MCN_932_40(:,1),'g^','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_40(:,2),MCNCCAP_932_40(:,1),'r^','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_40 = X_932_40\Y_932_40;
X1_932_40 = [ones(length(X_932_40),1) X_932_40];
b_932_40 = X1_932_40\Y_932_40;
YCalc_932_40 = X1_932_40*b_932_40;
plot(X_932_40,YCalc_932_40,'r-');
Rsq_932_40 = 1 - sum((Y_932_40 - YCalc_932_40).^2)/sum((Y_932_40 - mean(Y_932_40)).^2);
SSresid_932_40 = sum((Y_932_40 - mean(Y_932_40)).^2);
SDresid_932_40 = sqrt(SSresid_932_40/(length(Y_932_40)-2));
R_932_40 = sum((X_932_40 - mean(X_932_40)).*(Y_932_40 - mean(Y_932_40)))/sqrt(sum((X_932_40 - mean(X_932_40)).^2)*sum((Y_932_40 - mean(Y_932_40)).^2));
fitslope_932_40 = polyfit(X_932_40,Y_932_40,1);

Y_932_51 = [CabPK_932_51(:,1);CabPKCCAP_932_51(:,1);MCN_932_51(:,1);MCNCCAP_932_51(:,1)];
X_932_51 = [CabPK_932_51(:,2);CabPKCCAP_932_51(:,2);MCN_932_51(:,2);MCNCCAP_932_51(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_51(:,2),CabPK_932_51(:,1),'kh','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_51(:,2),CabPKCCAP_932_51(:,1),'bh','MarkerSize',5,'linewidth',1);
plot(MCN_932_51(:,2),MCN_932_51(:,1),'gh','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_51(:,2),MCNCCAP_932_51(:,1),'rh','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_51 = X_932_51\Y_932_51;
X1_932_51 = [ones(length(X_932_51),1) X_932_51];
b_932_51 = X1_932_51\Y_932_51;
YCalc_932_51 = X1_932_51*b_932_51;
plot(X_932_51,YCalc_932_51,'r-');
Rsq_932_51 = 1 - sum((Y_932_51 - YCalc_932_51).^2)/sum((Y_932_51 - mean(Y_932_51)).^2);
SSresid_932_51 = sum((Y_932_51 - mean(Y_932_51)).^2);
SDresid_932_51 = sqrt(SSresid_932_51/(length(Y_932_51)-2));
R_932_51 = sum((X_932_51 - mean(X_932_51)).*(Y_932_51 - mean(Y_932_51)))/sqrt(sum((X_932_51 - mean(X_932_51)).^2)*sum((Y_932_51 - mean(Y_932_51)).^2));
fitslope_932_51 = polyfit(X_932_51,Y_932_51,1);

Y_932_56 = [CabPK_932_56(:,1);CabPKCCAP_932_56(:,1);MCN_932_56(:,1);MCNCCAP_932_56(:,1)];
X_932_56 = [CabPK_932_56(:,2);CabPKCCAP_932_56(:,2);MCN_932_56(:,2);MCNCCAP_932_56(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_56(:,2),CabPK_932_56(:,1),'kd','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_56(:,2),CabPKCCAP_932_56(:,1),'bd','MarkerSize',5,'linewidth',1);
plot(MCN_932_56(:,2),MCN_932_56(:,1),'gd','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_56(:,2),MCNCCAP_932_56(:,1),'rd','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_56 = X_932_56\Y_932_56;
X1_932_56 = [ones(length(X_932_56),1) X_932_56];
b_932_56 = X1_932_56\Y_932_56;
YCalc_932_56 = X1_932_56*b_932_56;
plot(X_932_56,YCalc_932_56,'r-');
Rsq_932_56 = 1 - sum((Y_932_56 - YCalc_932_56).^2)/sum((Y_932_56 - mean(Y_932_56)).^2);
SSresid_932_56 = sum((Y_932_56 - mean(Y_932_56)).^2);
SDresid_932_56 = sqrt(SSresid_932_56/(length(Y_932_56)-2));
R_932_56 = sum((X_932_56 - mean(X_932_56)).*(Y_932_56 - mean(Y_932_56)))/sqrt(sum((X_932_56 - mean(X_932_56)).^2)*sum((Y_932_56 - mean(Y_932_56)).^2));
fitslope_932_56 = polyfit(X_932_56,Y_932_56,1);

Y_932_63 = [CabPK_932_63(:,1);CabPKCCAP_932_63(:,1);MCN_932_63(:,1);MCNCCAP_932_63(:,1)];
X_932_63 = [CabPK_932_63(:,2);CabPKCCAP_932_63(:,2);MCN_932_63(:,2);MCNCCAP_932_63(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_63(:,2),CabPK_932_63(:,1),'ks','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_63(:,2),CabPKCCAP_932_63(:,1),'bs','MarkerSize',5,'linewidth',1);
plot(MCN_932_63(:,2),MCN_932_63(:,1),'gs','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_63(:,2),MCNCCAP_932_63(:,1),'rs','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_63 = X_932_63\Y_932_63;
X1_932_63 = [ones(length(X_932_63),1) X_932_63];
b_932_63 = X1_932_63\Y_932_63;
YCalc_932_63 = X1_932_63*b_932_63;
plot(X_932_63,YCalc_932_63,'r-');
Rsq_932_63 = 1 - sum((Y_932_63 - YCalc_932_63).^2)/sum((Y_932_63 - mean(Y_932_63)).^2);
SSresid_932_63 = sum((Y_932_63 - mean(Y_932_63)).^2);
SDresid_932_63 = sqrt(SSresid_932_63/(length(Y_932_63)-2));
R_932_63 = sum((X_932_63 - mean(X_932_63)).*(Y_932_63 - mean(Y_932_63)))/sqrt(sum((X_932_63 - mean(X_932_63)).^2)*sum((Y_932_63 - mean(Y_932_63)).^2));
fitslope_932_63 = polyfit(X_932_63,Y_932_63,1);

Y_932_67 = [CabPK_932_67(:,1);CabPKCCAP_932_67(:,1);MCN_932_67(:,1);MCNCCAP_932_67(:,1)];
X_932_67 = [CabPK_932_67(:,2);CabPKCCAP_932_67(:,2);MCN_932_67(:,2);MCNCCAP_932_67(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_67(:,2),CabPK_932_67(:,1),'kx','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_67(:,2),CabPKCCAP_932_67(:,1),'bx','MarkerSize',5,'linewidth',1);
plot(MCN_932_67(:,2),MCN_932_67(:,1),'gx','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_67(:,2),MCNCCAP_932_67(:,1),'rx','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_67 = X_932_67\Y_932_67;
X1_932_67 = [ones(length(X_932_67),1) X_932_67];
b_932_67 = X1_932_67\Y_932_67;
YCalc_932_67 = X1_932_67*b_932_67;
plot(X_932_67,YCalc_932_67,'r-');
Rsq_932_67 = 1 - sum((Y_932_67 - YCalc_932_67).^2)/sum((Y_932_67 - mean(Y_932_67)).^2);
SSresid_932_67 = sum((Y_932_67 - mean(Y_932_67)).^2);
SDresid_932_67 = sqrt(SSresid_932_67/(length(Y_932_67)-2));
R_932_67 = sum((X_932_67 - mean(X_932_67)).*(Y_932_67 - mean(Y_932_67)))/sqrt(sum((X_932_67 - mean(X_932_67)).^2)*sum((Y_932_67 - mean(Y_932_67)).^2));
fitslope_932_67 = polyfit(X_932_67,Y_932_67,1);

Y_932_83 = [CabPK_932_83(:,1);CabPKCCAP_932_83(:,1);MCN_932_83(:,1);MCNCCAP_932_83(:,1)];
X_932_83 = [CabPK_932_83(:,2);CabPKCCAP_932_83(:,2);MCN_932_83(:,2);MCNCCAP_932_83(:,2)];

figure;
hold on;
axis([0 2 0 2]);
plot(CabPK_932_83(:,2),CabPK_932_83(:,1),'kp','MarkerSize',5,'linewidth',1);
plot(CabPKCCAP_932_83(:,2),CabPKCCAP_932_83(:,1),'bp','MarkerSize',5,'linewidth',1);
plot(MCN_932_83(:,2),MCN_932_83(:,1),'gp','MarkerSize',5,'linewidth',1);
plot(MCNCCAP_932_83(:,2),MCNCCAP_932_83(:,1),'rp','MarkerSize',5,'linewidth',1);
plot(X,Y,'k-');
b1_932_83 = X_932_83\Y_932_83;
X1_932_83 = [ones(length(X_932_83),1) X_932_83];
b_932_83 = X1_932_83\Y_932_83;
YCalc_932_83 = X1_932_83*b_932_83;
plot(X_932_83,YCalc_932_83,'r-');
Rsq_932_83 = 1 - sum((Y_932_83 - YCalc_932_83).^2)/sum((Y_932_83 - mean(Y_932_83)).^2);
SSresid_932_83 = sum((Y_932_83 - mean(Y_932_83)).^2);
SDresid_932_83 = sqrt(SSresid_932_83/(length(Y_932_83)-2));
R_932_83 = sum((X_932_83 - mean(X_932_83)).*(Y_932_83 - mean(Y_932_83)))/sqrt(sum((X_932_83 - mean(X_932_83)).^2)*sum((Y_932_83 - mean(Y_932_83)).^2));
fitslope_932_83 = polyfit(X_932_83,Y_932_83,1);