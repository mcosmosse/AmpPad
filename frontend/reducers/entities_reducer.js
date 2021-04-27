import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import storiesReducer from './stories_reducer';
import chaptersReducer from './chapters_reducer';
import commentsReducer from './comments_reducer';
import collectionsReducer from './collections_reducer';

const entitiesReducer = combineReducers({
    users: usersReducer,
    stories: storiesReducer,
    chapters: chaptersReducer,
    comments: commentsReducer,
    collections: collectionsReducer
});

export default entitiesReducer;