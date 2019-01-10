package com.app.log;

import java.io.IOException;
import java.util.logging.*;
public class MyLogger {
 private static final Logger LOGGER = Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
 
 public static Logger getLogger() throws SecurityException, IOException{
  FileHandler handler = new FileHandler("server.log");
  LOGGER.addHandler(handler);
  LOGGER.setLevel(Level.ALL);
  return LOGGER;
 }
}