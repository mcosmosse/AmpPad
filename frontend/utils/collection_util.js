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

export const createCollectionEntry = (story_collection) => (
    $.ajax({
        method: 'POST',
        url: `api/story_collections/`,
        data: {
            story_collection
        }
    })
)

export const deleteCollectionEntry = (story_collection) => (
    $.ajax({
        method: 'DELETE',
        url: `api/story_collections/1`,
        data: {
            story_collection
        }
    })
)