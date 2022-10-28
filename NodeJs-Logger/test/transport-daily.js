import DailyRotateFile from "winston-daily-rotate-file";
import TransportStream from "winston-transport" 

    class MyTransport extends TransportStream {
        constructor(option) {
            super(option);
        }

        log(info, next) {
            console.log(`${new Date()} : ${info.level.toUpperCase()} : ${info.message}`);
            next();
        }
    }

    