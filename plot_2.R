source("load_hpc.R")

plot_2 <- function(plot2_df=NULL) {
    # Loading data from filtered subset
    if(is.null(plot2_df)) plot2_df <- load_hpc()

    # Invoke png graphic device to create image
    png("plot_2.png", width=480, height=480)
    
    # Create Global Active Power plot
    plot(plot2_df$Time, plot2_df$Global_active_power, type="l", xlab="",
         ylab="Global Active Power (kilowatts)")
    
    # Close graphics device
    dev.off()
}