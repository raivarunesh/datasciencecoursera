pollutantmean<-function(directory="specdata",pollutant,id =1:332){
						x<-list.files(directory,patter="*.csv",full.names=TRUE)
						dataframe<-data.frame()
						for(i in id)
							{
							 data<-read.csv(x[i],sep=",",header=TRUE)
							 dataframe<-rbind(dataframe,data)
							}
							mean(dataframe[,pollutant],na.rm=TRUE)
}