import winston from "winston";
    const logger = winston.createLogger({
        level: "info",
        transports: [
            new winston.transports.Console({})
        ]
    });

    logger.log({level: "error", message  : "Hello Error"});
    logger.log({level: "warn", message   : "Hello Warn"});
    logger.log({level: "info", message   : "Hello Info"});
    logger.log({level: "http", message   : "Hello HTTP"});
    logger.log({level: "verbose", message: "Hello Verbose"});
    logger.log({level: "debug", message  : "Hello Debug"});
    logger.log({level: "silly", message  : "Hello Silly"});
