import React from "react";
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";

import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom"

const App = () => (
  <div>
    <h1>Wattpad clone</h1>
    <LoginContainer />
    <SignupContainer />
  </div>
);

export default App;