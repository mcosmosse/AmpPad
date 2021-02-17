export const orderChapters = (state, storyId) => {
    return Object.values(state.entities.chapters)
    .filter((chapter) => (parseInt(storyId) === chapter.storyId))
    .sort((a, b) => (a.chapterNumber - b.chapterNumber))
}

export const myStories = (state, currentUserId) => {
    return Object.values(state.entities.stories)
    .filter((story) => (parseInt(currentUserId) === story.userId))
}