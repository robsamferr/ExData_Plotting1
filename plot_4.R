source("load_hpc.R")

plot_4 <- function(plot4_df=NULL) {
    # Loading data from filtered subset
    if(is.null(plot4_df)) plot4_df <- load_hpc()

    # Invoke png graphic device to create image
    png("plot_4.png", width=480, height=480)

    # Set graphical device parameters as a vector of 2 x 2
    par(mfrow=c(2,2))
    # First Plot: Global Active Power
    plot(plot4_df$Time, plot4_df$Global_active_power, type="l", xlab="",
         ylab="Global Active Power")

    # Second Plot: Voltage
    plot(plot4_df$Time, plot4_df$Voltage, type="l", xlab="datetime", ylab="Voltage")
    
    # Third Plot: Sub metering consumption

    # Create Sub metering basic plot (Sub_metering_1)
    plot(plot4_df$Time, plot4_df$Sub_metering_1, type="l", col="black",
         xlab="", ylab="Energy sub metering")

    # Adding Sub metering 2 and 3 to plot
    lines(plot4_df$Time, plot4_df$Sub_metering_2, col="red")
    lines(plot4_df$Time, plot4_df$Sub_metering_3, col="blue")

    # Adding legend at the graphics' top right
    legend("topright", col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)

    # Fourth plot: Global reactive power
    plot(plot4_df$Time, plot4_df$Global_reactive_power, type="l",
         xlab="datetime", ylab="Global_reactive_power")
    lines(plot4_df$Time, plot4_df$Global_reactive_power)
    
    # Close graphics device
    dev.off()
}