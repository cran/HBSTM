

##################################################################################################################
####################################      Auxiliar functions     #################################################
##################################################################################################################


SpatC.creation=function(S,cols,rows,lengthSpatPar,dirs){
	Matdirs=paste("Mat",dirs,sep="")

	spatmat=new(Class="SpatC")
	for(j in 1:length(Matdirs)){
		if(Matdirs[j]=="Matalpha"){
			for(i in 1:lengthSpatPar[j]){
				aux2=rep(1,S-(cols*i))
				spatmat[Matdirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=c(-cols*i,cols*i),val=list(aux2,aux2))==1)
			}		
		}
		if(Matdirs[j]=="Matbeta"){
			for(i in 1:lengthSpatPar[j]){	
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0
				aux2=c(rep(aux,(rows-1)),aux[aux==1])
				spatmat[Matdirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=c(-i,i),val=list(aux2,aux2))==1)
			}			
		}
		if(Matdirs[j]=="Matphi"){
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0	
				aux2=c(rep(aux,rows-i-1),aux[aux==1])
				spatmat[Matdirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=c(-(cols*i+i),(cols*i+i)),val=list(aux2,aux2))==1)
			}		
		}
		if(Matdirs[j]=="Mattheta"){
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[1:i]=0	
				aux2=c(rep(aux,rows-i),aux[aux==0])
				spatmat[Matdirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=c(-(cols*i-i),(cols*i-i)),val=list(aux2,aux2))==1)
			}		
		}
	}
	return(spatmat)
}

SpatH.creation=function(S,cols,rows,lengthSpatPar,dirs){
	spatmat=new(Class="SpatH")
	for(j in 1:length(dirs)){
		if(dirs[j]=="east"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0
				aux2=c(rep(aux,(rows-1)),aux[aux==1])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=-i,val=list(aux2))==1)
			}
		}
		if(dirs[j]=="west"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0
				aux2=c(rep(aux,(rows-1)),aux[aux==1])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=i,val=list(aux2))==1)	
			}
		}
		if(dirs[j]=="north"){	
			for(i in 1:lengthSpatPar[j]){
				aux2=rep(1,S-(cols*i))
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=-cols*i,val=list(aux2))==1)
			}
		}
		if(dirs[j]=="south"){	
			for(i in 1:lengthSpatPar[j]){
				aux2=rep(1,S-(cols*i))
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=cols*i,val=list(aux2))==1)		
			}
		}
		if(dirs[j]=="southeast"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0	
				aux2=c(rep(aux,rows-i-1),aux[aux==1])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=-(cols*i+i),val=list(aux2))==1)
			}
		}
		if(dirs[j]=="northwest"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[(cols-i+1):cols]=0	
				aux2=c(rep(aux,rows-i-1),aux[aux==1])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=(cols*i+i),val=list(aux2))==1)
			}		
		}
		
		if(dirs[j]=="southwest"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[1:i]=0	
				aux2=c(rep(aux,rows-i),aux[aux==0])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=-(cols*i-i),val=list(aux2))==1)
			}
		}
		if(dirs[j]=="northeast"){	
			for(i in 1:lengthSpatPar[j]){
				aux=rep(1,cols)
				aux[1:i]=0	
				aux2=c(rep(aux,rows-i),aux[aux==0])
				spatmat[dirs[j]][[i]]=which(indiag(m=matrix(0,ncol=S,nrow=S),pos=(cols*i-i),val=list(aux2))==1)		
			}
		}
		
	}
	return(spatmat)
}


CosSinMatrix.creation=function(S,T,seas){	
	aux=list(NULL)
	for(i in 1:length(seas)){
		aux[[i]]=new(Class="CosSinMatrix",cosMat=matrix(cos((2*pi/seas[i])*c(1:T)),ncol=T,nrow=S,byrow=TRUE),sinMat=matrix(sin((2*pi/seas[i])*c(1:T)),ncol=T,nrow=S,byrow=TRUE),
			littlecosMat=matrix(cos((2*pi/seas[i])*c(1:T)),ncol=3,nrow=T),littlesinMat=matrix(sin((2*pi/seas[i])*c(1:T)),ncol=3,nrow=T))
	}
	return(new(Class="MtAux",seas=aux))
}	



