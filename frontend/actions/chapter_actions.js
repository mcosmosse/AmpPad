import * as Util from '../utils/story_util';

export const RECEIVE_CHAPTER = "RECEIVE_CHAPTER";
export const RECEIVE_CHAPTERS = "RECEIVE_CHAPTERS";
export const REMOVE_CHAPTER = "REMOVE_CHAPTER";

// regular actions

export const receiveChapter = (chapter) => ({
    type: RECEIVE_CHAPTER,
    chapter
});

export const receiveChapters = (chapters) => ({
    type: RECEIVE_CHAPTERS,
    chapters
});

export const removeChapter = (chapter) => ({
    type: REMOVE_CHAPTER,
    chapter
})

// thunk action creators

export const fetchChapter = id => dispatch => (
    Util.fetchChapter(id).then(chapter => (
        dispatch(receiveChapter(chapter))
    ))
);

export const fetchChapters = () => dispatch => (
    Util.fetchChapters().then(chapters => (
        dispatch(receiveChapters(chapters))
    ))
);

export const deleteChapter = id => dispatch => (
    Util.deleteChapter(id).then(chapter => (
        dispatch(removeChapter(chapter))
    ))
);

export const createChapter = chapter => dispatch => (
    Util.createChapter(chapter).then(newChapter => (
        dispatch(receiveChapter(newChapter))
    ))
);

export const updateChapter = chapter => dispatch => (
    Util.updateChapter(chapter).then(newChapter => (
        dispatch(receiveChapter(newChapter))
    ))
);