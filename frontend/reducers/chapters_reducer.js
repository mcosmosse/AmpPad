import { RECEIVE_CHAPTER, RECEIVE_CHAPTERS, REMOVE_CHAPTER } from '../actions/chapter_actions';
import { RECEIVE_STORY } from '../actions/story_actions';

const chaptersReducer = (state = {}, action) => {
    Object.freeze(state);
    const newState = Object.assign({}, state);
    switch (action.type) {
        case RECEIVE_STORY:
            return action.payload.chapters != undefined ? action.payload.chapters : {} ;
        case RECEIVE_CHAPTER:
            newState[action.payload.chapter.id] = action.payload.chapter;
            // return { [action.chapter.id]: action.chapter };
            return newState;
            // i don't remember why i didn't return a new slice of state to remove the unnecessary chapters for the chapter form
            // now i remember it was for the link to the next chapter, use ownProps to search for correct chapter
        case RECEIVE_CHAPTERS:
            return action.chapters;
        case REMOVE_CHAPTER:
            delete newState[action.chapter.id];
            return newState;
        default:
            return state;
    }
}

export default chaptersReducer;