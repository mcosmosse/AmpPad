import * as Util from '../utils/story_util';

export const RECEIVE_STORY = "RECEIVE_STORY";
export const RECEIVE_STORIES = "RECEIVE_STORIES";
export const REMOVE_STORY = "REMOVE_STORY";

// regular actions

export const receiveStory = (story) => ({
    type: RECEIVE_STORY,
    story
});

export const receiveStories = (stories) => ({
    type: RECEIVE_STORIES,
    stories
});

export const removeStory = (story) => ({
    type: REMOVE_STORY,
    story
})

// thunk action creators

export const fetchStory = id => dispatch => (
    Util.fetchStory(id).then(story => (
        dispatch(receiveStory(story))
    ))
);

export const fetchStories = () => dispatch => (
    Util.fetchStories().then(stories => (
        dispatch(receiveStories(stories))
    ))
);

export const deleteStory = id => dispatch => (
    Util.removeStory(id).then(story => (
        dispatch(removeStory(story))
    ))
);

export const createStory = story => dispatch => (
    Util.createStory(story).then(newStory => (
        dispatch(receiveStory(newStory))
    ))
);

export const updateStory = story => dispatch => (
    Util.updateStory(story).then(newStory => (
        dispatch(receiveStory(newStory))
    ))
);