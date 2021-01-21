export const fetchStory = id => (
    $.ajax({
        method: 'GET',
        url: `api/stories/${id}`
    })
);

export const fetchStories = () => (
    $.ajax({
        method: 'GET',
        url: 'api/stories'
    })
);

export const createStory = story => (
    $.ajax({
        method: 'POST',
        url: 'api/stories',
        data: {story}
    })
);

export const deleteStory = id => (
    $.ajax({
        method: 'DELETE',
        url: `api/stories/${id}`
    })
);

export const updateStory = story => (
    $.ajax({
        method: 'PATCH',
        url: `api/stories/${story.id}`,
        data: {story}
    })
)

//

export const fetchChapter = id => (
    $.ajax({
        method: 'GET',
        url: `api/chapters/${id}`
    })
);

export const fetchChapters = () => (
    $.ajax({
        method: 'GET',
        url: 'api/chapters'
    })
);

export const createChapter = chapter => (
    $.ajax({
        method: 'POST',
        url: 'api/chapters',
        data: {chapter}
    })
);

export const deleteChapter = id => (
    $.ajax({
        method: 'DELETE',
        url: `api/chapters/${id}`
    })
);

export const updateChapter = chapter => (
    $.ajax({
        method: 'PATCH',
        url: `api/chapters/${chapter.id}`,
        data: {chapter}
    })
)