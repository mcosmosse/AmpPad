import React from "react";
import LoginContainer from "./session/login_container";
import SignupContainer from "./session/signup_container";
import HomeContainer from "./home/home_container";
import Splash from "./splash/splash";
import NavbarContainer from "./navbar/navbar_container";
import StoryShowContainer from "./story/story_show_container";
import ChapterShowContainer from "./chapter/chapter_show_container";
import EditStoryForm from "./story/edit_story_form_container";
import CreateStoryFormContainer from "./story/create_story_form_container";
import EditChapterFormContainer from "./chapter/edit_chapter_container";

import { Route, Redirect, Switch, Link, HashRouter } from "react-router-dom";
import { AuthRoute, ProtectedRoute } from "../utils/routes_util";

const App = () => (
  <div>
    <NavbarContainer />
    <div className='navbar-filler'></div>
    <Switch>
        <ProtectedRoute exact path="/stories/new" component={CreateStoryFormContainer} />
        <Route exact path="/stories/:storyId/:chapterId" component={ChapterShowContainer} />
        <Route exact path="/stories/:storyId" component={StoryShowContainer} /> 
        <Route exact path="/stories/:storyId/:chapterId/new" component={EditChapterFormContainer} />
        <ProtectedRoute path="/mystories/:storyId" component={EditStoryForm} />
        <AuthRoute exact path="/login" component={LoginContainer} />
        <AuthRoute exact path="/signup" component={SignupContainer} />
        <ProtectedRoute exact path="/home" component={HomeContainer} />
        <AuthRoute path="/" component={Splash} />
    </Switch>
  </div>
);

export default App;