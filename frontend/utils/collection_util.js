export const fetchCollection = id => (
    $.ajax({
        method: 'GET',
        url: `api/collections/${id}`
    })
);

export const fetchCollections = () => (
    $.ajax({
        method: 'GET',
        url: 'api/collections'
    })
);

export const createCollection = collection => (
    $.ajax({
        method: 'POST',
        url: 'api/collections',
        data: {collection}
    })
);

export const deleteCollection = id => (
    $.ajax({
        method: 'DELETE',
        url: `api/collections/${id}`
    })
);

export const updateCollection = collection => (
    $.ajax({
        method: 'PATCH',
        url: `api/collections/${collection.id}`,
        data: {collection}
    })
)

export const createCollectionEntry = (storyId, collectionId) => (
    $.ajax({
        method: 'POST',
        url: `api/story_collections/`,
        data: {
            storyId,
            collectionId
        }
    })
)

export const deleteCollectionEntry = (id) => (
    $.ajax({
        method: 'DELETE',
        url: `api/story_collections/${id}`
    })
)