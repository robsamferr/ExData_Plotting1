source("load_hpc.R")

plot_1 <- function(plot1_df=NULL) {
    # Loading data from filtered subset
    if(is.null(plot1_df)) plot1_df <- load_hpc()
    
    # Invoke png graphic device to create image
    png("plot_1.png", width=480, height=480)
    
    # Create Global Active Power histogram
    hist(plot1_df$Global_active_power, main="Global Active Power",
         xlab="Global Active Power (kilowatts)", ylab="Frequency",
         col="red")
    # Close graphics device
    dev.off()
}