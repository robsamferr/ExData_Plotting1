load_hpc <- function() {
    # Reading data from household power consumption dataset
    # First two columns as character and the next 7 columns as numeric values
    hpc_df <- read.table("household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character", "character", rep("numeric",7)), na="?")
    # Converting date and time values from character to date/time
    hpc_df$Time <- strptime(paste(hpc_df$Date, hpc_df$Time), "%d/%m/%Y %H:%M:%S")
    hpc_df$Date <- as.Date(hpc_df$Date, "%d/%m/%Y")
    # Subsetting data from dates: 2007-02-01 and 2007-02-02
    hpc_sub <- subset(hpc_df, Date %in% as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d"))
    return(hpc_sub)
}