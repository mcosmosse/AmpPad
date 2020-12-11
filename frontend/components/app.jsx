import React from "react";
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import HomeContainer from "./home/home_container";
import Splash from "./splash/splash";

import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/routes_util";

const App = () => (
  <div>
    <h1>Wattpad clone</h1>
    <Switch>
        <AuthRoute exact path="/login" component={LoginContainer} />
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <ProtectedRoute exact path="/home" component={HomeContainer} />
        <AuthRoute path="/" component={Splash} />
    </Switch>
  </div>
);

export default App;