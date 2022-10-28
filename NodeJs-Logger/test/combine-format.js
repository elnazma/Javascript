import winston from "winston";

    const logger = winston.createLogger({
        level: "info",
        formmat: winston.format.combine(
            winston.format.timestamp(),
            winston.format.ms(),
            winston.format.json()
        ),
        transports: [
            new winston.transports.Console({})
        ]
    });

    logger.info("Hello Format");
    logger.warn("Hello Format");
    logger.error("Hello Format");