indiag=function(m,pos,val){
	for (k in 1:length(pos)){
		i=abs(pos[k])+c(1:(dim(m)[1]-abs(pos[k])))
		j=c(1:(dim(m)[1]-abs(pos[k])))
		if(pos[k]<0){
			m=t(m)
			if(!is.null(dim(m[i,j]))){
				diag(m[i,j])=val[[k]]
			}else{
				m[i,j]=val[[k]]
			}		
			m=t(m)
		}else{
			if(!is.null(dim(m[i,j]))){
				diag(m[i,j])=val[[k]]
			}else{
				m[i,j]=val[[k]]
			}
		}
	}
	return(m)
}

CmatCreation=function(spatParam,SpatC){
	Cmat=matrix(0,ncol=dim(spatParam["Cmat"])[1],nrow=dim(spatParam["Cmat"])[1])
	for(j in spatParam["dirs"]){
		for(i in 1:length(spatParam[j])){
			Cmat[SpatC[paste("Mat",j,sep="")][[i]]]=spatParam[j][i]
		}
	}
	return(Cmat)	
}


findInter=function(CMuA,pos){
	inter=min(c(abs(min((1-rowSums(abs(CMuA)))/pos)),1))
	return(c(-inter,inter))	
}

MHSpat=function(media,media0,invtau2,alpha0,sigalpha0,namedir,spatParam,spatParam0,MatABPT){
	Niter=1000
	Miniter=100
	
	ident=diag(rep(1,dim(spatParam["Cmat"])[1]))
	restaMedia=matrix(c(media-media0),nrow=dim(ident)[1],ncol=dim(ident)[1],byrow=TRUE)
	AuxMat=AuxMat2=matrix(0,ncol=dim(spatParam["Cmat"])[1],nrow=dim(spatParam["Cmat"])[1])
	dirs=spatParam["dirs"][spatParam["dirs"]!=namedir]
	auxSum=auxRest=media-media0
	if(!is.null(dirs)){
		for(j in dirs){
			auxSum=auxSum-rowSums(apply(as.matrix(1:length(spatParam[j])),1,function(el){
				AuxMat2[MatABPT[paste("Mat",j,sep="")][[el]]]=1
				rowSums(spatParam[j][el]*(restaMedia*AuxMat2))
			}))	
		}
	}
	Alpha=spatParam[namedir]
	Matdir=paste("Mat",namedir,sep="")
	for(j in 1:length(Alpha)){
		AuxMat[MatABPT[Matdir][[j]]]=1	
		alphavect=rep(NA,Niter)
		aux21=rowSums(restaMedia*AuxMat)
		aux1=sum(aux21^2)
		aux1=1/(aux1*invtau2+1/sigalpha0)
		auxAlpha=-Alpha[j]*aux21+rowSums(apply(as.matrix(1:length(Alpha)),1,function(el){
			AuxMat2[MatABPT[Matdir][[el]]]=1
			rowSums(Alpha[el]*(restaMedia*AuxMat2))
		}))
	
		aux2=sum(aux21*(auxSum-auxAlpha))
		aux2=aux2+alpha0/sigalpha0      
		alphapseudoMean=aux1*aux2
		alphapseudoDesv=sqrt(aux1)

		Alpha[j]=0
		spatParam[namedir]=Alpha
		CMuA=CmatCreation(spatParam=spatParam,SpatC=MatABPT)
		pos=rowSums(AuxMat)
		finalinterval=findInter(CMuA=CMuA,pos=pos)
		
		inverseMat=1/sqrt(det(solve(ident-spatParam["Cmat"])))
		partfix=t(auxRest)%*%(ident-spatParam["Cmat"])%*%(auxRest)*invtau2

		alphavect[1]=rtnorm(1,alpha0,sigalpha0,lower=finalinterval[1], upper=finalinterval[2])	
        alphapseudo=rtnorm(length(alphavect)-1,alphapseudoMean,alphapseudoDesv,lower=finalinterval[1], upper=finalinterval[2])    
        for(el in 2:length(alphavect)){
                halpha0=inverseMat*exp(-1/2*(partfix+((alphavect[el-1]-alpha0)^2)*1/sigalpha0))
				halpha=inverseMat*exp(-1/2*(partfix+((alphapseudo[el-1]-alpha0)^2)*1/sigalpha0))

                if(runif(1)<=min(1,halpha*alphavect[el-1]/(halpha0*alphapseudo[el-1]))){
                        alphavect[el]=alphapseudo[el-1]
                }else{
                        alphavect[el]=alphavect[el-1]
                }
        }
		Alpha[j]=mean(alphavect[Miniter:Niter])
		AuxMat[MatABPT[Matdir][[j]]]=0
		spatParam[namedir]=Alpha
		spatParam["Cmat"][MatABPT[Matdir][[j]]]=Alpha[j]
	}
	return(Alpha)
}


