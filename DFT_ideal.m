function [G1]=DFT_ideal(X,Y,Kx,Ky,S,delta_k)

    G2=zeros(length(X),length(Y));%define the Fourier series
    for kk=1:length(Y)
        for jj=1:length(X)
            for ii=1:length(Kx)
                for mm=1:length(Ky)

                    chi=Kx(ii)*X(jj)+Ky(mm)*Y(kk);
                    G2(jj,kk)=exp(-1i*2*pi*chi)*S(ii,mm)+G2(jj,kk);
                end
            end
        end
    end
        G1=(delta_k/(2*pi))^2.*G2;
end