import { RECEIVE_CHAPTER, RECEIVE_CHAPTERS, REMOVE_CHAPTER } from '../actions/chapter_actions';

const chaptersReducer = (state = {}, action) => {
    Object.freeze(state);
    const newState = Object.assign({}, state);
    switch (action.type) {
        case RECEIVE_CHAPTER:
            newState[action.chapter.id] = action.chapter;
            return newState;
        case RECEIVE_CHAPTERS:
            return action.chapters
        case REMOVE_CHAPTER:
            delete newState[action.chapter.id];
            return newState;
        default:
            return state;
    }
}

export default chaptersReducer;