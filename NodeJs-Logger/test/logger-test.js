import winston from "winston";

    const logger = winston.createLogger({});

    logger.log({
        level: "info",
        message: "Hello Logger"
    });
