import { RECEIVE_STORY, RECEIVE_STORIES, REMOVE_STORY } from '../actions/story_actions';

const storiesReducer = (state = {}, action) => {
    Object.freeze(state);
    const newState = Object.assign({}, state);
    switch (action.type) {
        case RECEIVE_STORY:
            newState[action.payload.story.id] = action.payload.story;
            return newState;
        case RECEIVE_STORIES:
            return action.stories
        case REMOVE_STORY:
            delete newState[action.story.id];
            return newState;
        default:
            return state;
    }
}

export default storiesReducer;