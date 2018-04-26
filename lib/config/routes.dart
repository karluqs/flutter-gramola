import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:gramola/config/route_handlers.dart';

class Routes {

  static String root = "/";
  static String events = "/events";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
    });
    router.define("/", handler: loginHandler);
    router.define("/events/:country/:city", handler: eventsRouteHandler);
    //router.define("/event/:event", handler: eventsRouteHandler);
  }
}