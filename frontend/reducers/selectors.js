export const orderChapters = (state, storyId) => {
    return Object.values(state.entities.chapters)
    .filter((chapter) => (parseInt(storyId) === chapter.storyId))
    .sort((a, b) => (a.chapterNumber - b.chapterNumber))
}

export const myStories = (state, currentUserId) => {
    return Object.values(state.entities.stories)
    .filter((story) => (parseInt(currentUserId) === story.userId))
}

export const myCollections = (state, currentUserId) => {
    return Object.values(state.entities.collections)
    .filter((collection) => (parseInt(currentUserId) === collection.userId))
}