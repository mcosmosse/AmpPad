import React from "react";
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import HomeContainer from "./home/home_container";
import Splash from "./splash/splash";
import NavbarContainer from "./navbar/navbar_container";
import StoryShowContainer from "./story/story_show_container";

import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/routes_util";

const App = () => (
  <div>
    <NavbarContainer />
    <div className='navbar-filler'></div>
    <Switch>
        <Route path="/stories/:storyId" component={StoryShowContainer} />
        {/* <Route path="/stories/:storyId/:chapterNumber" component={ChapterShowContainer} */}
        <AuthRoute exact path="/login" component={LoginContainer} />
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <ProtectedRoute exact path="/home" component={HomeContainer} />
        <AuthRoute path="/" component={Splash} />
    </Switch>
  </div>
);

export default App;